#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>

// Utility
uint32_t GETCPUTIME()
{
    // Works up to 100 Million cycles
    uint32_t count;
    do {
        asm volatile ("csrr %0, mcycle\t" :  "=r"(count):);
    } while (count > (4194967295));

    return count;
}

// ---------------------------------------------------------
// Fixed-point configuration. We are using S7.8 format, refered to as S7_8 below. 
// ---------------------------------------------------------
#define Q_SHIFT 8               // Number of fractional bits
#define Q_SCALE (1 << Q_SHIFT)  // = 256
#define TO_Q(x) ((int16_t)((x) * Q_SCALE + ((x) >= 0 ? 0.5f : -0.5f))) // Helper macro to convert float -> Qm.n integer, for demonstration

// Hyperparams
#define SEQ_LEN   3
#define MODEL_DIM 4
#define FF_DIM    8

// Transformer Parameters
// Hard-coded projection weights (S7_8)
// Usually these come from training, but here we’re just making up numbers.
int16_t WQ[MODEL_DIM * MODEL_DIM] = {
    TO_Q(0.1f), TO_Q(0.2f), TO_Q(0.3f), TO_Q(0.4f),
    TO_Q(0.0f), TO_Q(0.1f), TO_Q(0.2f), TO_Q(0.3f),
    TO_Q(0.2f), TO_Q(0.0f), TO_Q(0.1f), TO_Q(0.3f),
    TO_Q(0.1f), TO_Q(0.3f), TO_Q(0.0f), TO_Q(0.2f)
};
int16_t WK[MODEL_DIM * MODEL_DIM] = {
    TO_Q(0.4f), TO_Q(0.3f), TO_Q(0.2f), TO_Q(0.1f),
    TO_Q(0.2f), TO_Q(0.2f), TO_Q(0.2f), TO_Q(0.2f),
    TO_Q(0.1f), TO_Q(0.0f), TO_Q(0.3f), TO_Q(0.2f),
    TO_Q(0.0f), TO_Q(0.1f), TO_Q(0.1f), TO_Q(0.4f)
};
int16_t WV[MODEL_DIM * MODEL_DIM] = {
    TO_Q(0.3f), TO_Q(0.1f), TO_Q(0.2f), TO_Q(0.0f),
    TO_Q(0.2f), TO_Q(0.2f), TO_Q(0.3f), TO_Q(0.1f),
    TO_Q(0.1f), TO_Q(0.3f), TO_Q(0.3f), TO_Q(0.2f),
    TO_Q(0.0f), TO_Q(0.2f), TO_Q(0.1f), TO_Q(0.2f)
};

// Feed-forward weights (S7_8)
int16_t W1[MODEL_DIM * FF_DIM] = {
    // shape = (FF_DIM=8, MODEL_DIM=4)
    TO_Q(0.1f), TO_Q(0.2f), TO_Q(0.0f), TO_Q(0.0f),
    TO_Q(0.3f), TO_Q(0.1f), TO_Q(0.1f), TO_Q(0.1f),
    TO_Q(0.2f), TO_Q(0.2f), TO_Q(0.4f), TO_Q(0.0f),
    TO_Q(0.0f), TO_Q(0.1f), TO_Q(0.1f), TO_Q(0.2f),
    TO_Q(0.1f), TO_Q(0.3f), TO_Q(0.0f), TO_Q(0.0f),
    TO_Q(0.1f), TO_Q(0.0f), TO_Q(0.1f), TO_Q(0.3f),
    TO_Q(0.0f), TO_Q(0.2f), TO_Q(0.2f), TO_Q(0.1f),
    TO_Q(0.2f), TO_Q(0.2f), TO_Q(0.0f), TO_Q(0.1f)
};
int16_t b1[FF_DIM] = {
    TO_Q(0.0f), TO_Q(0.1f), TO_Q(0.1f), TO_Q(0.0f),
    TO_Q(0.2f), TO_Q(0.0f), TO_Q(0.0f), TO_Q(0.1f)
};

int16_t W2[FF_DIM * MODEL_DIM] = {
    // shape = (MODEL_DIM=4, FF_DIM=8)
    TO_Q(0.1f), TO_Q(0.0f), TO_Q(0.2f), TO_Q(0.1f), 
    TO_Q(0.3f), TO_Q(0.2f), TO_Q(0.0f), TO_Q(0.0f),
    TO_Q(0.0f), TO_Q(0.1f), TO_Q(0.1f), TO_Q(0.3f), 
    TO_Q(0.2f), TO_Q(0.0f), TO_Q(0.2f), TO_Q(0.1f),
    TO_Q(0.0f), TO_Q(0.2f), TO_Q(0.3f), TO_Q(0.1f), 
    TO_Q(0.0f), TO_Q(0.1f), TO_Q(0.1f), TO_Q(0.1f),
    TO_Q(0.2f), TO_Q(0.1f), TO_Q(0.2f), TO_Q(0.0f), 
    TO_Q(0.2f), TO_Q(0.1f), TO_Q(0.3f), TO_Q(0.0f)
};
int16_t b2[MODEL_DIM] = {
    TO_Q(0.1f), TO_Q(0.1f), TO_Q(0.0f), TO_Q(0.2f)
};




//=======================================================================================================
//=======================================================================================================
//=======================================================================================================
//=======================================================================================================
//=======================================================================================================
// START OF HACKATHON CODE
//=======================================================================================================

// Saturate 32-bit intermediate to 16-bit range
static inline int16_t saturate_i16(int32_t x) {
    if (x >  32767) return  32767;
    if (x < -32768) return -32768;
    return (int16_t)x;
}

static inline int16_t saturate_i16_custom(int32_t value) {
    int16_t result;
    asm volatile(
        "hackaton_custom_instr_e %0, %1, %2"
        : "=r"(result)
        : "r"(value), "r"(erf)
    );
    return result;
}

int16_t dot_S7_8_custom( int16_t *a, int16_t *b, int size) {
    int32_t acc = 0;

    asm volatile(
        "hackaton_custom_instr_d %0, %1, %2"
        : "+r"(acc)
        : "r"(a), "r"(b)
    );
    return saturate_i16(acc);
}

void matvec_mul_S7_8_custom(int16_t *mat, // [rows * cols] in S7_8
                   volatile int16_t *vec, // [cols] in S7_8
                   int16_t       *out, // [rows] in S7_8
                   int            rows,
                   int            cols)
{
    for (int r = 0; r < rows; r++) {
        // Accumulate in 32-bit
        int32_t acc = 0;
        for(int j = 0; j < cols / 4; j++){
            asm volatile(
                "hackaton_custom_instr_d %0, %1, %2"
                : "+r"(acc)
                : "r"(mat + r * cols + j * 4), "r"(vec + j * 4)
            );
        }
        out[r] = saturate_i16(acc);

        // saturate to int16
    }
}



// ---------------------------------------------------------
// 1) Dot product (S7_8) => also produce a S7_8 result
// ---------------------------------------------------------
// int16_t dot_S7_8( int16_t *a, int16_t *b, int size) {
//     int32_t acc = 0;
//     for(int i = 0; i < size; i++){
//         // S7_8 x S7_8 => Q16; shift down => S7_8
//         int32_t mul = (int32_t)a[i] * (int32_t)b[i];
//         acc += (mul >> Q_SHIFT);
//     }
//     return saturate_i16(acc);
// }

// static inline int32_t multiply(int16_t a, int16_t b, int32_t acc) {
//     int32_t result = acc;
//     asm volatile(
//         "hackaton_custom_instr_b %0, %1, %2"
//         : "+r"(result)
//         : "r"(a), "r"(b)
//     );
//     return result;
// }


//DIVISION OPTI
static inline int32_t hw_div(int32_t numerator, int32_t denominator) {
    int32_t result;
    asm volatile (
        "hackaton_custom_instr_a %0, %1, %2"
        : "=r"(result)
        : "r"(numerator), "r"(denominator)
    );
    return result;
}

// static inline int32_t simd_mac_2x16(int32_t packed_a, int32_t packed_b, int32_t acc) {
//     int32_t result;
//     asm volatile (
//         "hackaton_custom_instr_c %0, %1, %2"
//         : "=r"(result)
//         : "r"(packed_a), "r"(packed_b), "0"(acc)
//     );
//     return result;
// }


//DOT PRODUCT
/*int16_t dot_S7_8(int16_t *a, int16_t *b, int size) {
    int32_t acc = 0;
    int i;

    // SIMD loop: process 2 elements per iteration
    for (i = 0; i < (size & ~1); i += 2) {
        int16_t a0 = a[i];
        int16_t a1 = a[i + 1];
        int16_t b0 = b[i];
        int16_t b1 = b[i + 1];

        int32_t packed_a = ((int32_t)a1 << 16) | (uint16_t)a0;
        int32_t packed_b = ((int32_t)b1 << 16) | (uint16_t)b0;

        acc = simd_mac_2x16(packed_a, packed_b, acc);
    }

    // Handle leftover if size is odd
    if (size & 1) {
        acc = multiply(a[size - 1], b[size - 1], acc);
    }

    return saturate_i16_custom(acc);
}
*/
//SIMD DID NOT WORK F 
int16_t dot_S7_8(int16_t *a, int16_t *b, int size) {
    int32_t acc = 0;
    for(int i = 0; i < size; i++){
        acc = multiply(a[i], b[i], acc); 
    }
    return saturate_i16(acc); 
}


// Matrix-vector multiply in S7.8 using custom instruction

void matvec_mul_S7_8(int16_t *mat,             // [rows * cols] in S7.8
                     volatile int16_t *vec,    // [cols] in S7.8
                     int16_t *out,             // [rows] in S7.8
                     int rows,
                     int cols)
{
    for (int r = 0; r < rows; r++) {
        int32_t acc = 0;
        for (int c = 0; c < cols; c++) {
            // Use custom instruction for mul + shift
            acc = multiply(mat[r * cols + c], vec[c], acc);    
        }
        // Saturate to int16
        out[r] = saturate_i16_custom(acc);
    }
}

/*void matvec_mul_S7_8(const int16_t* matrix, const int16_t* vector, int16_t* output, int rows, int cols) {
    for (int r = 0; r < rows; r++) {
        int32_t acc = 0;
        for (int c = 0; c < cols; c += 2) {
            // Load two elements from matrix and vector
            int16_t m0 = matrix[r * cols + c];
            int16_t m1 = matrix[r * cols + c + 1];
            int16_t v0 = vector[c];
            int16_t v1 = vector[c + 1];

            // Pack them into int32
            int32_t packed_m = ((int32_t)m1 << 16) | (uint16_t)m0;
            int32_t packed_v = ((int32_t)v1 << 16) | (uint16_t)v0;

            // Use SIMD custom instruction
            acc = simd_mac_2x16(packed_m, packed_v, acc);
        }

        // Store saturated result
        output[r] = saturate_i16(acc);
    }
}
*/

static inline int relu_custom_instr(int value) {
    int result;
    int zero = 0;
    asm volatile(
        "hackaton_custom_instr_d %0, %1, %2"
        : "=r"(result)
        : "r"(value), "r"(zero)
    );
    return result;
}

static inline int32_t array_sum_test(int16_t* values, uint32_t length, int32_t initial_sum) {
    int32_t result = initial_sum;
    uint32_t base_addr = (uint32_t)values;
        
    asm volatile (
        "hackaton_custom_instr_c %0, %1, %2"
        : "+r" (result)
        : "r" (base_addr), "r" (length)
    );    
    return result;
}
// ---------------------------------------------------------
// 3) "Fake" Softmax in integer domain
//    - Actually: ReLU the scores, then normalize them so sum=Q_SCALE
//    - This is NOT a real exponent-based softmax, just a quick hack
// ---------------------------------------------------------
void fake_softmax_S7_8(int16_t *values, int length) {    
    // 3a) ReLU
    for(int i = 0; i < length; i++){
        if(values[i] < 0) values[i] = 0;

    }
    // 3b) Sum  
    int32_t sum = 0;
    for(int i = 0; i < length; i++){
        sum += values[i];
    }
    //sum = array_sum_test(values, length, 0);
    int16_t uniform;
    // Avoid division by zero
    if(sum == 0) {
        // If all are zero, just set them uniform as Q_SCALE / length
        //int16_t uniform = (int16_t)(Q_SCALE / length);
        //Change here as well :))
        uniform = hw_div(Q_SCALE, length );
        for(int i = 0; i < length; i++){
            values[i] = uniform;
        }
        return;
    }
    // 3c) Normalize so that sum(weights)=Q_SCALE
    for(int i = 0; i < length; i++){
        // scale to Q_SCALE
        int32_t numerator = (int32_t)values[i] * Q_SCALE;
        int32_t scaled = hw_div(numerator, sum);
        values[i] = saturate_i16(scaled);


    }
}

// ---------------------------------------------------------
// Single-head attention (int16 S7_8 version)
// Q, K, V: [SEQ_LEN][MODEL_DIM], all S7_8
// out_attn: [SEQ_LEN][MODEL_DIM], S7_8
// ---------------------------------------------------------
void single_head_attention_S7_8(int16_t Q[SEQ_LEN][MODEL_DIM],
                              int16_t K[SEQ_LEN][MODEL_DIM],
                              int16_t V[SEQ_LEN][MODEL_DIM],
                              int16_t out_attn[SEQ_LEN][MODEL_DIM])
{
    int16_t V_t[MODEL_DIM][SEQ_LEN];
    // For each query i
    for(int i = 0; i < SEQ_LEN; i++){
        // compute attention scores vs each K[j]
        int16_t scores[SEQ_LEN];
        for(int j = 0; j < SEQ_LEN; j++){
            scores[j] = dot_S7_8_custom(Q[i], K[j], MODEL_DIM);
        }

        // "Scale" by sqrt(MODEL_DIM) => in float code is / sqrt(4)=/2 => multiply by 0.5
        // in S7_8, multiplying by 0.5 means shifting by 1. So we do >> 1
        for(int j = 0; j < SEQ_LEN; j++){
            scores[j] = scores[j] >> 1; // approximate /2
        }

        // Fake softmax
        fake_softmax_S7_8(scores, SEQ_LEN);  // now each score in [0..Q_SCALE], sum=Q_SCALE

        for(int i=0;i<MODEL_DIM;i++){
            for(int j=0;j<SEQ_LEN;j++){
                V_t[j][i] = V[i][j]; 
            }
        }

        // Weighted sum of V
        for(int d = 0; d < MODEL_DIM; d++){
            // accumulate in Q24, will shift to S7_8 at the end
            int32_t acc = 0;
            for(int j = 0; j < SEQ_LEN; j++){
                // scores[j] is S7_8, V[j][d] is S7_8 => product is Q16
                // we want final in S7_8 => sum of Q16 => shift down S7_8
                //change here
                acc = multiply(scores[j], V[j][d], acc);
            }
            out_attn[i][d] = saturate_i16(acc);
        }
    }
}



// ---------------------------------------------------------
// Feed-forward layer (2-layer MLP, ReLU in between)
// in_data, out_ff: [SEQ_LEN][MODEL_DIM], S7_8
// W1: [FF_DIM x MODEL_DIM], S7_8
// b1: [FF_DIM], S7_8
// W2: [MODEL_DIM x FF_DIM], S7_8
// b2: [MODEL_DIM], S7_8
// ---------------------------------------------------------
void feed_forward_S7_8(int16_t in_data[SEQ_LEN][MODEL_DIM],
                      int16_t out_ff[SEQ_LEN][MODEL_DIM],
                      int16_t *W1,
                      int16_t *b1,
                      int16_t *W2,
                      int16_t *b2)
    {
        for(int i = 0; i < SEQ_LEN; i++){
            // hidden = ReLU( in_data[i]*W1 + b1 )
            int16_t hidden[FF_DIM];
            matvec_mul_S7_8_custom(W1, in_data[i], hidden, FF_DIM, MODEL_DIM);
            for(int h = 0; h < FF_DIM; h++){
                // add bias b1[h]
                int32_t sum = (int32_t)hidden[h] + (int32_t)b1[h];
                int16_t tmp = saturate_i16_custom(sum);
                // ReLU
                if(tmp < 0) tmp = 0;
                hidden[h] = tmp;
            }

            // out_ff[i] = hidden * W2 + b2
            // hidden is [FF_DIM], W2 is [MODEL_DIM x FF_DIM]
            matvec_mul_S7_8_custom(W2, hidden, out_ff[i], MODEL_DIM, FF_DIM);
            // add bias b2
            // for(int d = 0; d < MODEL_DIM; d++){
            //     int32_t sum = (int32_t)out_ff[i][d] + (int32_t)b2[d];
            
            //     out_ff[i][d] = saturate_i16_custom(sum);
            // }
            // int32_t sum;
            asm volatile (
                "hackaton_custom_instr_f %0, %1, %2"
                :
                : "r"(out_ff[i]), "r"(out_ff[i]), "r"(b2)
            );


        }
    }

void run_transformer_encoder(int16_t final_out[SEQ_LEN][MODEL_DIM] ,int16_t volatile input[SEQ_LEN][MODEL_DIM])
{
        // -----------------------------------------------------
    // 1) Compute Q, K, V
    // -----------------------------------------------------
    int16_t Qmat[SEQ_LEN][MODEL_DIM];
    int16_t Kmat[SEQ_LEN][MODEL_DIM];
    int16_t Vmat[SEQ_LEN][MODEL_DIM];

    for(int i = 0; i < SEQ_LEN; i++){
        matvec_mul_S7_8_custom(WQ, input[i], Qmat[i], MODEL_DIM, MODEL_DIM);
        matvec_mul_S7_8_custom(WK, input[i], Kmat[i], MODEL_DIM, MODEL_DIM);
        matvec_mul_S7_8_custom(WV, input[i], Vmat[i], MODEL_DIM, MODEL_DIM);
    }

    // -----------------------------------------------------
    // 2) Single-head attention
    // -----------------------------------------------------
    int16_t attn_out[SEQ_LEN][MODEL_DIM];
    single_head_attention_S7_8(Qmat, Kmat, Vmat, attn_out);

    // Residual (skip true layer norm for brevity)
    int16_t post_attn[SEQ_LEN][MODEL_DIM];
    for(int i = 0; i < SEQ_LEN; i++){
        // for(int d = 0; d < MODEL_DIM; d++){
        //     int32_t sum = (int32_t)input[i][d] + (int32_t)attn_out[i][d];
        //     post_attn[i][d] = saturate_i16(sum);
        // }
        asm volatile (
            "hackaton_custom_instr_f %0, %1, %2"
            : 
            : "r"(post_attn[i]), "r"(input[i]), "r"(attn_out[i])
        );
    }

    // -----------------------------------------------------
    // 3) Feed-forward
    // -----------------------------------------------------
    int16_t ff_out[SEQ_LEN][MODEL_DIM];
    feed_forward_S7_8(post_attn, ff_out, W1, b1, W2, b2);

    // Residual again

    

    // for(int i = 0; i < SEQ_LEN; i++){
    //     for(int d = 0; d < MODEL_DIM; d++){
    //         int32_t sum = (int32_t)post_attn[i][d] + (int32_t)ff_out[i][d];
    //         final_out[i][d] = saturate_i16(sum);
    //     }
    // }
    
    
        asm volatile (
            "hackaton_custom_instr_f %0, %1, %2"
            : 
            : "r"(final_out[0]), "r"(post_attn[0]), "r"(ff_out[0])
        );
        // for(int i=0;i<MODEL_DIM;i++){
        //     printf("final out addr[%d]: %p, value: %d \n", i, final_out[0], final_out[0][i]);
        // }
    
        asm volatile (
            "hackaton_custom_instr_f %0, %1, %2"
            : 
            : "r"(final_out[1]), "r"(post_attn[1]), "r"(ff_out[1])
        );

        // for(int i=0;i<MODEL_DIM;i++){
        //     printf("final out addr[%d]: %p, value: %d \n", i, final_out[1], final_out[1][i]);
        // }
        
        asm volatile (
            "hackaton_custom_instr_f %0, %1, %2"
            : 
            : "r"(final_out[2]), "r"(post_attn[2]), "r"(ff_out[2])
        );
        // for(int i=0;i<MODEL_DIM;i++){
        //     printf("final out addr[%d]: %p, value: %d \n", i, final_out[2], final_out[1][i]);
        // }
    // }
    return;
}
//=======================================================================================================
// END OF HACKATHON CODE
//=======================================================================================================
//=======================================================================================================
//=======================================================================================================
//=======================================================================================================
//=======================================================================================================



// ---------------------------------------------------------
// Main Demo using s7_8 variables, i.e., fixed-point with 1 sign bit, 7 integer bits, and 8 fractional bits
// ---------------------------------------------------------
int main(void) {
    uint32_t exectime = 0, a,b,t;

    // Precalculated embeddings
    // Example input: 3 tokens, each dimension=4, stored in S7_8
    int16_t volatile input[SEQ_LEN][MODEL_DIM] = {
        { TO_Q(0.1f), TO_Q(0.2f), TO_Q(0.3f), TO_Q(0.4f) },
        { TO_Q(0.2f), TO_Q(0.1f), TO_Q(0.5f), TO_Q(0.3f) },
        { TO_Q(0.5f), TO_Q(0.9f), TO_Q(0.1f), TO_Q(0.0f) }
    };


    a = GETCPUTIME();

    int16_t final_out[SEQ_LEN][MODEL_DIM];
    run_transformer_encoder(final_out, input);

    b = GETCPUTIME();
    t = b-a;
    if (t<0) {
    t += 0x7fffffff;
    }
    exectime += t;

    // -----------------------------------------------------
    // Finalize
    // -----------------------------------------------------
    int32_t reference_result[12] = {168, 210, 225, 270,195, 189, 284, 250,293, 414, 193, 201};
    int32_t check = 0;
    printf("== Final Transformer Output (S7_8) ==\n");
    for(int i = 0; i < SEQ_LEN; i++){
        printf("Token %d: [", i);
        for(int d = 0; d < MODEL_DIM; d++){
            //print_S7_8(final_out[i][d]);
            check += (final_out[i][d]-reference_result[d+i*MODEL_DIM])*(final_out[i][d]-reference_result[d+i*MODEL_DIM]);
            printf("%d",final_out[i][d]);
            if(d < MODEL_DIM - 1) printf(", ");
        }
        printf(" ]\n");
    }
    printf("\n== Verification ==\n");
    if (!check)
        printf("PASSED!\n");
    else
        printf("FAILED!\n");
    printf("\n== Performance ==\n");
    printf("Cycles = %d\n",exectime);

    return 0;
}

/*int main() {
    int16_t out_ff[1][4] = {
        {10, 20, 30, 40}
    };
    int16_t b2[4] = {1, 2, 3, 4};

    int32_t sum;
    asm volatile (
        "hackaton_custom_instr_g %0, %1, %2"
        : "=r" (sum)
        : "r" ((uint32_t)out_ff[0]), "r" ((uint32_t)b2)
    );

    printf("Sum = %d\n", sum); // Expect 110
    return 0;
}*/




// int32_t software_sum(int16_t* arr, int len) {
//     int32_t sum = 0;
//     for(int i=0; i<len; i++) {
//         sum += arr[i];
//     }
//     return sum;
// }



// void test_sum() {
//     // Tiny test array
//     int16_t test_arr[] = {10, 20, 30, 40}; // Sum = 100
//     int len = sizeof(test_arr)/sizeof(test_arr[0]);
    
//     // Run both implementations
//     int32_t soft_sum = software_sum(test_arr, len);
//     int32_t hard_sum = array_sum_test(test_arr, len, 0);
    
//     // Print results
//     printf("Software sum: %d\n", soft_sum);
//     printf("Hardware sum: %d\n", hard_sum);
    
//     // Verification
//     assert(soft_sum == hard_sum);
//     printf("TEST PASSED!\n");
// }

// int main() {
//     test_sum();
//     return 0;
// }