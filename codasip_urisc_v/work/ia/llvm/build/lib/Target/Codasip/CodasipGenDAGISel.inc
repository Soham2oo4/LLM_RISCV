/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* DAG Instruction Selector for the Codasip target                            *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

// *** NOTE: This file is #included into the middle of the target
// *** instruction selector class.  These functions are really methods.

// If GET_DAGISEL_DECL is #defined with any value, only function
// declarations will be included when this file is included.
// If GET_DAGISEL_BODY is #defined, its value should be the name of
// the instruction selector class. Function bodies will be emitted
// and each function's name will be qualified with the name of the
// class.
//
// When neither of the GET_DAGISEL* macros is defined, the functions
// are emitted inline.

#if defined(GET_DAGISEL_DECL) && defined(GET_DAGISEL_BODY)
#error GET_DAGISEL_DECL and GET_DAGISEL_BODY cannot be both defined, undef both for inline definitions
#endif

#ifdef GET_DAGISEL_BODY
#define LOCAL_DAGISEL_STRINGIZE(X) LOCAL_DAGISEL_STRINGIZE_(X)
#define LOCAL_DAGISEL_STRINGIZE_(X) #X
static_assert(sizeof(LOCAL_DAGISEL_STRINGIZE(GET_DAGISEL_BODY)) > 1,
   "GET_DAGISEL_BODY is empty: it should be defined with the class name");
#undef LOCAL_DAGISEL_STRINGIZE_
#undef LOCAL_DAGISEL_STRINGIZE
#endif

#if !defined(GET_DAGISEL_DECL) && !defined(GET_DAGISEL_BODY)
#define DAGISEL_INLINE 1
#else
#define DAGISEL_INLINE 0
#endif

#if !DAGISEL_INLINE
#define DAGISEL_CLASS_COLONCOLON GET_DAGISEL_BODY ::
#else
#define DAGISEL_CLASS_COLONCOLON
#endif

#ifdef GET_DAGISEL_DECL
void SelectCode(SDNode *N);
#endif
#if defined(GET_DAGISEL_BODY) || DAGISEL_INLINE
void DAGISEL_CLASS_COLONCOLON SelectCode(SDNode *N)
{
  // Some target values are emitted as 2 bytes, TARGET_VAL handles
  // this.
  #define TARGET_VAL(X) X & 255, unsigned(X) >> 8
  static const unsigned char MatcherTable[] = {
/*     0*/  OPC_SwitchOpcode /*28 cases */, 9|128,16/*2057*/, TARGET_VAL(ISD::ADD),// ->2062
/*     5*/    OPC_Scope, 21|128,10/*1301*/, /*->1309*/ // 4 children in Scope
/*     8*/      OPC_MoveChild0,
/*     9*/      OPC_SwitchOpcode /*2 cases */, 101|128,7/*997*/, TARGET_VAL(ISD::ADD),// ->1011
/*    14*/        OPC_Scope, 37|128,1/*165*/, /*->182*/ // 5 children in Scope
/*    17*/          OPC_MoveChild0,
/*    18*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*    21*/          OPC_MoveChild0,
/*    22*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*    25*/          OPC_MoveChild0,
/*    26*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*    29*/          OPC_RecordChild0, // #0 = $op1
/*    30*/          OPC_MoveChild0,
/*    31*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*    33*/          OPC_MoveParent,
/*    34*/          OPC_CheckChild1Integer, 16, 
/*    36*/          OPC_MoveParent,
/*    37*/          OPC_MoveChild1,
/*    38*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*    41*/          OPC_RecordChild0, // #1 = $op2
/*    42*/          OPC_MoveChild0,
/*    43*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*    45*/          OPC_MoveParent,
/*    46*/          OPC_CheckChild1Integer, 16, 
/*    48*/          OPC_MoveParent,
/*    49*/          OPC_MoveParent,
/*    50*/          OPC_CheckChild1Integer, 8, 
/*    52*/          OPC_MoveParent,
/*    53*/          OPC_RecordChild1, // #2 = $op3
/*    54*/          OPC_MoveChild1,
/*    55*/          OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*    57*/          OPC_MoveParent,
/*    58*/          OPC_MoveParent,
/*    59*/          OPC_MoveChild1,
/*    60*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*    63*/          OPC_MoveChild0,
/*    64*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*    67*/          OPC_MoveChild0,
/*    68*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*    71*/          OPC_Scope, 31, /*->104*/ // 3 children in Scope
/*    73*/            OPC_CheckChild0Same, 0,
/*    75*/            OPC_MoveChild1,
/*    76*/            OPC_CheckValueType, MVT::i16,
/*    78*/            OPC_MoveParent,
/*    79*/            OPC_MoveParent,
/*    80*/            OPC_MoveChild1,
/*    81*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*    84*/            OPC_CheckChild0Same, 1,
/*    86*/            OPC_MoveChild1,
/*    87*/            OPC_CheckValueType, MVT::i16,
/*    89*/            OPC_MoveParent,
/*    90*/            OPC_MoveParent,
/*    91*/            OPC_MoveParent,
/*    92*/            OPC_CheckChild1Integer, 8, 
/*    94*/            OPC_MoveParent,
/*    95*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                      // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] })) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   104*/          /*Scope*/ 44, /*->149*/
/*   105*/            OPC_CheckChild0Same, 1,
/*   107*/            OPC_MoveChild1,
/*   108*/            OPC_CheckValueType, MVT::i16,
/*   110*/            OPC_MoveParent,
/*   111*/            OPC_MoveParent,
/*   112*/            OPC_MoveChild1,
/*   113*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   116*/            OPC_CheckChild0Same, 0,
/*   118*/            OPC_MoveChild1,
/*   119*/            OPC_CheckValueType, MVT::i16,
/*   121*/            OPC_MoveParent,
/*   122*/            OPC_MoveParent,
/*   123*/            OPC_MoveParent,
/*   124*/            OPC_CheckChild1Integer, 8, 
/*   126*/            OPC_MoveParent,
/*   127*/            OPC_Scope, 9, /*->138*/ // 2 children in Scope
/*   129*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] })) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   138*/            /*Scope*/ 9, /*->148*/
/*   139*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] })) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   148*/            0, /*End of Scope*/
/*   149*/          /*Scope*/ 31, /*->181*/
/*   150*/            OPC_CheckChild0Same, 0,
/*   152*/            OPC_MoveChild1,
/*   153*/            OPC_CheckValueType, MVT::i16,
/*   155*/            OPC_MoveParent,
/*   156*/            OPC_MoveParent,
/*   157*/            OPC_MoveChild1,
/*   158*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   161*/            OPC_CheckChild0Same, 1,
/*   163*/            OPC_MoveChild1,
/*   164*/            OPC_CheckValueType, MVT::i16,
/*   166*/            OPC_MoveParent,
/*   167*/            OPC_MoveParent,
/*   168*/            OPC_MoveParent,
/*   169*/            OPC_CheckChild1Integer, 8, 
/*   171*/            OPC_MoveParent,
/*   172*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] })) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   181*/          0, /*End of Scope*/
/*   182*/        /*Scope*/ 37|128,1/*165*/, /*->349*/
/*   184*/          OPC_RecordChild0, // #0 = $op3
/*   185*/          OPC_MoveChild0,
/*   186*/          OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   188*/          OPC_MoveParent,
/*   189*/          OPC_MoveChild1,
/*   190*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   193*/          OPC_MoveChild0,
/*   194*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   197*/          OPC_MoveChild0,
/*   198*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   201*/          OPC_RecordChild0, // #1 = $op1
/*   202*/          OPC_MoveChild0,
/*   203*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   205*/          OPC_MoveParent,
/*   206*/          OPC_CheckChild1Integer, 16, 
/*   208*/          OPC_MoveParent,
/*   209*/          OPC_MoveChild1,
/*   210*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   213*/          OPC_RecordChild0, // #2 = $op2
/*   214*/          OPC_MoveChild0,
/*   215*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   217*/          OPC_MoveParent,
/*   218*/          OPC_CheckChild1Integer, 16, 
/*   220*/          OPC_MoveParent,
/*   221*/          OPC_MoveParent,
/*   222*/          OPC_CheckChild1Integer, 8, 
/*   224*/          OPC_MoveParent,
/*   225*/          OPC_MoveParent,
/*   226*/          OPC_MoveChild1,
/*   227*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   230*/          OPC_MoveChild0,
/*   231*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   234*/          OPC_MoveChild0,
/*   235*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   238*/          OPC_Scope, 31, /*->271*/ // 3 children in Scope
/*   240*/            OPC_CheckChild0Same, 1,
/*   242*/            OPC_MoveChild1,
/*   243*/            OPC_CheckValueType, MVT::i16,
/*   245*/            OPC_MoveParent,
/*   246*/            OPC_MoveParent,
/*   247*/            OPC_MoveChild1,
/*   248*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   251*/            OPC_CheckChild0Same, 2,
/*   253*/            OPC_MoveChild1,
/*   254*/            OPC_CheckValueType, MVT::i16,
/*   256*/            OPC_MoveParent,
/*   257*/            OPC_MoveParent,
/*   258*/            OPC_MoveParent,
/*   259*/            OPC_CheckChild1Integer, 8, 
/*   261*/            OPC_MoveParent,
/*   262*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                      // Src: (add:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] })), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] })) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   271*/          /*Scope*/ 44, /*->316*/
/*   272*/            OPC_CheckChild0Same, 2,
/*   274*/            OPC_MoveChild1,
/*   275*/            OPC_CheckValueType, MVT::i16,
/*   277*/            OPC_MoveParent,
/*   278*/            OPC_MoveParent,
/*   279*/            OPC_MoveChild1,
/*   280*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   283*/            OPC_CheckChild0Same, 1,
/*   285*/            OPC_MoveChild1,
/*   286*/            OPC_CheckValueType, MVT::i16,
/*   288*/            OPC_MoveParent,
/*   289*/            OPC_MoveParent,
/*   290*/            OPC_MoveParent,
/*   291*/            OPC_CheckChild1Integer, 8, 
/*   293*/            OPC_MoveParent,
/*   294*/            OPC_Scope, 9, /*->305*/ // 2 children in Scope
/*   296*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] })), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] })) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   305*/            /*Scope*/ 9, /*->315*/
/*   306*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] })), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] })) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   315*/            0, /*End of Scope*/
/*   316*/          /*Scope*/ 31, /*->348*/
/*   317*/            OPC_CheckChild0Same, 1,
/*   319*/            OPC_MoveChild1,
/*   320*/            OPC_CheckValueType, MVT::i16,
/*   322*/            OPC_MoveParent,
/*   323*/            OPC_MoveParent,
/*   324*/            OPC_MoveChild1,
/*   325*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   328*/            OPC_CheckChild0Same, 2,
/*   330*/            OPC_MoveChild1,
/*   331*/            OPC_CheckValueType, MVT::i16,
/*   333*/            OPC_MoveParent,
/*   334*/            OPC_MoveParent,
/*   335*/            OPC_MoveParent,
/*   336*/            OPC_CheckChild1Integer, 8, 
/*   338*/            OPC_MoveParent,
/*   339*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                      // Src: (add:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] })), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] })) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   348*/          0, /*End of Scope*/
/*   349*/        /*Scope*/ 85|128,2/*341*/, /*->692*/
/*   351*/          OPC_MoveChild0,
/*   352*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   355*/          OPC_MoveChild0,
/*   356*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   359*/          OPC_MoveChild0,
/*   360*/          OPC_SwitchOpcode /*2 cases */, 37|128,1/*165*/, TARGET_VAL(ISD::SRA),// ->530
/*   365*/            OPC_RecordChild0, // #0 = $op1
/*   366*/            OPC_MoveChild0,
/*   367*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   369*/            OPC_MoveParent,
/*   370*/            OPC_CheckChild1Integer, 16, 
/*   372*/            OPC_MoveParent,
/*   373*/            OPC_MoveChild1,
/*   374*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   377*/            OPC_RecordChild0, // #1 = $op2
/*   378*/            OPC_MoveChild0,
/*   379*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   381*/            OPC_MoveParent,
/*   382*/            OPC_CheckChild1Integer, 16, 
/*   384*/            OPC_MoveParent,
/*   385*/            OPC_MoveParent,
/*   386*/            OPC_CheckChild1Integer, 8, 
/*   388*/            OPC_MoveParent,
/*   389*/            OPC_MoveChild1,
/*   390*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   393*/            OPC_MoveChild0,
/*   394*/            OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   397*/            OPC_MoveChild0,
/*   398*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   401*/            OPC_Scope, 37, /*->440*/ // 3 children in Scope
/*   403*/              OPC_CheckChild0Same, 0,
/*   405*/              OPC_MoveChild1,
/*   406*/              OPC_CheckValueType, MVT::i16,
/*   408*/              OPC_MoveParent,
/*   409*/              OPC_MoveParent,
/*   410*/              OPC_MoveChild1,
/*   411*/              OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   414*/              OPC_CheckChild0Same, 1,
/*   416*/              OPC_MoveChild1,
/*   417*/              OPC_CheckValueType, MVT::i16,
/*   419*/              OPC_MoveParent,
/*   420*/              OPC_MoveParent,
/*   421*/              OPC_MoveParent,
/*   422*/              OPC_CheckChild1Integer, 8, 
/*   424*/              OPC_MoveParent,
/*   425*/              OPC_MoveParent,
/*   426*/              OPC_RecordChild1, // #2 = $op3
/*   427*/              OPC_MoveChild1,
/*   428*/              OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   430*/              OPC_MoveParent,
/*   431*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] })), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   440*/            /*Scope*/ 50, /*->491*/
/*   441*/              OPC_CheckChild0Same, 1,
/*   443*/              OPC_MoveChild1,
/*   444*/              OPC_CheckValueType, MVT::i16,
/*   446*/              OPC_MoveParent,
/*   447*/              OPC_MoveParent,
/*   448*/              OPC_MoveChild1,
/*   449*/              OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   452*/              OPC_CheckChild0Same, 0,
/*   454*/              OPC_MoveChild1,
/*   455*/              OPC_CheckValueType, MVT::i16,
/*   457*/              OPC_MoveParent,
/*   458*/              OPC_MoveParent,
/*   459*/              OPC_MoveParent,
/*   460*/              OPC_CheckChild1Integer, 8, 
/*   462*/              OPC_MoveParent,
/*   463*/              OPC_MoveParent,
/*   464*/              OPC_RecordChild1, // #2 = $op3
/*   465*/              OPC_MoveChild1,
/*   466*/              OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   468*/              OPC_MoveParent,
/*   469*/              OPC_Scope, 9, /*->480*/ // 2 children in Scope
/*   471*/                OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                              MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                          // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] })), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 55
                          // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   480*/              /*Scope*/ 9, /*->490*/
/*   481*/                OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                              MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                          // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] })), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 55
                          // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   490*/              0, /*End of Scope*/
/*   491*/            /*Scope*/ 37, /*->529*/
/*   492*/              OPC_CheckChild0Same, 0,
/*   494*/              OPC_MoveChild1,
/*   495*/              OPC_CheckValueType, MVT::i16,
/*   497*/              OPC_MoveParent,
/*   498*/              OPC_MoveParent,
/*   499*/              OPC_MoveChild1,
/*   500*/              OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   503*/              OPC_CheckChild0Same, 1,
/*   505*/              OPC_MoveChild1,
/*   506*/              OPC_CheckValueType, MVT::i16,
/*   508*/              OPC_MoveParent,
/*   509*/              OPC_MoveParent,
/*   510*/              OPC_MoveParent,
/*   511*/              OPC_CheckChild1Integer, 8, 
/*   513*/              OPC_MoveParent,
/*   514*/              OPC_MoveParent,
/*   515*/              OPC_RecordChild1, // #2 = $op3
/*   516*/              OPC_MoveChild1,
/*   517*/              OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   519*/              OPC_MoveParent,
/*   520*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] })), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   529*/            0, /*End of Scope*/
/*   530*/          /*SwitchOpcode*/ 29|128,1/*157*/, TARGET_VAL(ISD::SIGN_EXTEND_INREG),// ->691
/*   534*/            OPC_RecordChild0, // #0 = $op1
/*   535*/            OPC_MoveChild0,
/*   536*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   538*/            OPC_MoveParent,
/*   539*/            OPC_MoveChild1,
/*   540*/            OPC_CheckValueType, MVT::i16,
/*   542*/            OPC_MoveParent,
/*   543*/            OPC_MoveParent,
/*   544*/            OPC_MoveChild1,
/*   545*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   548*/            OPC_RecordChild0, // #1 = $op2
/*   549*/            OPC_MoveChild0,
/*   550*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   552*/            OPC_MoveParent,
/*   553*/            OPC_MoveChild1,
/*   554*/            OPC_CheckValueType, MVT::i16,
/*   556*/            OPC_MoveParent,
/*   557*/            OPC_MoveParent,
/*   558*/            OPC_MoveParent,
/*   559*/            OPC_CheckChild1Integer, 8, 
/*   561*/            OPC_MoveParent,
/*   562*/            OPC_MoveChild1,
/*   563*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   566*/            OPC_MoveChild0,
/*   567*/            OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   570*/            OPC_MoveChild0,
/*   571*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   574*/            OPC_Scope, 33, /*->609*/ // 3 children in Scope
/*   576*/              OPC_CheckChild0Same, 0,
/*   578*/              OPC_CheckChild1Integer, 16, 
/*   580*/              OPC_MoveParent,
/*   581*/              OPC_MoveChild1,
/*   582*/              OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   585*/              OPC_CheckChild0Same, 1,
/*   587*/              OPC_CheckChild1Integer, 16, 
/*   589*/              OPC_MoveParent,
/*   590*/              OPC_MoveParent,
/*   591*/              OPC_CheckChild1Integer, 8, 
/*   593*/              OPC_MoveParent,
/*   594*/              OPC_MoveParent,
/*   595*/              OPC_RecordChild1, // #2 = $op3
/*   596*/              OPC_MoveChild1,
/*   597*/              OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   599*/              OPC_MoveParent,
/*   600*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] })), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   609*/            /*Scope*/ 46, /*->656*/
/*   610*/              OPC_CheckChild0Same, 1,
/*   612*/              OPC_CheckChild1Integer, 16, 
/*   614*/              OPC_MoveParent,
/*   615*/              OPC_MoveChild1,
/*   616*/              OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   619*/              OPC_CheckChild0Same, 0,
/*   621*/              OPC_CheckChild1Integer, 16, 
/*   623*/              OPC_MoveParent,
/*   624*/              OPC_MoveParent,
/*   625*/              OPC_CheckChild1Integer, 8, 
/*   627*/              OPC_MoveParent,
/*   628*/              OPC_MoveParent,
/*   629*/              OPC_RecordChild1, // #2 = $op3
/*   630*/              OPC_MoveChild1,
/*   631*/              OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   633*/              OPC_MoveParent,
/*   634*/              OPC_Scope, 9, /*->645*/ // 2 children in Scope
/*   636*/                OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                              MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                          // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] })), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 55
                          // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   645*/              /*Scope*/ 9, /*->655*/
/*   646*/                OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                              MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                          // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] })), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 55
                          // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   655*/              0, /*End of Scope*/
/*   656*/            /*Scope*/ 33, /*->690*/
/*   657*/              OPC_CheckChild0Same, 0,
/*   659*/              OPC_CheckChild1Integer, 16, 
/*   661*/              OPC_MoveParent,
/*   662*/              OPC_MoveChild1,
/*   663*/              OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   666*/              OPC_CheckChild0Same, 1,
/*   668*/              OPC_CheckChild1Integer, 16, 
/*   670*/              OPC_MoveParent,
/*   671*/              OPC_MoveParent,
/*   672*/              OPC_CheckChild1Integer, 8, 
/*   674*/              OPC_MoveParent,
/*   675*/              OPC_MoveParent,
/*   676*/              OPC_RecordChild1, // #2 = $op3
/*   677*/              OPC_MoveChild1,
/*   678*/              OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   680*/              OPC_MoveParent,
/*   681*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] })), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   690*/            0, /*End of Scope*/
/*   691*/          0, // EndSwitchOpcode
/*   692*/        /*Scope*/ 29|128,1/*157*/, /*->851*/
/*   694*/          OPC_RecordChild0, // #0 = $op3
/*   695*/          OPC_MoveChild0,
/*   696*/          OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   698*/          OPC_MoveParent,
/*   699*/          OPC_MoveChild1,
/*   700*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   703*/          OPC_MoveChild0,
/*   704*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   707*/          OPC_MoveChild0,
/*   708*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   711*/          OPC_RecordChild0, // #1 = $op1
/*   712*/          OPC_MoveChild0,
/*   713*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   715*/          OPC_MoveParent,
/*   716*/          OPC_MoveChild1,
/*   717*/          OPC_CheckValueType, MVT::i16,
/*   719*/          OPC_MoveParent,
/*   720*/          OPC_MoveParent,
/*   721*/          OPC_MoveChild1,
/*   722*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   725*/          OPC_RecordChild0, // #2 = $op2
/*   726*/          OPC_MoveChild0,
/*   727*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   729*/          OPC_MoveParent,
/*   730*/          OPC_MoveChild1,
/*   731*/          OPC_CheckValueType, MVT::i16,
/*   733*/          OPC_MoveParent,
/*   734*/          OPC_MoveParent,
/*   735*/          OPC_MoveParent,
/*   736*/          OPC_CheckChild1Integer, 8, 
/*   738*/          OPC_MoveParent,
/*   739*/          OPC_MoveParent,
/*   740*/          OPC_MoveChild1,
/*   741*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   744*/          OPC_MoveChild0,
/*   745*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   748*/          OPC_MoveChild0,
/*   749*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   752*/          OPC_Scope, 27, /*->781*/ // 3 children in Scope
/*   754*/            OPC_CheckChild0Same, 1,
/*   756*/            OPC_CheckChild1Integer, 16, 
/*   758*/            OPC_MoveParent,
/*   759*/            OPC_MoveChild1,
/*   760*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   763*/            OPC_CheckChild0Same, 2,
/*   765*/            OPC_CheckChild1Integer, 16, 
/*   767*/            OPC_MoveParent,
/*   768*/            OPC_MoveParent,
/*   769*/            OPC_CheckChild1Integer, 8, 
/*   771*/            OPC_MoveParent,
/*   772*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                      // Src: (add:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] })), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] })) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   781*/          /*Scope*/ 40, /*->822*/
/*   782*/            OPC_CheckChild0Same, 2,
/*   784*/            OPC_CheckChild1Integer, 16, 
/*   786*/            OPC_MoveParent,
/*   787*/            OPC_MoveChild1,
/*   788*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   791*/            OPC_CheckChild0Same, 1,
/*   793*/            OPC_CheckChild1Integer, 16, 
/*   795*/            OPC_MoveParent,
/*   796*/            OPC_MoveParent,
/*   797*/            OPC_CheckChild1Integer, 8, 
/*   799*/            OPC_MoveParent,
/*   800*/            OPC_Scope, 9, /*->811*/ // 2 children in Scope
/*   802*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] })), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] })) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   811*/            /*Scope*/ 9, /*->821*/
/*   812*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] })), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] })) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   821*/            0, /*End of Scope*/
/*   822*/          /*Scope*/ 27, /*->850*/
/*   823*/            OPC_CheckChild0Same, 1,
/*   825*/            OPC_CheckChild1Integer, 16, 
/*   827*/            OPC_MoveParent,
/*   828*/            OPC_MoveChild1,
/*   829*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   832*/            OPC_CheckChild0Same, 2,
/*   834*/            OPC_CheckChild1Integer, 16, 
/*   836*/            OPC_MoveParent,
/*   837*/            OPC_MoveParent,
/*   838*/            OPC_CheckChild1Integer, 8, 
/*   840*/            OPC_MoveParent,
/*   841*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                      // Src: (add:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] })), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] })) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   850*/          0, /*End of Scope*/
/*   851*/        /*Scope*/ 29|128,1/*157*/, /*->1010*/
/*   853*/          OPC_MoveChild0,
/*   854*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   857*/          OPC_MoveChild0,
/*   858*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   861*/          OPC_MoveChild0,
/*   862*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   865*/          OPC_RecordChild0, // #0 = $op1
/*   866*/          OPC_MoveChild0,
/*   867*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   869*/          OPC_MoveParent,
/*   870*/          OPC_MoveChild1,
/*   871*/          OPC_CheckValueType, MVT::i16,
/*   873*/          OPC_MoveParent,
/*   874*/          OPC_MoveParent,
/*   875*/          OPC_MoveChild1,
/*   876*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*   879*/          OPC_RecordChild0, // #1 = $op2
/*   880*/          OPC_MoveChild0,
/*   881*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   883*/          OPC_MoveParent,
/*   884*/          OPC_MoveChild1,
/*   885*/          OPC_CheckValueType, MVT::i16,
/*   887*/          OPC_MoveParent,
/*   888*/          OPC_MoveParent,
/*   889*/          OPC_MoveParent,
/*   890*/          OPC_CheckChild1Integer, 8, 
/*   892*/          OPC_MoveParent,
/*   893*/          OPC_RecordChild1, // #2 = $op3
/*   894*/          OPC_MoveChild1,
/*   895*/          OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*   897*/          OPC_MoveParent,
/*   898*/          OPC_MoveParent,
/*   899*/          OPC_MoveChild1,
/*   900*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   903*/          OPC_MoveChild0,
/*   904*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   907*/          OPC_MoveChild0,
/*   908*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   911*/          OPC_Scope, 27, /*->940*/ // 3 children in Scope
/*   913*/            OPC_CheckChild0Same, 0,
/*   915*/            OPC_CheckChild1Integer, 16, 
/*   917*/            OPC_MoveParent,
/*   918*/            OPC_MoveChild1,
/*   919*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   922*/            OPC_CheckChild0Same, 1,
/*   924*/            OPC_CheckChild1Integer, 16, 
/*   926*/            OPC_MoveParent,
/*   927*/            OPC_MoveParent,
/*   928*/            OPC_CheckChild1Integer, 8, 
/*   930*/            OPC_MoveParent,
/*   931*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                      // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] })) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   940*/          /*Scope*/ 40, /*->981*/
/*   941*/            OPC_CheckChild0Same, 1,
/*   943*/            OPC_CheckChild1Integer, 16, 
/*   945*/            OPC_MoveParent,
/*   946*/            OPC_MoveChild1,
/*   947*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   950*/            OPC_CheckChild0Same, 0,
/*   952*/            OPC_CheckChild1Integer, 16, 
/*   954*/            OPC_MoveParent,
/*   955*/            OPC_MoveParent,
/*   956*/            OPC_CheckChild1Integer, 8, 
/*   958*/            OPC_MoveParent,
/*   959*/            OPC_Scope, 9, /*->970*/ // 2 children in Scope
/*   961*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] })) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   970*/            /*Scope*/ 9, /*->980*/
/*   971*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                        // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] })) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   980*/            0, /*End of Scope*/
/*   981*/          /*Scope*/ 27, /*->1009*/
/*   982*/            OPC_CheckChild0Same, 0,
/*   984*/            OPC_CheckChild1Integer, 16, 
/*   986*/            OPC_MoveParent,
/*   987*/            OPC_MoveChild1,
/*   988*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   991*/            OPC_CheckChild0Same, 1,
/*   993*/            OPC_CheckChild1Integer, 16, 
/*   995*/            OPC_MoveParent,
/*   996*/            OPC_MoveParent,
/*   997*/            OPC_CheckChild1Integer, 8, 
/*   999*/            OPC_MoveParent,
/*  1000*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (add:{ *:[i32] } (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] })) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1009*/          0, /*End of Scope*/
/*  1010*/        0, /*End of Scope*/
/*  1011*/      /*SwitchOpcode*/ 37|128,2/*293*/, TARGET_VAL(ISD::SRA),// ->1308
/*  1015*/        OPC_MoveChild0,
/*  1016*/        OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1019*/        OPC_MoveChild0,
/*  1020*/        OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1023*/        OPC_RecordChild0, // #0 = $op1
/*  1024*/        OPC_MoveChild0,
/*  1025*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1027*/        OPC_MoveParent,
/*  1028*/        OPC_MoveChild1,
/*  1029*/        OPC_CheckValueType, MVT::i16,
/*  1031*/        OPC_MoveParent,
/*  1032*/        OPC_MoveParent,
/*  1033*/        OPC_MoveChild1,
/*  1034*/        OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1037*/        OPC_RecordChild0, // #1 = $op2
/*  1038*/        OPC_MoveChild0,
/*  1039*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1041*/        OPC_MoveParent,
/*  1042*/        OPC_MoveChild1,
/*  1043*/        OPC_CheckValueType, MVT::i16,
/*  1045*/        OPC_MoveParent,
/*  1046*/        OPC_MoveParent,
/*  1047*/        OPC_MoveParent,
/*  1048*/        OPC_CheckChild1Integer, 8, 
/*  1050*/        OPC_MoveParent,
/*  1051*/        OPC_MoveChild1,
/*  1052*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  1055*/        OPC_Scope, 1|128,1/*129*/, /*->1187*/ // 2 children in Scope
/*  1058*/          OPC_MoveChild0,
/*  1059*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1062*/          OPC_MoveChild0,
/*  1063*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1066*/          OPC_MoveChild0,
/*  1067*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1070*/          OPC_Scope, 33, /*->1105*/ // 3 children in Scope
/*  1072*/            OPC_CheckChild0Same, 0,
/*  1074*/            OPC_CheckChild1Integer, 16, 
/*  1076*/            OPC_MoveParent,
/*  1077*/            OPC_MoveChild1,
/*  1078*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1081*/            OPC_CheckChild0Same, 1,
/*  1083*/            OPC_CheckChild1Integer, 16, 
/*  1085*/            OPC_MoveParent,
/*  1086*/            OPC_MoveParent,
/*  1087*/            OPC_CheckChild1Integer, 8, 
/*  1089*/            OPC_MoveParent,
/*  1090*/            OPC_RecordChild1, // #2 = $op3
/*  1091*/            OPC_MoveChild1,
/*  1092*/            OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1094*/            OPC_MoveParent,
/*  1095*/            OPC_MoveParent,
/*  1096*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                      // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3)) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1105*/          /*Scope*/ 46, /*->1152*/
/*  1106*/            OPC_CheckChild0Same, 1,
/*  1108*/            OPC_CheckChild1Integer, 16, 
/*  1110*/            OPC_MoveParent,
/*  1111*/            OPC_MoveChild1,
/*  1112*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1115*/            OPC_CheckChild0Same, 0,
/*  1117*/            OPC_CheckChild1Integer, 16, 
/*  1119*/            OPC_MoveParent,
/*  1120*/            OPC_MoveParent,
/*  1121*/            OPC_CheckChild1Integer, 8, 
/*  1123*/            OPC_MoveParent,
/*  1124*/            OPC_RecordChild1, // #2 = $op3
/*  1125*/            OPC_MoveChild1,
/*  1126*/            OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1128*/            OPC_MoveParent,
/*  1129*/            OPC_MoveParent,
/*  1130*/            OPC_Scope, 9, /*->1141*/ // 2 children in Scope
/*  1132*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                        // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3)) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1141*/            /*Scope*/ 9, /*->1151*/
/*  1142*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                        // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3)) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1151*/            0, /*End of Scope*/
/*  1152*/          /*Scope*/ 33, /*->1186*/
/*  1153*/            OPC_CheckChild0Same, 0,
/*  1155*/            OPC_CheckChild1Integer, 16, 
/*  1157*/            OPC_MoveParent,
/*  1158*/            OPC_MoveChild1,
/*  1159*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1162*/            OPC_CheckChild0Same, 1,
/*  1164*/            OPC_CheckChild1Integer, 16, 
/*  1166*/            OPC_MoveParent,
/*  1167*/            OPC_MoveParent,
/*  1168*/            OPC_CheckChild1Integer, 8, 
/*  1170*/            OPC_MoveParent,
/*  1171*/            OPC_RecordChild1, // #2 = $op3
/*  1172*/            OPC_MoveChild1,
/*  1173*/            OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1175*/            OPC_MoveParent,
/*  1176*/            OPC_MoveParent,
/*  1177*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3)) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1186*/          0, /*End of Scope*/
/*  1187*/        /*Scope*/ 119, /*->1307*/
/*  1188*/          OPC_RecordChild0, // #2 = $op3
/*  1189*/          OPC_MoveChild0,
/*  1190*/          OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1192*/          OPC_MoveParent,
/*  1193*/          OPC_MoveChild1,
/*  1194*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1197*/          OPC_MoveChild0,
/*  1198*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1201*/          OPC_MoveChild0,
/*  1202*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1205*/          OPC_Scope, 28, /*->1235*/ // 3 children in Scope
/*  1207*/            OPC_CheckChild0Same, 0,
/*  1209*/            OPC_CheckChild1Integer, 16, 
/*  1211*/            OPC_MoveParent,
/*  1212*/            OPC_MoveChild1,
/*  1213*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1216*/            OPC_CheckChild0Same, 1,
/*  1218*/            OPC_CheckChild1Integer, 16, 
/*  1220*/            OPC_MoveParent,
/*  1221*/            OPC_MoveParent,
/*  1222*/            OPC_CheckChild1Integer, 8, 
/*  1224*/            OPC_MoveParent,
/*  1225*/            OPC_MoveParent,
/*  1226*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                      // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }))) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1235*/          /*Scope*/ 41, /*->1277*/
/*  1236*/            OPC_CheckChild0Same, 1,
/*  1238*/            OPC_CheckChild1Integer, 16, 
/*  1240*/            OPC_MoveParent,
/*  1241*/            OPC_MoveChild1,
/*  1242*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1245*/            OPC_CheckChild0Same, 0,
/*  1247*/            OPC_CheckChild1Integer, 16, 
/*  1249*/            OPC_MoveParent,
/*  1250*/            OPC_MoveParent,
/*  1251*/            OPC_CheckChild1Integer, 8, 
/*  1253*/            OPC_MoveParent,
/*  1254*/            OPC_MoveParent,
/*  1255*/            OPC_Scope, 9, /*->1266*/ // 2 children in Scope
/*  1257*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                        // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }))) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1266*/            /*Scope*/ 9, /*->1276*/
/*  1267*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                        // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }))) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1276*/            0, /*End of Scope*/
/*  1277*/          /*Scope*/ 28, /*->1306*/
/*  1278*/            OPC_CheckChild0Same, 0,
/*  1280*/            OPC_CheckChild1Integer, 16, 
/*  1282*/            OPC_MoveParent,
/*  1283*/            OPC_MoveChild1,
/*  1284*/            OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1287*/            OPC_CheckChild0Same, 1,
/*  1289*/            OPC_CheckChild1Integer, 16, 
/*  1291*/            OPC_MoveParent,
/*  1292*/            OPC_MoveParent,
/*  1293*/            OPC_CheckChild1Integer, 8, 
/*  1295*/            OPC_MoveParent,
/*  1296*/            OPC_MoveParent,
/*  1297*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }))) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1306*/          0, /*End of Scope*/
/*  1307*/        0, /*End of Scope*/
/*  1308*/      0, // EndSwitchOpcode
/*  1309*/    /*Scope*/ 64|128,2/*320*/, /*->1631*/
/*  1311*/      OPC_RecordChild0, // #0 = $op3
/*  1312*/      OPC_MoveChild0,
/*  1313*/      OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1315*/      OPC_MoveParent,
/*  1316*/      OPC_MoveChild1,
/*  1317*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  1320*/      OPC_MoveChild0,
/*  1321*/      OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1324*/      OPC_MoveChild0,
/*  1325*/      OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1328*/      OPC_MoveChild0,
/*  1329*/      OPC_SwitchOpcode /*2 cases */, 22|128,1/*150*/, TARGET_VAL(ISD::SRA),// ->1484
/*  1334*/        OPC_RecordChild0, // #1 = $op1
/*  1335*/        OPC_MoveChild0,
/*  1336*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1338*/        OPC_MoveParent,
/*  1339*/        OPC_CheckChild1Integer, 16, 
/*  1341*/        OPC_MoveParent,
/*  1342*/        OPC_MoveChild1,
/*  1343*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1346*/        OPC_RecordChild0, // #2 = $op2
/*  1347*/        OPC_MoveChild0,
/*  1348*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1350*/        OPC_MoveParent,
/*  1351*/        OPC_CheckChild1Integer, 16, 
/*  1353*/        OPC_MoveParent,
/*  1354*/        OPC_MoveParent,
/*  1355*/        OPC_CheckChild1Integer, 8, 
/*  1357*/        OPC_MoveParent,
/*  1358*/        OPC_MoveChild1,
/*  1359*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1362*/        OPC_MoveChild0,
/*  1363*/        OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1366*/        OPC_MoveChild0,
/*  1367*/        OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1370*/        OPC_Scope, 32, /*->1404*/ // 3 children in Scope
/*  1372*/          OPC_CheckChild0Same, 1,
/*  1374*/          OPC_MoveChild1,
/*  1375*/          OPC_CheckValueType, MVT::i16,
/*  1377*/          OPC_MoveParent,
/*  1378*/          OPC_MoveParent,
/*  1379*/          OPC_MoveChild1,
/*  1380*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1383*/          OPC_CheckChild0Same, 2,
/*  1385*/          OPC_MoveChild1,
/*  1386*/          OPC_CheckValueType, MVT::i16,
/*  1388*/          OPC_MoveParent,
/*  1389*/          OPC_MoveParent,
/*  1390*/          OPC_MoveParent,
/*  1391*/          OPC_CheckChild1Integer, 8, 
/*  1393*/          OPC_MoveParent,
/*  1394*/          OPC_MoveParent,
/*  1395*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                        MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }))) - Complexity = 55
                    // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1404*/        /*Scope*/ 45, /*->1450*/
/*  1405*/          OPC_CheckChild0Same, 2,
/*  1407*/          OPC_MoveChild1,
/*  1408*/          OPC_CheckValueType, MVT::i16,
/*  1410*/          OPC_MoveParent,
/*  1411*/          OPC_MoveParent,
/*  1412*/          OPC_MoveChild1,
/*  1413*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1416*/          OPC_CheckChild0Same, 1,
/*  1418*/          OPC_MoveChild1,
/*  1419*/          OPC_CheckValueType, MVT::i16,
/*  1421*/          OPC_MoveParent,
/*  1422*/          OPC_MoveParent,
/*  1423*/          OPC_MoveParent,
/*  1424*/          OPC_CheckChild1Integer, 8, 
/*  1426*/          OPC_MoveParent,
/*  1427*/          OPC_MoveParent,
/*  1428*/          OPC_Scope, 9, /*->1439*/ // 2 children in Scope
/*  1430*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                      // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }))) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1439*/          /*Scope*/ 9, /*->1449*/
/*  1440*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                      // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }))) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1449*/          0, /*End of Scope*/
/*  1450*/        /*Scope*/ 32, /*->1483*/
/*  1451*/          OPC_CheckChild0Same, 1,
/*  1453*/          OPC_MoveChild1,
/*  1454*/          OPC_CheckValueType, MVT::i16,
/*  1456*/          OPC_MoveParent,
/*  1457*/          OPC_MoveParent,
/*  1458*/          OPC_MoveChild1,
/*  1459*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1462*/          OPC_CheckChild0Same, 2,
/*  1464*/          OPC_MoveChild1,
/*  1465*/          OPC_CheckValueType, MVT::i16,
/*  1467*/          OPC_MoveParent,
/*  1468*/          OPC_MoveParent,
/*  1469*/          OPC_MoveParent,
/*  1470*/          OPC_CheckChild1Integer, 8, 
/*  1472*/          OPC_MoveParent,
/*  1473*/          OPC_MoveParent,
/*  1474*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                        MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }))) - Complexity = 55
                    // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1483*/        0, /*End of Scope*/
/*  1484*/      /*SwitchOpcode*/ 14|128,1/*142*/, TARGET_VAL(ISD::SIGN_EXTEND_INREG),// ->1630
/*  1488*/        OPC_RecordChild0, // #1 = $op1
/*  1489*/        OPC_MoveChild0,
/*  1490*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1492*/        OPC_MoveParent,
/*  1493*/        OPC_MoveChild1,
/*  1494*/        OPC_CheckValueType, MVT::i16,
/*  1496*/        OPC_MoveParent,
/*  1497*/        OPC_MoveParent,
/*  1498*/        OPC_MoveChild1,
/*  1499*/        OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1502*/        OPC_RecordChild0, // #2 = $op2
/*  1503*/        OPC_MoveChild0,
/*  1504*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1506*/        OPC_MoveParent,
/*  1507*/        OPC_MoveChild1,
/*  1508*/        OPC_CheckValueType, MVT::i16,
/*  1510*/        OPC_MoveParent,
/*  1511*/        OPC_MoveParent,
/*  1512*/        OPC_MoveParent,
/*  1513*/        OPC_CheckChild1Integer, 8, 
/*  1515*/        OPC_MoveParent,
/*  1516*/        OPC_MoveChild1,
/*  1517*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1520*/        OPC_MoveChild0,
/*  1521*/        OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1524*/        OPC_MoveChild0,
/*  1525*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1528*/        OPC_Scope, 28, /*->1558*/ // 3 children in Scope
/*  1530*/          OPC_CheckChild0Same, 1,
/*  1532*/          OPC_CheckChild1Integer, 16, 
/*  1534*/          OPC_MoveParent,
/*  1535*/          OPC_MoveChild1,
/*  1536*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1539*/          OPC_CheckChild0Same, 2,
/*  1541*/          OPC_CheckChild1Integer, 16, 
/*  1543*/          OPC_MoveParent,
/*  1544*/          OPC_MoveParent,
/*  1545*/          OPC_CheckChild1Integer, 8, 
/*  1547*/          OPC_MoveParent,
/*  1548*/          OPC_MoveParent,
/*  1549*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                        MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }))) - Complexity = 55
                    // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1558*/        /*Scope*/ 41, /*->1600*/
/*  1559*/          OPC_CheckChild0Same, 2,
/*  1561*/          OPC_CheckChild1Integer, 16, 
/*  1563*/          OPC_MoveParent,
/*  1564*/          OPC_MoveChild1,
/*  1565*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1568*/          OPC_CheckChild0Same, 1,
/*  1570*/          OPC_CheckChild1Integer, 16, 
/*  1572*/          OPC_MoveParent,
/*  1573*/          OPC_MoveParent,
/*  1574*/          OPC_CheckChild1Integer, 8, 
/*  1576*/          OPC_MoveParent,
/*  1577*/          OPC_MoveParent,
/*  1578*/          OPC_Scope, 9, /*->1589*/ // 2 children in Scope
/*  1580*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                      // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }))) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1589*/          /*Scope*/ 9, /*->1599*/
/*  1590*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                      // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }))) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1599*/          0, /*End of Scope*/
/*  1600*/        /*Scope*/ 28, /*->1629*/
/*  1601*/          OPC_CheckChild0Same, 1,
/*  1603*/          OPC_CheckChild1Integer, 16, 
/*  1605*/          OPC_MoveParent,
/*  1606*/          OPC_MoveChild1,
/*  1607*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1610*/          OPC_CheckChild0Same, 2,
/*  1612*/          OPC_CheckChild1Integer, 16, 
/*  1614*/          OPC_MoveParent,
/*  1615*/          OPC_MoveParent,
/*  1616*/          OPC_CheckChild1Integer, 8, 
/*  1618*/          OPC_MoveParent,
/*  1619*/          OPC_MoveParent,
/*  1620*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                        MVT::i32, 3/*#Ops*/, 2, 1, 0, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }))) - Complexity = 55
                    // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1629*/        0, /*End of Scope*/
/*  1630*/      0, // EndSwitchOpcode
/*  1631*/    /*Scope*/ 95|128,2/*351*/, /*->1984*/
/*  1633*/      OPC_MoveChild0,
/*  1634*/      OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1637*/      OPC_MoveChild0,
/*  1638*/      OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1641*/      OPC_Scope, 54|128,2/*310*/, /*->1954*/ // 2 children in Scope
/*  1644*/        OPC_MoveChild0,
/*  1645*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1648*/        OPC_RecordChild0, // #0 = $op1
/*  1649*/        OPC_MoveChild0,
/*  1650*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1652*/        OPC_MoveParent,
/*  1653*/        OPC_CheckChild1Integer, 16, 
/*  1655*/        OPC_MoveParent,
/*  1656*/        OPC_MoveChild1,
/*  1657*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1660*/        OPC_RecordChild0, // #1 = $op2
/*  1661*/        OPC_MoveChild0,
/*  1662*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1664*/        OPC_MoveParent,
/*  1665*/        OPC_CheckChild1Integer, 16, 
/*  1667*/        OPC_MoveParent,
/*  1668*/        OPC_MoveParent,
/*  1669*/        OPC_CheckChild1Integer, 8, 
/*  1671*/        OPC_MoveParent,
/*  1672*/        OPC_MoveChild1,
/*  1673*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  1676*/        OPC_Scope, 3|128,1/*131*/, /*->1810*/ // 2 children in Scope
/*  1679*/          OPC_RecordChild0, // #2 = $op3
/*  1680*/          OPC_MoveChild0,
/*  1681*/          OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1683*/          OPC_MoveParent,
/*  1684*/          OPC_MoveChild1,
/*  1685*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1688*/          OPC_MoveChild0,
/*  1689*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1692*/          OPC_MoveChild0,
/*  1693*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1696*/          OPC_Scope, 32, /*->1730*/ // 3 children in Scope
/*  1698*/            OPC_CheckChild0Same, 0,
/*  1700*/            OPC_MoveChild1,
/*  1701*/            OPC_CheckValueType, MVT::i16,
/*  1703*/            OPC_MoveParent,
/*  1704*/            OPC_MoveParent,
/*  1705*/            OPC_MoveChild1,
/*  1706*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1709*/            OPC_CheckChild0Same, 1,
/*  1711*/            OPC_MoveChild1,
/*  1712*/            OPC_CheckValueType, MVT::i16,
/*  1714*/            OPC_MoveParent,
/*  1715*/            OPC_MoveParent,
/*  1716*/            OPC_MoveParent,
/*  1717*/            OPC_CheckChild1Integer, 8, 
/*  1719*/            OPC_MoveParent,
/*  1720*/            OPC_MoveParent,
/*  1721*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                      // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }))) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1730*/          /*Scope*/ 45, /*->1776*/
/*  1731*/            OPC_CheckChild0Same, 1,
/*  1733*/            OPC_MoveChild1,
/*  1734*/            OPC_CheckValueType, MVT::i16,
/*  1736*/            OPC_MoveParent,
/*  1737*/            OPC_MoveParent,
/*  1738*/            OPC_MoveChild1,
/*  1739*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1742*/            OPC_CheckChild0Same, 0,
/*  1744*/            OPC_MoveChild1,
/*  1745*/            OPC_CheckValueType, MVT::i16,
/*  1747*/            OPC_MoveParent,
/*  1748*/            OPC_MoveParent,
/*  1749*/            OPC_MoveParent,
/*  1750*/            OPC_CheckChild1Integer, 8, 
/*  1752*/            OPC_MoveParent,
/*  1753*/            OPC_MoveParent,
/*  1754*/            OPC_Scope, 9, /*->1765*/ // 2 children in Scope
/*  1756*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                        // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }))) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1765*/            /*Scope*/ 9, /*->1775*/
/*  1766*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                        // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }))) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1775*/            0, /*End of Scope*/
/*  1776*/          /*Scope*/ 32, /*->1809*/
/*  1777*/            OPC_CheckChild0Same, 0,
/*  1779*/            OPC_MoveChild1,
/*  1780*/            OPC_CheckValueType, MVT::i16,
/*  1782*/            OPC_MoveParent,
/*  1783*/            OPC_MoveParent,
/*  1784*/            OPC_MoveChild1,
/*  1785*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1788*/            OPC_CheckChild0Same, 1,
/*  1790*/            OPC_MoveChild1,
/*  1791*/            OPC_CheckValueType, MVT::i16,
/*  1793*/            OPC_MoveParent,
/*  1794*/            OPC_MoveParent,
/*  1795*/            OPC_MoveParent,
/*  1796*/            OPC_CheckChild1Integer, 8, 
/*  1798*/            OPC_MoveParent,
/*  1799*/            OPC_MoveParent,
/*  1800*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }))) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1809*/          0, /*End of Scope*/
/*  1810*/        /*Scope*/ 13|128,1/*141*/, /*->1953*/
/*  1812*/          OPC_MoveChild0,
/*  1813*/          OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1816*/          OPC_MoveChild0,
/*  1817*/          OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1820*/          OPC_MoveChild0,
/*  1821*/          OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1824*/          OPC_Scope, 37, /*->1863*/ // 3 children in Scope
/*  1826*/            OPC_CheckChild0Same, 0,
/*  1828*/            OPC_MoveChild1,
/*  1829*/            OPC_CheckValueType, MVT::i16,
/*  1831*/            OPC_MoveParent,
/*  1832*/            OPC_MoveParent,
/*  1833*/            OPC_MoveChild1,
/*  1834*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1837*/            OPC_CheckChild0Same, 1,
/*  1839*/            OPC_MoveChild1,
/*  1840*/            OPC_CheckValueType, MVT::i16,
/*  1842*/            OPC_MoveParent,
/*  1843*/            OPC_MoveParent,
/*  1844*/            OPC_MoveParent,
/*  1845*/            OPC_CheckChild1Integer, 8, 
/*  1847*/            OPC_MoveParent,
/*  1848*/            OPC_RecordChild1, // #2 = $op3
/*  1849*/            OPC_MoveChild1,
/*  1850*/            OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1852*/            OPC_MoveParent,
/*  1853*/            OPC_MoveParent,
/*  1854*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                      // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3)) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1863*/          /*Scope*/ 50, /*->1914*/
/*  1864*/            OPC_CheckChild0Same, 1,
/*  1866*/            OPC_MoveChild1,
/*  1867*/            OPC_CheckValueType, MVT::i16,
/*  1869*/            OPC_MoveParent,
/*  1870*/            OPC_MoveParent,
/*  1871*/            OPC_MoveChild1,
/*  1872*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1875*/            OPC_CheckChild0Same, 0,
/*  1877*/            OPC_MoveChild1,
/*  1878*/            OPC_CheckValueType, MVT::i16,
/*  1880*/            OPC_MoveParent,
/*  1881*/            OPC_MoveParent,
/*  1882*/            OPC_MoveParent,
/*  1883*/            OPC_CheckChild1Integer, 8, 
/*  1885*/            OPC_MoveParent,
/*  1886*/            OPC_RecordChild1, // #2 = $op3
/*  1887*/            OPC_MoveChild1,
/*  1888*/            OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1890*/            OPC_MoveParent,
/*  1891*/            OPC_MoveParent,
/*  1892*/            OPC_Scope, 9, /*->1903*/ // 2 children in Scope
/*  1894*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                        // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] })), 8:{ *:[i32] }), (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3)) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1903*/            /*Scope*/ 9, /*->1913*/
/*  1904*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                            MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                        // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3)) - Complexity = 55
                        // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1913*/            0, /*End of Scope*/
/*  1914*/          /*Scope*/ 37, /*->1952*/
/*  1915*/            OPC_CheckChild0Same, 0,
/*  1917*/            OPC_MoveChild1,
/*  1918*/            OPC_CheckValueType, MVT::i16,
/*  1920*/            OPC_MoveParent,
/*  1921*/            OPC_MoveParent,
/*  1922*/            OPC_MoveChild1,
/*  1923*/            OPC_CheckOpcode, TARGET_VAL(ISD::SIGN_EXTEND_INREG),
/*  1926*/            OPC_CheckChild0Same, 1,
/*  1928*/            OPC_MoveChild1,
/*  1929*/            OPC_CheckValueType, MVT::i16,
/*  1931*/            OPC_MoveParent,
/*  1932*/            OPC_MoveParent,
/*  1933*/            OPC_MoveParent,
/*  1934*/            OPC_CheckChild1Integer, 8, 
/*  1936*/            OPC_MoveParent,
/*  1937*/            OPC_RecordChild1, // #2 = $op3
/*  1938*/            OPC_MoveChild1,
/*  1939*/            OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1941*/            OPC_MoveParent,
/*  1942*/            OPC_MoveParent,
/*  1943*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                          MVT::i32, 3/*#Ops*/, 1, 0, 2, 
                      // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 16:{ *:[i32] }), (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 16:{ *:[i32] })), 8:{ *:[i32] }), (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, i16:{ *:[Other] }), (sext_inreg:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, i16:{ *:[Other] })), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3)) - Complexity = 55
                      // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1952*/          0, /*End of Scope*/
/*  1953*/        0, /*End of Scope*/
/*  1954*/      /*Scope*/ 28, /*->1983*/
/*  1955*/        OPC_RecordChild0, // #0 = $op1
/*  1956*/        OPC_MoveChild0,
/*  1957*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1959*/        OPC_MoveParent,
/*  1960*/        OPC_RecordChild1, // #1 = $op2
/*  1961*/        OPC_MoveChild1,
/*  1962*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1964*/        OPC_MoveParent,
/*  1965*/        OPC_MoveParent,
/*  1966*/        OPC_CheckChild1Integer, 8, 
/*  1968*/        OPC_MoveParent,
/*  1969*/        OPC_RecordChild1, // #2 = $op3
/*  1970*/        OPC_MoveChild1,
/*  1971*/        OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1973*/        OPC_MoveParent,
/*  1974*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__), 0,
                      MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 17
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1983*/      0, /*End of Scope*/
/*  1984*/    /*Scope*/ 76, /*->2061*/
/*  1985*/      OPC_RecordChild0, // #0 = $op3
/*  1986*/      OPC_MoveChild0,
/*  1987*/      OPC_Scope, 34, /*->2023*/ // 2 children in Scope
/*  1989*/        OPC_CheckPredicate, 1, // Predicate_NotFI_i32_regs
/*  1991*/        OPC_MoveParent,
/*  1992*/        OPC_MoveChild1,
/*  1993*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1996*/        OPC_MoveChild0,
/*  1997*/        OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  2000*/        OPC_RecordChild0, // #1 = $op1
/*  2001*/        OPC_MoveChild0,
/*  2002*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2004*/        OPC_MoveParent,
/*  2005*/        OPC_RecordChild1, // #2 = $op2
/*  2006*/        OPC_MoveChild1,
/*  2007*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2009*/        OPC_MoveParent,
/*  2010*/        OPC_MoveParent,
/*  2011*/        OPC_CheckChild1Integer, 8, 
/*  2013*/        OPC_MoveParent,
/*  2014*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__), 0,
                      MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                  // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2), 8:{ *:[i32] })) - Complexity = 17
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2023*/      /*Scope*/ 36, /*->2060*/
/*  2024*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2026*/        OPC_MoveParent,
/*  2027*/        OPC_RecordChild1, // #1 = $op2
/*  2028*/        OPC_MoveChild1,
/*  2029*/        OPC_Scope, 16, /*->2047*/ // 2 children in Scope
/*  2031*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2034*/          OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2036*/          OPC_MoveParent,
/*  2037*/          OPC_EmitConvertToTarget, 1,
/*  2039*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 2, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                    // Dst: (i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2047*/        /*Scope*/ 11, /*->2059*/
/*  2048*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2050*/          OPC_MoveParent,
/*  2051*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_add__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2059*/        0, /*End of Scope*/
/*  2060*/      0, /*End of Scope*/
/*  2061*/    0, /*End of Scope*/
/*  2062*/  /*SwitchOpcode*/ 60|128,3/*444*/, TARGET_VAL(ISD::SELECT),// ->2510
/*  2066*/    OPC_Scope, 29|128,3/*413*/, /*->2482*/ // 2 children in Scope
/*  2069*/      OPC_MoveChild0,
/*  2070*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  2073*/      OPC_Scope, 97, /*->2172*/ // 2 children in Scope
/*  2075*/        OPC_MoveChild0,
/*  2076*/        OPC_CheckOpcode, TARGET_VAL(ISD::SELECT),
/*  2079*/        OPC_MoveChild0,
/*  2080*/        OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  2083*/        OPC_RecordChild0, // #0 = $op1
/*  2084*/        OPC_MoveChild0,
/*  2085*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2087*/        OPC_MoveParent,
/*  2088*/        OPC_CheckChild1Integer, 0|128,0|128,126|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709518848*/, 
/*  2099*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  2101*/        OPC_MoveParent,
/*  2102*/        OPC_CheckChild1Same, 0,
/*  2104*/        OPC_CheckChild2Integer, 0|128,0|128,126|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709518848*/, 
/*  2115*/        OPC_MoveParent,
/*  2116*/        OPC_CheckChild1Integer, 127|128,127|128,1/*32767*/, 
/*  2120*/        OPC_CheckChild2CondCode, ISD::SETLT,
/*  2122*/        OPC_MoveParent,
/*  2123*/        OPC_MoveChild1,
/*  2124*/        OPC_CheckOpcode, TARGET_VAL(ISD::SELECT),
/*  2127*/        OPC_MoveChild0,
/*  2128*/        OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  2131*/        OPC_CheckChild0Same, 0,
/*  2133*/        OPC_CheckChild1Integer, 0|128,0|128,126|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709518848*/, 
/*  2144*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  2146*/        OPC_MoveParent,
/*  2147*/        OPC_CheckChild1Same, 0,
/*  2149*/        OPC_CheckChild2Integer, 0|128,0|128,126|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709518848*/, 
/*  2160*/        OPC_MoveParent,
/*  2161*/        OPC_CheckChild2Integer, 127|128,127|128,1/*32767*/, 
/*  2165*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, -32768:{ *:[i32] }, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, -32768:{ *:[i32] }), 32767:{ *:[i32] }, SETLT:{ *:[Other] }), (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, -32768:{ *:[i32] }, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, -32768:{ *:[i32] }), 32767:{ *:[i32] }) - Complexity = 52
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2172*/      /*Scope*/ 51|128,2/*307*/, /*->2481*/
/*  2174*/        OPC_RecordChild0, // #0 = $op1
/*  2175*/        OPC_MoveChild0,
/*  2176*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2178*/        OPC_Scope, 28, /*->2208*/ // 2 children in Scope
/*  2180*/          OPC_MoveParent,
/*  2181*/          OPC_CheckChild1Integer, 0, 
/*  2183*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2185*/          OPC_MoveParent,
/*  2186*/          OPC_CheckChild1Integer, 0, 
/*  2188*/          OPC_MoveChild2,
/*  2189*/          OPC_CheckOpcode, TARGET_VAL(ISD::SDIV),
/*  2192*/          OPC_RecordChild0, // #1 = $op2
/*  2193*/          OPC_MoveChild0,
/*  2194*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2196*/          OPC_MoveParent,
/*  2197*/          OPC_CheckChild1Same, 0,
/*  2199*/          OPC_MoveParent,
/*  2200*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), 0:{ *:[i32] }, (sdiv:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)) - Complexity = 22
                    // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2208*/        /*Scope*/ 14|128,2/*270*/, /*->2480*/
/*  2210*/          OPC_CheckType, MVT::i32,
/*  2212*/          OPC_MoveParent,
/*  2213*/          OPC_RecordChild1, // #1 = $op1
/*  2214*/          OPC_MoveChild1,
/*  2215*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2217*/          OPC_MoveParent,
/*  2218*/          OPC_Scope, 25, /*->2245*/ // 10 children in Scope
/*  2220*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2222*/            OPC_MoveParent,
/*  2223*/            OPC_RecordChild1, // #2 = $op2
/*  2224*/            OPC_MoveChild1,
/*  2225*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2227*/            OPC_MoveParent,
/*  2228*/            OPC_RecordChild2, // #3 = $op3
/*  2229*/            OPC_MoveChild2,
/*  2230*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2232*/            OPC_MoveParent,
/*  2233*/            OPC_CheckType, MVT::i32,
/*  2235*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_7), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_7:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2245*/          /*Scope*/ 25, /*->2271*/
/*  2246*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  2248*/            OPC_MoveParent,
/*  2249*/            OPC_RecordChild1, // #2 = $op2
/*  2250*/            OPC_MoveChild1,
/*  2251*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2253*/            OPC_MoveParent,
/*  2254*/            OPC_RecordChild2, // #3 = $op3
/*  2255*/            OPC_MoveChild2,
/*  2256*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2258*/            OPC_MoveParent,
/*  2259*/            OPC_CheckType, MVT::i32,
/*  2261*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_8), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_8:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2271*/          /*Scope*/ 25, /*->2297*/
/*  2272*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  2274*/            OPC_MoveParent,
/*  2275*/            OPC_RecordChild1, // #2 = $op2
/*  2276*/            OPC_MoveChild1,
/*  2277*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2279*/            OPC_MoveParent,
/*  2280*/            OPC_RecordChild2, // #3 = $op3
/*  2281*/            OPC_MoveChild2,
/*  2282*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2284*/            OPC_MoveParent,
/*  2285*/            OPC_CheckType, MVT::i32,
/*  2287*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_9), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_9:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2297*/          /*Scope*/ 25, /*->2323*/
/*  2298*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  2300*/            OPC_MoveParent,
/*  2301*/            OPC_RecordChild1, // #2 = $op2
/*  2302*/            OPC_MoveChild1,
/*  2303*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2305*/            OPC_MoveParent,
/*  2306*/            OPC_RecordChild2, // #3 = $op3
/*  2307*/            OPC_MoveChild2,
/*  2308*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2310*/            OPC_MoveParent,
/*  2311*/            OPC_CheckType, MVT::i32,
/*  2313*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_10), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_10:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2323*/          /*Scope*/ 25, /*->2349*/
/*  2324*/            OPC_CheckChild2CondCode, ISD::SETLE,
/*  2326*/            OPC_MoveParent,
/*  2327*/            OPC_RecordChild1, // #2 = $op2
/*  2328*/            OPC_MoveChild1,
/*  2329*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2331*/            OPC_MoveParent,
/*  2332*/            OPC_RecordChild2, // #3 = $op3
/*  2333*/            OPC_MoveChild2,
/*  2334*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2336*/            OPC_MoveParent,
/*  2337*/            OPC_CheckType, MVT::i32,
/*  2339*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_11), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_11:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2349*/          /*Scope*/ 25, /*->2375*/
/*  2350*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  2352*/            OPC_MoveParent,
/*  2353*/            OPC_RecordChild1, // #2 = $op2
/*  2354*/            OPC_MoveChild1,
/*  2355*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2357*/            OPC_MoveParent,
/*  2358*/            OPC_RecordChild2, // #3 = $op3
/*  2359*/            OPC_MoveChild2,
/*  2360*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2362*/            OPC_MoveParent,
/*  2363*/            OPC_CheckType, MVT::i32,
/*  2365*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_12), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_12:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2375*/          /*Scope*/ 25, /*->2401*/
/*  2376*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  2378*/            OPC_MoveParent,
/*  2379*/            OPC_RecordChild1, // #2 = $op2
/*  2380*/            OPC_MoveChild1,
/*  2381*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2383*/            OPC_MoveParent,
/*  2384*/            OPC_RecordChild2, // #3 = $op3
/*  2385*/            OPC_MoveChild2,
/*  2386*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2388*/            OPC_MoveParent,
/*  2389*/            OPC_CheckType, MVT::i32,
/*  2391*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_13), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_13:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2401*/          /*Scope*/ 25, /*->2427*/
/*  2402*/            OPC_CheckChild2CondCode, ISD::SETUGT,
/*  2404*/            OPC_MoveParent,
/*  2405*/            OPC_RecordChild1, // #2 = $op2
/*  2406*/            OPC_MoveChild1,
/*  2407*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2409*/            OPC_MoveParent,
/*  2410*/            OPC_RecordChild2, // #3 = $op3
/*  2411*/            OPC_MoveChild2,
/*  2412*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2414*/            OPC_MoveParent,
/*  2415*/            OPC_CheckType, MVT::i32,
/*  2417*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_14), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_14:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2427*/          /*Scope*/ 25, /*->2453*/
/*  2428*/            OPC_CheckChild2CondCode, ISD::SETULE,
/*  2430*/            OPC_MoveParent,
/*  2431*/            OPC_RecordChild1, // #2 = $op2
/*  2432*/            OPC_MoveChild1,
/*  2433*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2435*/            OPC_MoveParent,
/*  2436*/            OPC_RecordChild2, // #3 = $op3
/*  2437*/            OPC_MoveChild2,
/*  2438*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2440*/            OPC_MoveParent,
/*  2441*/            OPC_CheckType, MVT::i32,
/*  2443*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_15), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_15:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2453*/          /*Scope*/ 25, /*->2479*/
/*  2454*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  2456*/            OPC_MoveParent,
/*  2457*/            OPC_RecordChild1, // #2 = $op2
/*  2458*/            OPC_MoveChild1,
/*  2459*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2461*/            OPC_MoveParent,
/*  2462*/            OPC_RecordChild2, // #3 = $op3
/*  2463*/            OPC_MoveChild2,
/*  2464*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2466*/            OPC_MoveParent,
/*  2467*/            OPC_CheckType, MVT::i32,
/*  2469*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_16), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_16:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2479*/          0, /*End of Scope*/
/*  2480*/        0, /*End of Scope*/
/*  2481*/      0, /*End of Scope*/
/*  2482*/    /*Scope*/ 26, /*->2509*/
/*  2483*/      OPC_RecordChild0, // #0 = $op0
/*  2484*/      OPC_MoveChild0,
/*  2485*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2487*/      OPC_MoveParent,
/*  2488*/      OPC_RecordChild1, // #1 = $op1
/*  2489*/      OPC_MoveChild1,
/*  2490*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2492*/      OPC_MoveParent,
/*  2493*/      OPC_RecordChild2, // #2 = $op2
/*  2494*/      OPC_MoveChild2,
/*  2495*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2497*/      OPC_MoveParent,
/*  2498*/      OPC_CheckType, MVT::i32,
/*  2500*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_17), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (rule_SELECT_17:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2509*/    0, /*End of Scope*/
/*  2510*/  /*SwitchOpcode*/ 5|128,5/*645*/, TARGET_VAL(ISD::STORE),// ->3159
/*  2514*/    OPC_RecordMemRef,
/*  2515*/    OPC_RecordNode, // #0 = 'st' chained node
/*  2516*/    OPC_Scope, 49|128,1/*177*/, /*->2696*/ // 8 children in Scope
/*  2519*/      OPC_CheckChild1Integer, 0, 
/*  2521*/      OPC_Scope, 36, /*->2559*/ // 4 children in Scope
/*  2523*/        OPC_CheckChild1Type, MVT::i8,
/*  2525*/        OPC_MoveChild2,
/*  2526*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  2529*/        OPC_RecordChild0, // #1 = $op0
/*  2530*/        OPC_MoveChild0,
/*  2531*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2533*/        OPC_MoveParent,
/*  2534*/        OPC_RecordChild1, // #2 = $op1
/*  2535*/        OPC_MoveChild1,
/*  2536*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2539*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2541*/        OPC_MoveParent,
/*  2542*/        OPC_MoveParent,
/*  2543*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2545*/        OPC_CheckPredicate, 4, // Predicate_store
/*  2547*/        OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2549*/        OPC_EmitMergeInputChains1_0,
/*  2550*/        OPC_EmitConvertToTarget, 2,
/*  2552*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:{ *:[i8] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  2559*/      /*Scope*/ 36, /*->2596*/
/*  2560*/        OPC_CheckChild1Type, MVT::i16,
/*  2562*/        OPC_MoveChild2,
/*  2563*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  2566*/        OPC_RecordChild0, // #1 = $op0
/*  2567*/        OPC_MoveChild0,
/*  2568*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2570*/        OPC_MoveParent,
/*  2571*/        OPC_RecordChild1, // #2 = $op1
/*  2572*/        OPC_MoveChild1,
/*  2573*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2576*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2578*/        OPC_MoveParent,
/*  2579*/        OPC_MoveParent,
/*  2580*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2582*/        OPC_CheckPredicate, 4, // Predicate_store
/*  2584*/        OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2586*/        OPC_EmitMergeInputChains1_0,
/*  2587*/        OPC_EmitConvertToTarget, 2,
/*  2589*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:{ *:[i16] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                  // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  2596*/      /*Scope*/ 72, /*->2669*/
/*  2597*/        OPC_MoveChild2,
/*  2598*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  2601*/        OPC_RecordChild0, // #1 = $op0
/*  2602*/        OPC_MoveChild0,
/*  2603*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2605*/        OPC_MoveParent,
/*  2606*/        OPC_RecordChild1, // #2 = $op1
/*  2607*/        OPC_MoveChild1,
/*  2608*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2611*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2613*/        OPC_MoveParent,
/*  2614*/        OPC_MoveParent,
/*  2615*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2617*/        OPC_Scope, 14, /*->2633*/ // 2 children in Scope
/*  2619*/          OPC_CheckPredicate, 4, // Predicate_store
/*  2621*/          OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2623*/          OPC_EmitMergeInputChains1_0,
/*  2624*/          OPC_EmitConvertToTarget, 2,
/*  2626*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                    // Dst: (i_store__opc_storew__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  2633*/        /*Scope*/ 34, /*->2668*/
/*  2634*/          OPC_CheckPredicate, 6, // Predicate_truncstore
/*  2636*/          OPC_Scope, 14, /*->2652*/ // 2 children in Scope
/*  2638*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*  2640*/            OPC_CheckPredicate, 5, // Predicate_truncstorei8_a1_s0
/*  2642*/            OPC_EmitMergeInputChains1_0,
/*  2643*/            OPC_EmitConvertToTarget, 2,
/*  2645*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 18
                      // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  2652*/          /*Scope*/ 14, /*->2667*/
/*  2653*/            OPC_CheckPredicate, 8, // Predicate_truncstorei16
/*  2655*/            OPC_CheckPredicate, 5, // Predicate_truncstorei16_a1_s0
/*  2657*/            OPC_EmitMergeInputChains1_0,
/*  2658*/            OPC_EmitConvertToTarget, 2,
/*  2660*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 18
                      // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  2667*/          0, /*End of Scope*/
/*  2668*/        0, /*End of Scope*/
/*  2669*/      /*Scope*/ 25, /*->2695*/
/*  2670*/        OPC_CheckChild1Type, MVT::i8,
/*  2672*/        OPC_RecordChild2, // #1 = $op0
/*  2673*/        OPC_MoveChild2,
/*  2674*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2677*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2679*/        OPC_MoveParent,
/*  2680*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2682*/        OPC_CheckPredicate, 4, // Predicate_store
/*  2684*/        OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2686*/        OPC_EmitMergeInputChains1_0,
/*  2687*/        OPC_EmitConvertToTarget, 1,
/*  2689*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 2, 
                  // Src: (st 0:{ *:[i8] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*  2695*/      0, /*End of Scope*/
/*  2696*/    /*Scope*/ 44, /*->2741*/
/*  2697*/      OPC_RecordChild1, // #1 = $op0
/*  2698*/      OPC_MoveChild1,
/*  2699*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2701*/      OPC_CheckType, MVT::i32,
/*  2703*/      OPC_MoveParent,
/*  2704*/      OPC_MoveChild2,
/*  2705*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  2708*/      OPC_RecordChild0, // #2 = $op1
/*  2709*/      OPC_MoveChild0,
/*  2710*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2712*/      OPC_MoveParent,
/*  2713*/      OPC_RecordChild1, // #3 = $op2
/*  2714*/      OPC_MoveChild1,
/*  2715*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2718*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2720*/      OPC_MoveParent,
/*  2721*/      OPC_MoveParent,
/*  2722*/      OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2724*/      OPC_CheckPredicate, 6, // Predicate_truncstore
/*  2726*/      OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*  2728*/      OPC_CheckPredicate, 5, // Predicate_truncstorei8_a1_s0
/*  2730*/      OPC_EmitMergeInputChains1_0,
/*  2731*/      OPC_EmitConvertToTarget, 3,
/*  2733*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeb__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2741*/    /*Scope*/ 27, /*->2769*/
/*  2742*/      OPC_CheckChild1Integer, 0, 
/*  2744*/      OPC_CheckChild1Type, MVT::i16,
/*  2746*/      OPC_RecordChild2, // #1 = $op0
/*  2747*/      OPC_MoveChild2,
/*  2748*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2751*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2753*/      OPC_MoveParent,
/*  2754*/      OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2756*/      OPC_CheckPredicate, 4, // Predicate_store
/*  2758*/      OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2760*/      OPC_EmitMergeInputChains1_0,
/*  2761*/      OPC_EmitConvertToTarget, 1,
/*  2763*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:{ *:[i16] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeh__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*  2769*/    /*Scope*/ 44, /*->2814*/
/*  2770*/      OPC_RecordChild1, // #1 = $op0
/*  2771*/      OPC_MoveChild1,
/*  2772*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2774*/      OPC_CheckType, MVT::i32,
/*  2776*/      OPC_MoveParent,
/*  2777*/      OPC_MoveChild2,
/*  2778*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  2781*/      OPC_RecordChild0, // #2 = $op1
/*  2782*/      OPC_MoveChild0,
/*  2783*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2785*/      OPC_MoveParent,
/*  2786*/      OPC_RecordChild1, // #3 = $op2
/*  2787*/      OPC_MoveChild1,
/*  2788*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2791*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2793*/      OPC_MoveParent,
/*  2794*/      OPC_MoveParent,
/*  2795*/      OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2797*/      OPC_CheckPredicate, 6, // Predicate_truncstore
/*  2799*/      OPC_CheckPredicate, 8, // Predicate_truncstorei16
/*  2801*/      OPC_CheckPredicate, 5, // Predicate_truncstorei16_a1_s0
/*  2803*/      OPC_EmitMergeInputChains1_0,
/*  2804*/      OPC_EmitConvertToTarget, 3,
/*  2806*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeh__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2814*/    /*Scope*/ 25, /*->2840*/
/*  2815*/      OPC_CheckChild1Integer, 0, 
/*  2817*/      OPC_RecordChild2, // #1 = $op0
/*  2818*/      OPC_MoveChild2,
/*  2819*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2822*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2824*/      OPC_MoveParent,
/*  2825*/      OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2827*/      OPC_CheckPredicate, 4, // Predicate_store
/*  2829*/      OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2831*/      OPC_EmitMergeInputChains1_0,
/*  2832*/      OPC_EmitConvertToTarget, 1,
/*  2834*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storew__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*  2840*/    /*Scope*/ 42, /*->2883*/
/*  2841*/      OPC_RecordChild1, // #1 = $op0
/*  2842*/      OPC_MoveChild1,
/*  2843*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2845*/      OPC_CheckType, MVT::i32,
/*  2847*/      OPC_MoveParent,
/*  2848*/      OPC_MoveChild2,
/*  2849*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  2852*/      OPC_RecordChild0, // #2 = $op1
/*  2853*/      OPC_MoveChild0,
/*  2854*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2856*/      OPC_MoveParent,
/*  2857*/      OPC_RecordChild1, // #3 = $op2
/*  2858*/      OPC_MoveChild1,
/*  2859*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2862*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2864*/      OPC_MoveParent,
/*  2865*/      OPC_MoveParent,
/*  2866*/      OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2868*/      OPC_CheckPredicate, 4, // Predicate_store
/*  2870*/      OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2872*/      OPC_EmitMergeInputChains1_0,
/*  2873*/      OPC_EmitConvertToTarget, 3,
/*  2875*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storew__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2883*/    /*Scope*/ 18|128,1/*146*/, /*->3031*/
/*  2885*/      OPC_CheckChild1Integer, 0, 
/*  2887*/      OPC_Scope, 42, /*->2931*/ // 4 children in Scope
/*  2889*/        OPC_RecordChild2, // #1 = $op0
/*  2890*/        OPC_MoveChild2,
/*  2891*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2894*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  2896*/        OPC_MoveParent,
/*  2897*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2899*/        OPC_CheckPredicate, 6, // Predicate_truncstore
/*  2901*/        OPC_Scope, 13, /*->2916*/ // 2 children in Scope
/*  2903*/          OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*  2905*/          OPC_CheckPredicate, 5, // Predicate_truncstorei8_a1_s0
/*  2907*/          OPC_EmitMergeInputChains1_0,
/*  2908*/          OPC_EmitConvertToTarget, 1,
/*  2910*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 2, 
                    // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 14
                    // Dst: (i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_ (imm:{ *:[i32] }):$op0)
/*  2916*/        /*Scope*/ 13, /*->2930*/
/*  2917*/          OPC_CheckPredicate, 8, // Predicate_truncstorei16
/*  2919*/          OPC_CheckPredicate, 5, // Predicate_truncstorei16_a1_s0
/*  2921*/          OPC_EmitMergeInputChains1_0,
/*  2922*/          OPC_EmitConvertToTarget, 1,
/*  2924*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 2, 
                    // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 14
                    // Dst: (i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_ (imm:{ *:[i32] }):$op0)
/*  2930*/        0, /*End of Scope*/
/*  2931*/      /*Scope*/ 22, /*->2954*/
/*  2932*/        OPC_CheckChild1Type, MVT::i8,
/*  2934*/        OPC_RecordChild2, // #1 = $op0
/*  2935*/        OPC_MoveChild2,
/*  2936*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2938*/        OPC_CheckType, MVT::i32,
/*  2940*/        OPC_MoveParent,
/*  2941*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2943*/        OPC_CheckPredicate, 4, // Predicate_store
/*  2945*/        OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2947*/        OPC_EmitMergeInputChains1_0,
/*  2948*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:{ *:[i8] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*  2954*/      /*Scope*/ 22, /*->2977*/
/*  2955*/        OPC_CheckChild1Type, MVT::i16,
/*  2957*/        OPC_RecordChild2, // #1 = $op0
/*  2958*/        OPC_MoveChild2,
/*  2959*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2961*/        OPC_CheckType, MVT::i32,
/*  2963*/        OPC_MoveParent,
/*  2964*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2966*/        OPC_CheckPredicate, 4, // Predicate_store
/*  2968*/        OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2970*/        OPC_EmitMergeInputChains1_0,
/*  2971*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:{ *:[i16] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                  // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*  2977*/      /*Scope*/ 52, /*->3030*/
/*  2978*/        OPC_RecordChild2, // #1 = $op0
/*  2979*/        OPC_MoveChild2,
/*  2980*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2982*/        OPC_CheckType, MVT::i32,
/*  2984*/        OPC_MoveParent,
/*  2985*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  2987*/        OPC_Scope, 11, /*->3000*/ // 2 children in Scope
/*  2989*/          OPC_CheckPredicate, 4, // Predicate_store
/*  2991*/          OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  2993*/          OPC_EmitMergeInputChains1_0,
/*  2994*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 1, 
                    // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                    // Dst: (i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*  3000*/        /*Scope*/ 28, /*->3029*/
/*  3001*/          OPC_CheckPredicate, 6, // Predicate_truncstore
/*  3003*/          OPC_Scope, 11, /*->3016*/ // 2 children in Scope
/*  3005*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*  3007*/            OPC_CheckPredicate, 5, // Predicate_truncstorei8_a1_s0
/*  3009*/            OPC_EmitMergeInputChains1_0,
/*  3010*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#Ops*/, 1, 
                      // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 11
                      // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0)
/*  3016*/          /*Scope*/ 11, /*->3028*/
/*  3017*/            OPC_CheckPredicate, 8, // Predicate_truncstorei16
/*  3019*/            OPC_CheckPredicate, 5, // Predicate_truncstorei16_a1_s0
/*  3021*/            OPC_EmitMergeInputChains1_0,
/*  3022*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#Ops*/, 1, 
                      // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 11
                      // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0)
/*  3028*/          0, /*End of Scope*/
/*  3029*/        0, /*End of Scope*/
/*  3030*/      0, /*End of Scope*/
/*  3031*/    /*Scope*/ 126, /*->3158*/
/*  3032*/      OPC_RecordChild1, // #1 = $op0
/*  3033*/      OPC_MoveChild1,
/*  3034*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3036*/      OPC_CheckType, MVT::i32,
/*  3038*/      OPC_MoveParent,
/*  3039*/      OPC_RecordChild2, // #2 = $op1
/*  3040*/      OPC_MoveChild2,
/*  3041*/      OPC_Scope, 60, /*->3103*/ // 2 children in Scope
/*  3043*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3046*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  3048*/        OPC_MoveParent,
/*  3049*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  3051*/        OPC_Scope, 34, /*->3087*/ // 2 children in Scope
/*  3053*/          OPC_CheckPredicate, 6, // Predicate_truncstore
/*  3055*/          OPC_Scope, 14, /*->3071*/ // 2 children in Scope
/*  3057*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*  3059*/            OPC_CheckPredicate, 5, // Predicate_truncstorei8_a1_s0
/*  3061*/            OPC_EmitMergeInputChains1_0,
/*  3062*/            OPC_EmitConvertToTarget, 2,
/*  3064*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 10
                      // Dst: (i_store__opc_storeb__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  3071*/          /*Scope*/ 14, /*->3086*/
/*  3072*/            OPC_CheckPredicate, 8, // Predicate_truncstorei16
/*  3074*/            OPC_CheckPredicate, 5, // Predicate_truncstorei16_a1_s0
/*  3076*/            OPC_EmitMergeInputChains1_0,
/*  3077*/            OPC_EmitConvertToTarget, 2,
/*  3079*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 10
                      // Dst: (i_store__opc_storeh__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  3086*/          0, /*End of Scope*/
/*  3087*/        /*Scope*/ 14, /*->3102*/
/*  3088*/          OPC_CheckPredicate, 4, // Predicate_store
/*  3090*/          OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  3092*/          OPC_EmitMergeInputChains1_0,
/*  3093*/          OPC_EmitConvertToTarget, 2,
/*  3095*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                    // Dst: (i_store__opc_storew__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  3102*/        0, /*End of Scope*/
/*  3103*/      /*Scope*/ 53, /*->3157*/
/*  3104*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3106*/        OPC_CheckType, MVT::i32,
/*  3108*/        OPC_MoveParent,
/*  3109*/        OPC_CheckPredicate, 3, // Predicate_unindexedstore
/*  3111*/        OPC_Scope, 30, /*->3143*/ // 2 children in Scope
/*  3113*/          OPC_CheckPredicate, 6, // Predicate_truncstore
/*  3115*/          OPC_Scope, 12, /*->3129*/ // 2 children in Scope
/*  3117*/            OPC_CheckPredicate, 7, // Predicate_truncstorei8
/*  3119*/            OPC_CheckPredicate, 5, // Predicate_truncstorei8_a1_s0
/*  3121*/            OPC_EmitMergeInputChains1_0,
/*  3122*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 7
                      // Dst: (i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*  3129*/          /*Scope*/ 12, /*->3142*/
/*  3130*/            OPC_CheckPredicate, 8, // Predicate_truncstorei16
/*  3132*/            OPC_CheckPredicate, 5, // Predicate_truncstorei16_a1_s0
/*  3134*/            OPC_EmitMergeInputChains1_0,
/*  3135*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 7
                      // Dst: (i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*  3142*/          0, /*End of Scope*/
/*  3143*/        /*Scope*/ 12, /*->3156*/
/*  3144*/          OPC_CheckPredicate, 4, // Predicate_store
/*  3146*/          OPC_CheckPredicate, 5, // Predicate_store_a1_s0
/*  3148*/          OPC_EmitMergeInputChains1_0,
/*  3149*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 2, 
                    // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 7
                    // Dst: (i_store__opc_storew__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*  3156*/        0, /*End of Scope*/
/*  3157*/      0, /*End of Scope*/
/*  3158*/    0, /*End of Scope*/
/*  3159*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::SHL),// ->3221
/*  3162*/    OPC_RecordChild0, // #0 = $op1
/*  3163*/    OPC_MoveChild0,
/*  3164*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3166*/    OPC_MoveParent,
/*  3167*/    OPC_Scope, 17, /*->3186*/ // 2 children in Scope
/*  3169*/      OPC_MoveChild1,
/*  3170*/      OPC_CheckAndImm, 31, 
/*  3172*/      OPC_RecordChild0, // #1 = $op2
/*  3173*/      OPC_MoveChild0,
/*  3174*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3176*/      OPC_MoveParent,
/*  3177*/      OPC_MoveParent,
/*  3178*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3186*/    /*Scope*/ 33, /*->3220*/
/*  3187*/      OPC_RecordChild1, // #1 = $op2
/*  3188*/      OPC_MoveChild1,
/*  3189*/      OPC_Scope, 16, /*->3207*/ // 2 children in Scope
/*  3191*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3194*/        OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*  3196*/        OPC_MoveParent,
/*  3197*/        OPC_EmitConvertToTarget, 1,
/*  3199*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3207*/      /*Scope*/ 11, /*->3219*/
/*  3208*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3210*/        OPC_MoveParent,
/*  3211*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3219*/      0, /*End of Scope*/
/*  3220*/    0, /*End of Scope*/
/*  3221*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::SRA),// ->3283
/*  3224*/    OPC_RecordChild0, // #0 = $op1
/*  3225*/    OPC_MoveChild0,
/*  3226*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3228*/    OPC_MoveParent,
/*  3229*/    OPC_Scope, 17, /*->3248*/ // 2 children in Scope
/*  3231*/      OPC_MoveChild1,
/*  3232*/      OPC_CheckAndImm, 31, 
/*  3234*/      OPC_RecordChild0, // #1 = $op2
/*  3235*/      OPC_MoveChild0,
/*  3236*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3238*/      OPC_MoveParent,
/*  3239*/      OPC_MoveParent,
/*  3240*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3248*/    /*Scope*/ 33, /*->3282*/
/*  3249*/      OPC_RecordChild1, // #1 = $op2
/*  3250*/      OPC_MoveChild1,
/*  3251*/      OPC_Scope, 16, /*->3269*/ // 2 children in Scope
/*  3253*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3256*/        OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*  3258*/        OPC_MoveParent,
/*  3259*/        OPC_EmitConvertToTarget, 1,
/*  3261*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3269*/      /*Scope*/ 11, /*->3281*/
/*  3270*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3272*/        OPC_MoveParent,
/*  3273*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3281*/      0, /*End of Scope*/
/*  3282*/    0, /*End of Scope*/
/*  3283*/  /*SwitchOpcode*/ 69, TARGET_VAL(ISD::SRL),// ->3355
/*  3286*/    OPC_RecordChild0, // #0 = $op1
/*  3287*/    OPC_MoveChild0,
/*  3288*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3290*/    OPC_MoveParent,
/*  3291*/    OPC_Scope, 17, /*->3310*/ // 3 children in Scope
/*  3293*/      OPC_MoveChild1,
/*  3294*/      OPC_CheckAndImm, 31, 
/*  3296*/      OPC_RecordChild0, // #1 = $op2
/*  3297*/      OPC_MoveChild0,
/*  3298*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3300*/      OPC_MoveParent,
/*  3301*/      OPC_MoveParent,
/*  3302*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3310*/    /*Scope*/ 9, /*->3320*/
/*  3311*/      OPC_CheckChild1Integer, 31, 
/*  3313*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 31:{ *:[i32] }) - Complexity = 10
                // Dst: (i_comp_3reg__opc_slt__regs__regs__reg0__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  3320*/    /*Scope*/ 33, /*->3354*/
/*  3321*/      OPC_RecordChild1, // #1 = $op2
/*  3322*/      OPC_MoveChild1,
/*  3323*/      OPC_Scope, 16, /*->3341*/ // 2 children in Scope
/*  3325*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3328*/        OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*  3330*/        OPC_MoveParent,
/*  3331*/        OPC_EmitConvertToTarget, 1,
/*  3333*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3341*/      /*Scope*/ 11, /*->3353*/
/*  3342*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3344*/        OPC_MoveParent,
/*  3345*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3353*/      0, /*End of Scope*/
/*  3354*/    0, /*End of Scope*/
/*  3355*/  /*SwitchOpcode*/ 74|128,4/*586*/, TARGET_VAL(ISD::BRCOND),// ->3945
/*  3359*/    OPC_RecordNode, // #0 = 'brcond' chained node
/*  3360*/    OPC_Scope, 49|128,4/*561*/, /*->3924*/ // 2 children in Scope
/*  3363*/      OPC_MoveChild1,
/*  3364*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  3367*/      OPC_RecordChild0, // #1 = $op0
/*  3368*/      OPC_MoveChild0,
/*  3369*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3371*/      OPC_Scope, 91|128,2/*347*/, /*->3721*/ // 2 children in Scope
/*  3374*/        OPC_MoveParent,
/*  3375*/        OPC_Scope, 114, /*->3491*/ // 4 children in Scope
/*  3377*/          OPC_CheckChild1Integer, 0, 
/*  3379*/          OPC_Scope, 36, /*->3417*/ // 4 children in Scope
/*  3381*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  3383*/            OPC_MoveParent,
/*  3384*/            OPC_RecordChild2, // #2 = $op1
/*  3385*/            OPC_MoveChild2,
/*  3386*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3389*/            OPC_MoveParent,
/*  3390*/            OPC_EmitMergeInputChains1_0,
/*  3391*/            OPC_Scope, 7, /*->3400*/ // 3 children in Scope
/*  3393*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3400*/            /*Scope*/ 7, /*->3408*/
/*  3401*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3408*/            /*Scope*/ 7, /*->3416*/
/*  3409*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3416*/            0, /*End of Scope*/
/*  3417*/          /*Scope*/ 17, /*->3435*/
/*  3418*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  3420*/            OPC_MoveParent,
/*  3421*/            OPC_RecordChild2, // #2 = $op1
/*  3422*/            OPC_MoveChild2,
/*  3423*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3426*/            OPC_MoveParent,
/*  3427*/            OPC_EmitMergeInputChains1_0,
/*  3428*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3435*/          /*Scope*/ 17, /*->3453*/
/*  3436*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  3438*/            OPC_MoveParent,
/*  3439*/            OPC_RecordChild2, // #2 = $op1
/*  3440*/            OPC_MoveChild2,
/*  3441*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3444*/            OPC_MoveParent,
/*  3445*/            OPC_EmitMergeInputChains1_0,
/*  3446*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3453*/          /*Scope*/ 36, /*->3490*/
/*  3454*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  3456*/            OPC_MoveParent,
/*  3457*/            OPC_RecordChild2, // #2 = $op1
/*  3458*/            OPC_MoveChild2,
/*  3459*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3462*/            OPC_MoveParent,
/*  3463*/            OPC_EmitMergeInputChains1_0,
/*  3464*/            OPC_Scope, 7, /*->3473*/ // 3 children in Scope
/*  3466*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3473*/            /*Scope*/ 7, /*->3481*/
/*  3474*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3481*/            /*Scope*/ 7, /*->3489*/
/*  3482*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3489*/            0, /*End of Scope*/
/*  3490*/          0, /*End of Scope*/
/*  3491*/        /*Scope*/ 19, /*->3511*/
/*  3492*/          OPC_CheckChild1Integer, 1, 
/*  3494*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  3496*/          OPC_MoveParent,
/*  3497*/          OPC_RecordChild2, // #2 = $op1
/*  3498*/          OPC_MoveChild2,
/*  3499*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3502*/          OPC_MoveParent,
/*  3503*/          OPC_EmitMergeInputChains1_0,
/*  3504*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 1:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3511*/        /*Scope*/ 28, /*->3540*/
/*  3512*/          OPC_CheckChild1Integer, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*  3523*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  3525*/          OPC_MoveParent,
/*  3526*/          OPC_RecordChild2, // #2 = $op1
/*  3527*/          OPC_MoveChild2,
/*  3528*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3531*/          OPC_MoveParent,
/*  3532*/          OPC_EmitMergeInputChains1_0,
/*  3533*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, -1:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  3540*/        /*Scope*/ 50|128,1/*178*/, /*->3720*/
/*  3542*/          OPC_RecordChild1, // #2 = $op1
/*  3543*/          OPC_MoveChild1,
/*  3544*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3547*/          OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  3549*/          OPC_MoveParent,
/*  3550*/          OPC_Scope, 27, /*->3579*/ // 6 children in Scope
/*  3552*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  3554*/            OPC_MoveParent,
/*  3555*/            OPC_RecordChild2, // #3 = $op2
/*  3556*/            OPC_MoveChild2,
/*  3557*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3560*/            OPC_MoveParent,
/*  3561*/            OPC_EmitMergeInputChains1_0,
/*  3562*/            OPC_EmitConvertToTarget, 2,
/*  3564*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  3572*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  3579*/          /*Scope*/ 27, /*->3607*/
/*  3580*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  3582*/            OPC_MoveParent,
/*  3583*/            OPC_RecordChild2, // #3 = $op2
/*  3584*/            OPC_MoveChild2,
/*  3585*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3588*/            OPC_MoveParent,
/*  3589*/            OPC_EmitMergeInputChains1_0,
/*  3590*/            OPC_EmitConvertToTarget, 2,
/*  3592*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  3600*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  3607*/          /*Scope*/ 27, /*->3635*/
/*  3608*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  3610*/            OPC_MoveParent,
/*  3611*/            OPC_RecordChild2, // #3 = $op2
/*  3612*/            OPC_MoveChild2,
/*  3613*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3616*/            OPC_MoveParent,
/*  3617*/            OPC_EmitMergeInputChains1_0,
/*  3618*/            OPC_EmitConvertToTarget, 2,
/*  3620*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  3628*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  3635*/          /*Scope*/ 27, /*->3663*/
/*  3636*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  3638*/            OPC_MoveParent,
/*  3639*/            OPC_RecordChild2, // #3 = $op2
/*  3640*/            OPC_MoveChild2,
/*  3641*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3644*/            OPC_MoveParent,
/*  3645*/            OPC_EmitMergeInputChains1_0,
/*  3646*/            OPC_EmitConvertToTarget, 2,
/*  3648*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  3656*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  3663*/          /*Scope*/ 27, /*->3691*/
/*  3664*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  3666*/            OPC_MoveParent,
/*  3667*/            OPC_RecordChild2, // #3 = $op2
/*  3668*/            OPC_MoveChild2,
/*  3669*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3672*/            OPC_MoveParent,
/*  3673*/            OPC_EmitMergeInputChains1_0,
/*  3674*/            OPC_EmitConvertToTarget, 2,
/*  3676*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  3684*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  3691*/          /*Scope*/ 27, /*->3719*/
/*  3692*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  3694*/            OPC_MoveParent,
/*  3695*/            OPC_RecordChild2, // #3 = $op2
/*  3696*/            OPC_MoveChild2,
/*  3697*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3700*/            OPC_MoveParent,
/*  3701*/            OPC_EmitMergeInputChains1_0,
/*  3702*/            OPC_EmitConvertToTarget, 2,
/*  3704*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  3712*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  3719*/          0, /*End of Scope*/
/*  3720*/        0, /*End of Scope*/
/*  3721*/      /*Scope*/ 72|128,1/*200*/, /*->3923*/
/*  3723*/        OPC_CheckType, MVT::i32,
/*  3725*/        OPC_MoveParent,
/*  3726*/        OPC_RecordChild1, // #2 = $op1
/*  3727*/        OPC_MoveChild1,
/*  3728*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3730*/        OPC_MoveParent,
/*  3731*/        OPC_Scope, 18, /*->3751*/ // 10 children in Scope
/*  3733*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  3735*/          OPC_MoveParent,
/*  3736*/          OPC_RecordChild2, // #3 = $op2
/*  3737*/          OPC_MoveChild2,
/*  3738*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3741*/          OPC_MoveParent,
/*  3742*/          OPC_EmitMergeInputChains1_0,
/*  3743*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_beq__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3751*/        /*Scope*/ 18, /*->3770*/
/*  3752*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  3754*/          OPC_MoveParent,
/*  3755*/          OPC_RecordChild2, // #3 = $op2
/*  3756*/          OPC_MoveChild2,
/*  3757*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3760*/          OPC_MoveParent,
/*  3761*/          OPC_EmitMergeInputChains1_0,
/*  3762*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3770*/        /*Scope*/ 18, /*->3789*/
/*  3771*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  3773*/          OPC_MoveParent,
/*  3774*/          OPC_RecordChild2, // #3 = $op2
/*  3775*/          OPC_MoveChild2,
/*  3776*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3779*/          OPC_MoveParent,
/*  3780*/          OPC_EmitMergeInputChains1_0,
/*  3781*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3789*/        /*Scope*/ 18, /*->3808*/
/*  3790*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  3792*/          OPC_MoveParent,
/*  3793*/          OPC_RecordChild2, // #3 = $op2
/*  3794*/          OPC_MoveChild2,
/*  3795*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3798*/          OPC_MoveParent,
/*  3799*/          OPC_EmitMergeInputChains1_0,
/*  3800*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3808*/        /*Scope*/ 18, /*->3827*/
/*  3809*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  3811*/          OPC_MoveParent,
/*  3812*/          OPC_RecordChild2, // #3 = $op2
/*  3813*/          OPC_MoveChild2,
/*  3814*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3817*/          OPC_MoveParent,
/*  3818*/          OPC_EmitMergeInputChains1_0,
/*  3819*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3827*/        /*Scope*/ 18, /*->3846*/
/*  3828*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  3830*/          OPC_MoveParent,
/*  3831*/          OPC_RecordChild2, // #3 = $op2
/*  3832*/          OPC_MoveChild2,
/*  3833*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3836*/          OPC_MoveParent,
/*  3837*/          OPC_EmitMergeInputChains1_0,
/*  3838*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bne__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3846*/        /*Scope*/ 18, /*->3865*/
/*  3847*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  3849*/          OPC_MoveParent,
/*  3850*/          OPC_RecordChild2, // #3 = $op2
/*  3851*/          OPC_MoveChild2,
/*  3852*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3855*/          OPC_MoveParent,
/*  3856*/          OPC_EmitMergeInputChains1_0,
/*  3857*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3865*/        /*Scope*/ 18, /*->3884*/
/*  3866*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  3868*/          OPC_MoveParent,
/*  3869*/          OPC_RecordChild2, // #3 = $op2
/*  3870*/          OPC_MoveChild2,
/*  3871*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3874*/          OPC_MoveParent,
/*  3875*/          OPC_EmitMergeInputChains1_0,
/*  3876*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3884*/        /*Scope*/ 18, /*->3903*/
/*  3885*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  3887*/          OPC_MoveParent,
/*  3888*/          OPC_RecordChild2, // #3 = $op2
/*  3889*/          OPC_MoveChild2,
/*  3890*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3893*/          OPC_MoveParent,
/*  3894*/          OPC_EmitMergeInputChains1_0,
/*  3895*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3903*/        /*Scope*/ 18, /*->3922*/
/*  3904*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  3906*/          OPC_MoveParent,
/*  3907*/          OPC_RecordChild2, // #3 = $op2
/*  3908*/          OPC_MoveChild2,
/*  3909*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3912*/          OPC_MoveParent,
/*  3913*/          OPC_EmitMergeInputChains1_0,
/*  3914*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  3922*/        0, /*End of Scope*/
/*  3923*/      0, /*End of Scope*/
/*  3924*/    /*Scope*/ 19, /*->3944*/
/*  3925*/      OPC_RecordChild1, // #1 = $op0
/*  3926*/      OPC_MoveChild1,
/*  3927*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3929*/      OPC_MoveParent,
/*  3930*/      OPC_RecordChild2, // #2 = $op1
/*  3931*/      OPC_MoveChild2,
/*  3932*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3935*/      OPC_MoveParent,
/*  3936*/      OPC_EmitMergeInputChains1_0,
/*  3937*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                    2/*#Ops*/, 1, 2, 
                // Src: (brcond regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1) - Complexity = 4
                // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1)
/*  3944*/    0, /*End of Scope*/
/*  3945*/  /*SwitchOpcode*/ 8|128,3/*392*/, TARGET_VAL(ISD::SETCC),// ->4341
/*  3949*/    OPC_RecordChild0, // #0 = $op1
/*  3950*/    OPC_MoveChild0,
/*  3951*/    OPC_Scope, 34, /*->3987*/ // 2 children in Scope
/*  3953*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3956*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  3958*/      OPC_MoveParent,
/*  3959*/      OPC_CheckChild1Integer, 0, 
/*  3961*/      OPC_Scope, 11, /*->3974*/ // 2 children in Scope
/*  3963*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  3965*/        OPC_EmitConvertToTarget, 0,
/*  3967*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3974*/      /*Scope*/ 11, /*->3986*/
/*  3975*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  3977*/        OPC_EmitConvertToTarget, 0,
/*  3979*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3986*/      0, /*End of Scope*/
/*  3987*/    /*Scope*/ 95|128,2/*351*/, /*->4340*/
/*  3989*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3991*/      OPC_Scope, 41|128,1/*169*/, /*->4163*/ // 2 children in Scope
/*  3994*/        OPC_MoveParent,
/*  3995*/        OPC_Scope, 44, /*->4041*/ // 2 children in Scope
/*  3997*/          OPC_CheckChild1Integer, 0, 
/*  3999*/          OPC_Scope, 9, /*->4010*/ // 4 children in Scope
/*  4001*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  4003*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETEQ:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4010*/          /*Scope*/ 9, /*->4020*/
/*  4011*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  4013*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4020*/          /*Scope*/ 9, /*->4030*/
/*  4021*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  4023*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_slt__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4030*/          /*Scope*/ 9, /*->4040*/
/*  4031*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  4033*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_sltu__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4040*/          0, /*End of Scope*/
/*  4041*/        /*Scope*/ 120, /*->4162*/
/*  4042*/          OPC_RecordChild1, // #1 = $op2
/*  4043*/          OPC_MoveChild1,
/*  4044*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  4047*/          OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  4049*/          OPC_MoveParent,
/*  4050*/          OPC_Scope, 12, /*->4064*/ // 6 children in Scope
/*  4052*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  4054*/            OPC_EmitConvertToTarget, 1,
/*  4056*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETLT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4064*/          /*Scope*/ 12, /*->4077*/
/*  4065*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  4067*/            OPC_EmitConvertToTarget, 1,
/*  4069*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETULT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4077*/          /*Scope*/ 19, /*->4097*/
/*  4078*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  4080*/            OPC_EmitConvertToTarget, 1,
/*  4082*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  4090*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  4097*/          /*Scope*/ 19, /*->4117*/
/*  4098*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  4100*/            OPC_EmitConvertToTarget, 1,
/*  4102*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  4110*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  4117*/          /*Scope*/ 19, /*->4137*/
/*  4118*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  4120*/            OPC_EmitConvertToTarget, 1,
/*  4122*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  4130*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  4137*/          /*Scope*/ 23, /*->4161*/
/*  4138*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  4140*/            OPC_EmitConvertToTarget, 1,
/*  4142*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  4150*/            OPC_EmitInteger, MVT::i32, 1, 
/*  4153*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), 1:{ *:[i32] })
/*  4161*/          0, /*End of Scope*/
/*  4162*/        0, /*End of Scope*/
/*  4163*/      /*Scope*/ 46|128,1/*174*/, /*->4339*/
/*  4165*/        OPC_CheckType, MVT::i32,
/*  4167*/        OPC_MoveParent,
/*  4168*/        OPC_RecordChild1, // #1 = $op2
/*  4169*/        OPC_MoveChild1,
/*  4170*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  4172*/        OPC_MoveParent,
/*  4173*/        OPC_Scope, 10, /*->4185*/ // 10 children in Scope
/*  4175*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  4177*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETLT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  4185*/        /*Scope*/ 10, /*->4196*/
/*  4186*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  4188*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETULT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  4196*/        /*Scope*/ 10, /*->4207*/
/*  4197*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  4199*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  4207*/        /*Scope*/ 10, /*->4218*/
/*  4208*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  4210*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETUGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  4218*/        /*Scope*/ 17, /*->4236*/
/*  4219*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  4221*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  4229*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  4236*/        /*Scope*/ 17, /*->4254*/
/*  4237*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  4239*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  4247*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  4254*/        /*Scope*/ 17, /*->4272*/
/*  4255*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  4257*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  4265*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  4272*/        /*Scope*/ 21, /*->4294*/
/*  4273*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  4275*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  4283*/          OPC_EmitInteger, MVT::i32, 1, 
/*  4286*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  4294*/        /*Scope*/ 21, /*->4316*/
/*  4295*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  4297*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  4305*/          OPC_EmitInteger, MVT::i32, 1, 
/*  4308*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1), 1:{ *:[i32] })
/*  4316*/        /*Scope*/ 21, /*->4338*/
/*  4317*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  4319*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  4327*/          OPC_EmitInteger, MVT::i32, 1, 
/*  4330*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  4338*/        0, /*End of Scope*/
/*  4339*/      0, /*End of Scope*/
/*  4340*/    0, /*End of Scope*/
/*  4341*/  /*SwitchOpcode*/ 101|128,3/*485*/, TARGET_VAL(ISD::LOAD),// ->4830
/*  4345*/    OPC_RecordMemRef,
/*  4346*/    OPC_RecordNode, // #0 = 'ld' chained node
/*  4347*/    OPC_Scope, 45|128,1/*173*/, /*->4523*/ // 2 children in Scope
/*  4350*/      OPC_MoveChild1,
/*  4351*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  4354*/      OPC_RecordChild0, // #1 = $op1
/*  4355*/      OPC_MoveChild0,
/*  4356*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  4358*/      OPC_MoveParent,
/*  4359*/      OPC_RecordChild1, // #2 = $op2
/*  4360*/      OPC_MoveChild1,
/*  4361*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  4364*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  4366*/      OPC_MoveParent,
/*  4367*/      OPC_MoveParent,
/*  4368*/      OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  4370*/      OPC_CheckType, MVT::i32,
/*  4372*/      OPC_Scope, 17, /*->4391*/ // 6 children in Scope
/*  4374*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*  4376*/        OPC_CheckPredicate, 7, // Predicate_sextloadi8
/*  4378*/        OPC_CheckPredicate, 5, // Predicate_sextloadi8_a1_s0
/*  4380*/        OPC_EmitMergeInputChains1_0,
/*  4381*/        OPC_EmitConvertToTarget, 2,
/*  4383*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4391*/      /*Scope*/ 17, /*->4409*/
/*  4392*/        OPC_CheckPredicate, 12, // Predicate_zextload
/*  4394*/        OPC_CheckPredicate, 7, // Predicate_zextloadi8
/*  4396*/        OPC_CheckPredicate, 5, // Predicate_zextloadi8_a1_s0
/*  4398*/        OPC_EmitMergeInputChains1_0,
/*  4399*/        OPC_EmitConvertToTarget, 2,
/*  4401*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4409*/      /*Scope*/ 17, /*->4427*/
/*  4410*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*  4412*/        OPC_CheckPredicate, 8, // Predicate_sextloadi16
/*  4414*/        OPC_CheckPredicate, 5, // Predicate_sextloadi16_a1_s0
/*  4416*/        OPC_EmitMergeInputChains1_0,
/*  4417*/        OPC_EmitConvertToTarget, 2,
/*  4419*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4427*/      /*Scope*/ 17, /*->4445*/
/*  4428*/        OPC_CheckPredicate, 12, // Predicate_zextload
/*  4430*/        OPC_CheckPredicate, 8, // Predicate_zextloadi16
/*  4432*/        OPC_CheckPredicate, 5, // Predicate_zextloadi16_a1_s0
/*  4434*/        OPC_EmitMergeInputChains1_0,
/*  4435*/        OPC_EmitConvertToTarget, 2,
/*  4437*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4445*/      /*Scope*/ 15, /*->4461*/
/*  4446*/        OPC_CheckPredicate, 13, // Predicate_load
/*  4448*/        OPC_CheckPredicate, 5, // Predicate_load_a1_s0
/*  4450*/        OPC_EmitMergeInputChains1_0,
/*  4451*/        OPC_EmitConvertToTarget, 2,
/*  4453*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4461*/      /*Scope*/ 60, /*->4522*/
/*  4462*/        OPC_CheckPredicate, 14, // Predicate_extload
/*  4464*/        OPC_Scope, 27, /*->4493*/ // 2 children in Scope
/*  4466*/          OPC_CheckPredicate, 7, // Predicate_extloadi8
/*  4468*/          OPC_CheckPredicate, 5, // Predicate_extloadi8_a1_s0
/*  4470*/          OPC_EmitMergeInputChains1_0,
/*  4471*/          OPC_EmitConvertToTarget, 2,
/*  4473*/          OPC_Scope, 8, /*->4483*/ // 2 children in Scope
/*  4475*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4483*/          /*Scope*/ 8, /*->4492*/
/*  4484*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4492*/          0, /*End of Scope*/
/*  4493*/        /*Scope*/ 27, /*->4521*/
/*  4494*/          OPC_CheckPredicate, 8, // Predicate_extloadi16
/*  4496*/          OPC_CheckPredicate, 5, // Predicate_extloadi16_a1_s0
/*  4498*/          OPC_EmitMergeInputChains1_0,
/*  4499*/          OPC_EmitConvertToTarget, 2,
/*  4501*/          OPC_Scope, 8, /*->4511*/ // 2 children in Scope
/*  4503*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4511*/          /*Scope*/ 8, /*->4520*/
/*  4512*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  4520*/          0, /*End of Scope*/
/*  4521*/        0, /*End of Scope*/
/*  4522*/      0, /*End of Scope*/
/*  4523*/    /*Scope*/ 48|128,2/*304*/, /*->4829*/
/*  4525*/      OPC_RecordChild1, // #1 = $op1
/*  4526*/      OPC_MoveChild1,
/*  4527*/      OPC_Scope, 24|128,1/*152*/, /*->4682*/ // 2 children in Scope
/*  4530*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  4533*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  4535*/        OPC_MoveParent,
/*  4536*/        OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  4538*/        OPC_CheckType, MVT::i32,
/*  4540*/        OPC_Scope, 16, /*->4558*/ // 6 children in Scope
/*  4542*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  4544*/          OPC_CheckPredicate, 7, // Predicate_sextloadi8
/*  4546*/          OPC_CheckPredicate, 5, // Predicate_sextloadi8_a1_s0
/*  4548*/          OPC_EmitMergeInputChains1_0,
/*  4549*/          OPC_EmitConvertToTarget, 1,
/*  4551*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4558*/        /*Scope*/ 16, /*->4575*/
/*  4559*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  4561*/          OPC_CheckPredicate, 7, // Predicate_zextloadi8
/*  4563*/          OPC_CheckPredicate, 5, // Predicate_zextloadi8_a1_s0
/*  4565*/          OPC_EmitMergeInputChains1_0,
/*  4566*/          OPC_EmitConvertToTarget, 1,
/*  4568*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4575*/        /*Scope*/ 16, /*->4592*/
/*  4576*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  4578*/          OPC_CheckPredicate, 8, // Predicate_sextloadi16
/*  4580*/          OPC_CheckPredicate, 5, // Predicate_sextloadi16_a1_s0
/*  4582*/          OPC_EmitMergeInputChains1_0,
/*  4583*/          OPC_EmitConvertToTarget, 1,
/*  4585*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4592*/        /*Scope*/ 16, /*->4609*/
/*  4593*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  4595*/          OPC_CheckPredicate, 8, // Predicate_zextloadi16
/*  4597*/          OPC_CheckPredicate, 5, // Predicate_zextloadi16_a1_s0
/*  4599*/          OPC_EmitMergeInputChains1_0,
/*  4600*/          OPC_EmitConvertToTarget, 1,
/*  4602*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4609*/        /*Scope*/ 14, /*->4624*/
/*  4610*/          OPC_CheckPredicate, 13, // Predicate_load
/*  4612*/          OPC_CheckPredicate, 5, // Predicate_load_a1_s0
/*  4614*/          OPC_EmitMergeInputChains1_0,
/*  4615*/          OPC_EmitConvertToTarget, 1,
/*  4617*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4624*/        /*Scope*/ 56, /*->4681*/
/*  4625*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  4627*/          OPC_Scope, 25, /*->4654*/ // 2 children in Scope
/*  4629*/            OPC_CheckPredicate, 7, // Predicate_extloadi8
/*  4631*/            OPC_CheckPredicate, 5, // Predicate_extloadi8_a1_s0
/*  4633*/            OPC_EmitMergeInputChains1_0,
/*  4634*/            OPC_EmitConvertToTarget, 1,
/*  4636*/            OPC_Scope, 7, /*->4645*/ // 2 children in Scope
/*  4638*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4645*/            /*Scope*/ 7, /*->4653*/
/*  4646*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4653*/            0, /*End of Scope*/
/*  4654*/          /*Scope*/ 25, /*->4680*/
/*  4655*/            OPC_CheckPredicate, 8, // Predicate_extloadi16
/*  4657*/            OPC_CheckPredicate, 5, // Predicate_extloadi16_a1_s0
/*  4659*/            OPC_EmitMergeInputChains1_0,
/*  4660*/            OPC_EmitConvertToTarget, 1,
/*  4662*/            OPC_Scope, 7, /*->4671*/ // 2 children in Scope
/*  4664*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4671*/            /*Scope*/ 7, /*->4679*/
/*  4672*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  4679*/            0, /*End of Scope*/
/*  4680*/          0, /*End of Scope*/
/*  4681*/        0, /*End of Scope*/
/*  4682*/      /*Scope*/ 16|128,1/*144*/, /*->4828*/
/*  4684*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  4686*/        OPC_CheckType, MVT::i32,
/*  4688*/        OPC_MoveParent,
/*  4689*/        OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  4691*/        OPC_CheckType, MVT::i32,
/*  4693*/        OPC_Scope, 14, /*->4709*/ // 9 children in Scope
/*  4695*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  4697*/          OPC_CheckPredicate, 7, // Predicate_sextloadi8
/*  4699*/          OPC_CheckPredicate, 5, // Predicate_sextloadi8_a1_s0
/*  4701*/          OPC_EmitMergeInputChains1_0,
/*  4702*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4709*/        /*Scope*/ 14, /*->4724*/
/*  4710*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  4712*/          OPC_CheckPredicate, 7, // Predicate_extloadi8
/*  4714*/          OPC_CheckPredicate, 5, // Predicate_extloadi8_a1_s0
/*  4716*/          OPC_EmitMergeInputChains1_0,
/*  4717*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4724*/        /*Scope*/ 14, /*->4739*/
/*  4725*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  4727*/          OPC_CheckPredicate, 7, // Predicate_zextloadi8
/*  4729*/          OPC_CheckPredicate, 5, // Predicate_zextloadi8_a1_s0
/*  4731*/          OPC_EmitMergeInputChains1_0,
/*  4732*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4739*/        /*Scope*/ 14, /*->4754*/
/*  4740*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  4742*/          OPC_CheckPredicate, 7, // Predicate_extloadi8
/*  4744*/          OPC_CheckPredicate, 5, // Predicate_extloadi8_a1_s0
/*  4746*/          OPC_EmitMergeInputChains1_0,
/*  4747*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4754*/        /*Scope*/ 14, /*->4769*/
/*  4755*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  4757*/          OPC_CheckPredicate, 8, // Predicate_sextloadi16
/*  4759*/          OPC_CheckPredicate, 5, // Predicate_sextloadi16_a1_s0
/*  4761*/          OPC_EmitMergeInputChains1_0,
/*  4762*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4769*/        /*Scope*/ 14, /*->4784*/
/*  4770*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  4772*/          OPC_CheckPredicate, 8, // Predicate_extloadi16
/*  4774*/          OPC_CheckPredicate, 5, // Predicate_extloadi16_a1_s0
/*  4776*/          OPC_EmitMergeInputChains1_0,
/*  4777*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4784*/        /*Scope*/ 14, /*->4799*/
/*  4785*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  4787*/          OPC_CheckPredicate, 8, // Predicate_zextloadi16
/*  4789*/          OPC_CheckPredicate, 5, // Predicate_zextloadi16_a1_s0
/*  4791*/          OPC_EmitMergeInputChains1_0,
/*  4792*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4799*/        /*Scope*/ 14, /*->4814*/
/*  4800*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  4802*/          OPC_CheckPredicate, 8, // Predicate_extloadi16
/*  4804*/          OPC_CheckPredicate, 5, // Predicate_extloadi16_a1_s0
/*  4806*/          OPC_EmitMergeInputChains1_0,
/*  4807*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4814*/        /*Scope*/ 12, /*->4827*/
/*  4815*/          OPC_CheckPredicate, 13, // Predicate_load
/*  4817*/          OPC_CheckPredicate, 5, // Predicate_load_a1_s0
/*  4819*/          OPC_EmitMergeInputChains1_0,
/*  4820*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4827*/        0, /*End of Scope*/
/*  4828*/      0, /*End of Scope*/
/*  4829*/    0, /*End of Scope*/
/*  4830*/  /*SwitchOpcode*/ 9|128,2/*265*/, TARGET_VAL(CodasipISD::TailCall),// ->5099
/*  4834*/    OPC_RecordNode, // #0 = 'TailCall' chained node
/*  4835*/    OPC_CaptureGlueInput,
/*  4836*/    OPC_Scope, 116|128,1/*244*/, /*->5083*/ // 2 children in Scope
/*  4839*/      OPC_MoveChild1,
/*  4840*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  4843*/      OPC_RecordChild0, // #1 = $op0
/*  4844*/      OPC_MoveChild0,
/*  4845*/      OPC_SwitchOpcode /*4 cases */, 56, TARGET_VAL(ISD::TargetGlobalAddress),// ->4905
/*  4849*/        OPC_MoveParent,
/*  4850*/        OPC_CheckType, MVT::i32,
/*  4852*/        OPC_MoveParent,
/*  4853*/        OPC_EmitMergeInputChains1_0,
/*  4854*/        OPC_Scope, 6, /*->4862*/ // 7 children in Scope
/*  4856*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  4862*/        /*Scope*/ 6, /*->4869*/
/*  4863*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  4869*/        /*Scope*/ 6, /*->4876*/
/*  4870*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  4876*/        /*Scope*/ 6, /*->4883*/
/*  4877*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  4883*/        /*Scope*/ 6, /*->4890*/
/*  4884*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  4890*/        /*Scope*/ 6, /*->4897*/
/*  4891*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  4897*/        /*Scope*/ 6, /*->4904*/
/*  4898*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  4904*/        0, /*End of Scope*/
/*  4905*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetExternalSymbol),// ->4964
/*  4908*/        OPC_MoveParent,
/*  4909*/        OPC_CheckType, MVT::i32,
/*  4911*/        OPC_MoveParent,
/*  4912*/        OPC_EmitMergeInputChains1_0,
/*  4913*/        OPC_Scope, 6, /*->4921*/ // 7 children in Scope
/*  4915*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  4921*/        /*Scope*/ 6, /*->4928*/
/*  4922*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  4928*/        /*Scope*/ 6, /*->4935*/
/*  4929*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  4935*/        /*Scope*/ 6, /*->4942*/
/*  4936*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  4942*/        /*Scope*/ 6, /*->4949*/
/*  4943*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  4949*/        /*Scope*/ 6, /*->4956*/
/*  4950*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  4956*/        /*Scope*/ 6, /*->4963*/
/*  4957*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  4963*/        0, /*End of Scope*/
/*  4964*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::MCSymbol),// ->5023
/*  4967*/        OPC_MoveParent,
/*  4968*/        OPC_CheckType, MVT::i32,
/*  4970*/        OPC_MoveParent,
/*  4971*/        OPC_EmitMergeInputChains1_0,
/*  4972*/        OPC_Scope, 6, /*->4980*/ // 7 children in Scope
/*  4974*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  4980*/        /*Scope*/ 6, /*->4987*/
/*  4981*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  4987*/        /*Scope*/ 6, /*->4994*/
/*  4988*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  4994*/        /*Scope*/ 6, /*->5001*/
/*  4995*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  5001*/        /*Scope*/ 6, /*->5008*/
/*  5002*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  5008*/        /*Scope*/ 6, /*->5015*/
/*  5009*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  5015*/        /*Scope*/ 6, /*->5022*/
/*  5016*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  5022*/        0, /*End of Scope*/
/*  5023*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetBlockAddress),// ->5082
/*  5026*/        OPC_MoveParent,
/*  5027*/        OPC_CheckType, MVT::i32,
/*  5029*/        OPC_MoveParent,
/*  5030*/        OPC_EmitMergeInputChains1_0,
/*  5031*/        OPC_Scope, 6, /*->5039*/ // 7 children in Scope
/*  5033*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  5039*/        /*Scope*/ 6, /*->5046*/
/*  5040*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  5046*/        /*Scope*/ 6, /*->5053*/
/*  5047*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  5053*/        /*Scope*/ 6, /*->5060*/
/*  5054*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  5060*/        /*Scope*/ 6, /*->5067*/
/*  5061*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  5067*/        /*Scope*/ 6, /*->5074*/
/*  5068*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  5074*/        /*Scope*/ 6, /*->5081*/
/*  5075*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  5081*/        0, /*End of Scope*/
/*  5082*/      0, // EndSwitchOpcode
/*  5083*/    /*Scope*/ 14, /*->5098*/
/*  5084*/      OPC_RecordChild1, // #1 = $op0
/*  5085*/      OPC_MoveChild1,
/*  5086*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5088*/      OPC_CheckType, MVT::i32,
/*  5090*/      OPC_MoveParent,
/*  5091*/      OPC_EmitMergeInputChains1_0,
/*  5092*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                    1/*#Ops*/, 1, 
                // Src: (TailCall regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_jump_reg_alias__regs__TAILCALL_CLONE_ regs:{ *:[i32] }:$op0)
/*  5098*/    0, /*End of Scope*/
/*  5099*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::INTRINSIC_W_CHAIN),// ->5124
/*  5102*/    OPC_RecordNode, // #0 = 'intrinsic_w_chain' chained node
/*  5103*/    OPC_CheckChild1Integer, 17|128,1/*145*/, 
/*  5106*/    OPC_RecordChild2, // #1 = $op1
/*  5107*/    OPC_RecordChild3, // #2 = $op2
/*  5108*/    OPC_MoveChild3,
/*  5109*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  5112*/    OPC_MoveParent,
/*  5113*/    OPC_EmitMergeInputChains1_0,
/*  5114*/    OPC_EmitConvertToTarget, 2,
/*  5116*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::hwloop_loop_decrement_reg), 0|OPFL_Chain,
                  MVT::i32, 2/*#Ops*/, 1, 3, 
              // Src: (intrinsic_w_chain:{ *:[i32] } 145:{ *:[iPTR] }, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2) - Complexity = 11
              // Dst: (hwloop_loop_decrement_reg:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  5124*/  /*SwitchOpcode*/ 89, TARGET_VAL(CodasipISD::Call),// ->5216
/*  5127*/    OPC_RecordNode, // #0 = 'Call' chained node
/*  5128*/    OPC_CaptureGlueInput,
/*  5129*/    OPC_Scope, 68, /*->5199*/ // 2 children in Scope
/*  5131*/      OPC_MoveChild1,
/*  5132*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  5135*/      OPC_RecordChild0, // #1 = $op0
/*  5136*/      OPC_MoveChild0,
/*  5137*/      OPC_SwitchOpcode /*4 cases */, 12, TARGET_VAL(ISD::TargetGlobalAddress),// ->5153
/*  5141*/        OPC_MoveParent,
/*  5142*/        OPC_CheckType, MVT::i32,
/*  5144*/        OPC_MoveParent,
/*  5145*/        OPC_EmitMergeInputChains1_0,
/*  5146*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)
/*  5153*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetExternalSymbol),// ->5168
/*  5156*/        OPC_MoveParent,
/*  5157*/        OPC_CheckType, MVT::i32,
/*  5159*/        OPC_MoveParent,
/*  5160*/        OPC_EmitMergeInputChains1_0,
/*  5161*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)
/*  5168*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::MCSymbol),// ->5183
/*  5171*/        OPC_MoveParent,
/*  5172*/        OPC_CheckType, MVT::i32,
/*  5174*/        OPC_MoveParent,
/*  5175*/        OPC_EmitMergeInputChains1_0,
/*  5176*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)
/*  5183*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetBlockAddress),// ->5198
/*  5186*/        OPC_MoveParent,
/*  5187*/        OPC_CheckType, MVT::i32,
/*  5189*/        OPC_MoveParent,
/*  5190*/        OPC_EmitMergeInputChains1_0,
/*  5191*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)
/*  5198*/      0, // EndSwitchOpcode
/*  5199*/    /*Scope*/ 15, /*->5215*/
/*  5200*/      OPC_RecordChild1, // #1 = $op0
/*  5201*/      OPC_MoveChild1,
/*  5202*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5204*/      OPC_CheckType, MVT::i32,
/*  5206*/      OPC_MoveParent,
/*  5207*/      OPC_EmitMergeInputChains1_0,
/*  5208*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__regs__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    MVT::i32, 1/*#Ops*/, 1, 
                // Src: (Call regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_call_reg_alias__regs__:{ *:[i32] } regs:{ *:[i32] }:$op0)
/*  5215*/    0, /*End of Scope*/
/*  5216*/  /*SwitchOpcode*/ 47, TARGET_VAL(ISD::SUB),// ->5266
/*  5219*/    OPC_Scope, 25, /*->5246*/ // 2 children in Scope
/*  5221*/      OPC_CheckChild0Integer, 0, 
/*  5223*/      OPC_RecordChild1, // #0 = $op1
/*  5224*/      OPC_MoveChild1,
/*  5225*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5227*/      OPC_MoveParent,
/*  5228*/      OPC_Scope, 7, /*->5237*/ // 2 children in Scope
/*  5230*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  5237*/      /*Scope*/ 7, /*->5245*/
/*  5238*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_neg_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  5245*/      0, /*End of Scope*/
/*  5246*/    /*Scope*/ 18, /*->5265*/
/*  5247*/      OPC_RecordChild0, // #0 = $op1
/*  5248*/      OPC_MoveChild0,
/*  5249*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5251*/      OPC_MoveParent,
/*  5252*/      OPC_RecordChild1, // #1 = $op2
/*  5253*/      OPC_MoveChild1,
/*  5254*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5256*/      OPC_MoveParent,
/*  5257*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sub:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_sub__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  5265*/    0, /*End of Scope*/
/*  5266*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::AND),// ->5307
/*  5269*/    OPC_RecordChild0, // #0 = $op1
/*  5270*/    OPC_MoveChild0,
/*  5271*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5273*/    OPC_MoveParent,
/*  5274*/    OPC_RecordChild1, // #1 = $op2
/*  5275*/    OPC_MoveChild1,
/*  5276*/    OPC_Scope, 16, /*->5294*/ // 2 children in Scope
/*  5278*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  5281*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  5283*/      OPC_MoveParent,
/*  5284*/      OPC_EmitConvertToTarget, 1,
/*  5286*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  5294*/    /*Scope*/ 11, /*->5306*/
/*  5295*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5297*/      OPC_MoveParent,
/*  5298*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_and__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  5306*/    0, /*End of Scope*/
/*  5307*/  /*SwitchOpcode*/ 50, TARGET_VAL(ISD::OR),// ->5360
/*  5310*/    OPC_RecordChild0, // #0 = $op1
/*  5311*/    OPC_MoveChild0,
/*  5312*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5314*/    OPC_MoveParent,
/*  5315*/    OPC_RecordChild1, // #1 = $op2
/*  5316*/    OPC_MoveChild1,
/*  5317*/    OPC_Scope, 28, /*->5347*/ // 2 children in Scope
/*  5319*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  5322*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  5324*/      OPC_MoveParent,
/*  5325*/      OPC_EmitConvertToTarget, 1,
/*  5327*/      OPC_Scope, 8, /*->5337*/ // 2 children in Scope
/*  5329*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  5337*/      /*Scope*/ 8, /*->5346*/
/*  5338*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_ori_emulation_alias__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  5346*/      0, /*End of Scope*/
/*  5347*/    /*Scope*/ 11, /*->5359*/
/*  5348*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5350*/      OPC_MoveParent,
/*  5351*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_or__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  5359*/    0, /*End of Scope*/
/*  5360*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::XOR),// ->5401
/*  5363*/    OPC_RecordChild0, // #0 = $op1
/*  5364*/    OPC_MoveChild0,
/*  5365*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5367*/    OPC_MoveParent,
/*  5368*/    OPC_RecordChild1, // #1 = $op2
/*  5369*/    OPC_MoveChild1,
/*  5370*/    OPC_Scope, 16, /*->5388*/ // 2 children in Scope
/*  5372*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  5375*/      OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  5377*/      OPC_MoveParent,
/*  5378*/      OPC_EmitConvertToTarget, 1,
/*  5380*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  5388*/    /*Scope*/ 11, /*->5400*/
/*  5389*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5391*/      OPC_MoveParent,
/*  5392*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  5400*/    0, /*End of Scope*/
/*  5401*/  /*SwitchOpcode*/ 21, TARGET_VAL(ISD::CALLSEQ_START),// ->5425
/*  5404*/    OPC_RecordNode, // #0 = 'callseq_start' chained node
/*  5405*/    OPC_RecordChild1, // #1 = $InSize
/*  5406*/    OPC_MoveChild1,
/*  5407*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  5410*/    OPC_MoveParent,
/*  5411*/    OPC_RecordChild2, // #2 = $OutSize
/*  5412*/    OPC_MoveChild2,
/*  5413*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  5416*/    OPC_MoveParent,
/*  5417*/    OPC_EmitMergeInputChains1_0,
/*  5418*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLSTART), 0|OPFL_Chain|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_start (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLSTART (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  5425*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::CALLSEQ_END),// ->5450
/*  5428*/    OPC_RecordNode, // #0 = 'callseq_end' chained node
/*  5429*/    OPC_CaptureGlueInput,
/*  5430*/    OPC_RecordChild1, // #1 = $InSize
/*  5431*/    OPC_MoveChild1,
/*  5432*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  5435*/    OPC_MoveParent,
/*  5436*/    OPC_RecordChild2, // #2 = $OutSize
/*  5437*/    OPC_MoveChild2,
/*  5438*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  5441*/    OPC_MoveParent,
/*  5442*/    OPC_EmitMergeInputChains1_0,
/*  5443*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLEND), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_end (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLEND (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  5450*/  /*SwitchOpcode*/ 12, TARGET_VAL(ISD::INTRINSIC_VOID),// ->5465
/*  5453*/    OPC_RecordNode, // #0 = 'intrinsic_void' chained node
/*  5454*/    OPC_CheckChild1Integer, 101|128,1/*229*/, 
/*  5457*/    OPC_RecordChild2, // #1 = $op0
/*  5458*/    OPC_EmitMergeInputChains1_0,
/*  5459*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::hwloop_set_loop_iterations), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (intrinsic_void 229:{ *:[iPTR] }, regs:{ *:[i32] }:$op0) - Complexity = 8
              // Dst: (hwloop_set_loop_iterations regs:{ *:[i32] }:$op0)
/*  5465*/  /*SwitchOpcode*/ 109|128,1/*237*/, TARGET_VAL(ISD::Constant),// ->5706
/*  5469*/    OPC_Scope, 109, /*->5580*/ // 5 children in Scope
/*  5471*/      OPC_CheckInteger, 0, 
/*  5473*/      OPC_Scope, 6, /*->5481*/ // 15 children in Scope
/*  5475*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_mv_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_mv_alias__regs__reg0__:{ *:[i32] })
/*  5481*/      /*Scope*/ 6, /*->5488*/
/*  5482*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_snez_alias__regs__reg0__:{ *:[i32] })
/*  5488*/      /*Scope*/ 6, /*->5495*/
/*  5489*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_add__regs__reg0__reg0__:{ *:[i32] })
/*  5495*/      /*Scope*/ 6, /*->5502*/
/*  5496*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_and__regs__reg0__reg0__:{ *:[i32] })
/*  5502*/      /*Scope*/ 6, /*->5509*/
/*  5503*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_or__regs__reg0__reg0__:{ *:[i32] })
/*  5509*/      /*Scope*/ 6, /*->5516*/
/*  5510*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__reg0__reg0__:{ *:[i32] })
/*  5516*/      /*Scope*/ 6, /*->5523*/
/*  5517*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_slt__regs__reg0__reg0__:{ *:[i32] })
/*  5523*/      /*Scope*/ 6, /*->5530*/
/*  5524*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sltu__regs__reg0__reg0__:{ *:[i32] })
/*  5530*/      /*Scope*/ 6, /*->5537*/
/*  5531*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__reg0__reg0__:{ *:[i32] })
/*  5537*/      /*Scope*/ 6, /*->5544*/
/*  5538*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__reg0__reg0__:{ *:[i32] })
/*  5544*/      /*Scope*/ 6, /*->5551*/
/*  5545*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__reg0__:{ *:[i32] })
/*  5551*/      /*Scope*/ 6, /*->5558*/
/*  5552*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_xor__regs__reg0__reg0__:{ *:[i32] })
/*  5558*/      /*Scope*/ 6, /*->5565*/
/*  5559*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_neg_alias__regs__reg0__:{ *:[i32] })
/*  5565*/      /*Scope*/ 6, /*->5572*/
/*  5566*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  5572*/      /*Scope*/ 6, /*->5579*/
/*  5573*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  5579*/      0, /*End of Scope*/
/*  5580*/    /*Scope*/ 25, /*->5606*/
/*  5581*/      OPC_CheckInteger, 1, 
/*  5583*/      OPC_Scope, 6, /*->5591*/ // 3 children in Scope
/*  5585*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 7
                  // Dst: (i_seqz_alias__regs__reg0__:{ *:[i32] })
/*  5591*/      /*Scope*/ 6, /*->5598*/
/*  5592*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  5598*/      /*Scope*/ 6, /*->5605*/
/*  5599*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  5605*/      0, /*End of Scope*/
/*  5606*/    /*Scope*/ 46, /*->5653*/
/*  5607*/      OPC_RecordNode, // #0 = $op1
/*  5608*/      OPC_Scope, 30, /*->5640*/ // 2 children in Scope
/*  5610*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  5612*/        OPC_EmitConvertToTarget, 0,
/*  5614*/        OPC_Scope, 7, /*->5623*/ // 3 children in Scope
/*  5616*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  5623*/        /*Scope*/ 7, /*->5631*/
/*  5624*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  5631*/        /*Scope*/ 7, /*->5639*/
/*  5632*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  5639*/        0, /*End of Scope*/
/*  5640*/      /*Scope*/ 11, /*->5652*/
/*  5641*/        OPC_CheckPredicate, 15, // Predicate_Trunc12_i32imm
/*  5643*/        OPC_EmitConvertToTarget, 0,
/*  5645*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_lui__opc_lui__regs__imm20_s12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_Trunc12_i32imm>>:$op1 - Complexity = 5
                  // Dst: (i_lui__opc_lui__regs__imm20_s12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  5652*/      0, /*End of Scope*/
/*  5653*/    /*Scope*/ 25, /*->5679*/
/*  5654*/      OPC_CheckInteger, 0, 
/*  5656*/      OPC_Scope, 6, /*->5664*/ // 3 children in Scope
/*  5658*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__:{ *:[i32] })
/*  5664*/      /*Scope*/ 6, /*->5671*/
/*  5665*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__:{ *:[i32] })
/*  5671*/      /*Scope*/ 6, /*->5678*/
/*  5672*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__:{ *:[i32] })
/*  5678*/      0, /*End of Scope*/
/*  5679*/    /*Scope*/ 25, /*->5705*/
/*  5680*/      OPC_RecordNode, // #0 = $op1
/*  5681*/      OPC_Scope, 11, /*->5694*/ // 2 children in Scope
/*  5683*/        OPC_CheckPredicate, 2, // Predicate_sext12To32imm
/*  5685*/        OPC_EmitConvertToTarget, 0,
/*  5687*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                  // Dst: (i_ori_emulation_alias__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  5694*/      /*Scope*/ 9, /*->5704*/
/*  5695*/        OPC_EmitConvertToTarget, 0,
/*  5697*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] }):$op1 - Complexity = 3
                  // Dst: (e_movi32__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  5704*/      0, /*End of Scope*/
/*  5705*/    0, /*End of Scope*/
/*  5706*/  /*SwitchOpcode*/ 15, TARGET_VAL(ISD::BRIND),// ->5724
/*  5709*/    OPC_RecordNode, // #0 = 'brind' chained node
/*  5710*/    OPC_RecordChild1, // #1 = $op0
/*  5711*/    OPC_MoveChild1,
/*  5712*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  5714*/    OPC_CheckType, MVT::i32,
/*  5716*/    OPC_MoveParent,
/*  5717*/    OPC_EmitMergeInputChains1_0,
/*  5718*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (brind regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
              // Dst: (i_jump_reg_alias__regs__ regs:{ *:[i32] }:$op0)
/*  5724*/  /*SwitchOpcode*/ 82, TARGET_VAL(CodasipISD::GAWrap),// ->5809
/*  5727*/    OPC_RecordChild0, // #0 = $op1
/*  5728*/    OPC_MoveChild0,
/*  5729*/    OPC_SwitchOpcode /*6 cases */, 10, TARGET_VAL(ISD::TargetGlobalAddress),// ->5743
/*  5733*/      OPC_MoveParent,
/*  5734*/      OPC_CheckType, MVT::i32,
/*  5736*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__GA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__GA:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1)
/*  5743*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetExternalSymbol),// ->5756
/*  5746*/      OPC_MoveParent,
/*  5747*/      OPC_CheckType, MVT::i32,
/*  5749*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__ES), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1)
/*  5756*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::MCSymbol),// ->5769
/*  5759*/      OPC_MoveParent,
/*  5760*/      OPC_CheckType, MVT::i32,
/*  5762*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__MC), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op1)
/*  5769*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetBlockAddress),// ->5782
/*  5772*/      OPC_MoveParent,
/*  5773*/      OPC_CheckType, MVT::i32,
/*  5775*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__BA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1)
/*  5782*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetJumpTable),// ->5795
/*  5785*/      OPC_MoveParent,
/*  5786*/      OPC_CheckType, MVT::i32,
/*  5788*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__JT), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__JT:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1)
/*  5795*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetConstantPool),// ->5808
/*  5798*/      OPC_MoveParent,
/*  5799*/      OPC_CheckType, MVT::i32,
/*  5801*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__CP), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__CP:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1)
/*  5808*/    0, // EndSwitchOpcode
/*  5809*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::BR),// ->5871
/*  5812*/    OPC_RecordNode, // #0 = 'br' chained node
/*  5813*/    OPC_RecordChild1, // #1 = $op0
/*  5814*/    OPC_MoveChild1,
/*  5815*/    OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  5818*/    OPC_MoveParent,
/*  5819*/    OPC_EmitMergeInputChains1_0,
/*  5820*/    OPC_Scope, 6, /*->5828*/ // 7 children in Scope
/*  5822*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 5
                // Dst: (i_jmp_rel_alias__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  5828*/    /*Scope*/ 6, /*->5835*/
/*  5829*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  5835*/    /*Scope*/ 6, /*->5842*/
/*  5836*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  5842*/    /*Scope*/ 6, /*->5849*/
/*  5843*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  5849*/    /*Scope*/ 6, /*->5856*/
/*  5850*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  5856*/    /*Scope*/ 6, /*->5863*/
/*  5857*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__ (bb:{ *:[Other] }):$op0)
/*  5863*/    /*Scope*/ 6, /*->5870*/
/*  5864*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_jal__opc_jal__reg0__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  5870*/    0, /*End of Scope*/
/*  5871*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::Ret),// ->5882
/*  5874*/    OPC_RecordNode, // #0 = 'Return' chained node
/*  5875*/    OPC_CaptureGlueInput,
/*  5876*/    OPC_EmitMergeInputChains1_0,
/*  5877*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs___RET_EMUL_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (Return) - Complexity = 5
              // Dst: (i_jump_reg_alias__regs___RET_EMUL_)
/*  5882*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::MRET),// ->5893
/*  5885*/    OPC_RecordNode, // #0 = 'MRet' chained node
/*  5886*/    OPC_CaptureGlueInput,
/*  5887*/    OPC_EmitMergeInputChains1_0,
/*  5888*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_xret__opc_mret__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (MRet) - Complexity = 3
              // Dst: (i_xret__opc_mret__)
/*  5893*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_LONGJMP),// ->5907
/*  5896*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_longjmp' chained node
/*  5897*/    OPC_RecordChild1, // #1 = $op0
/*  5898*/    OPC_CheckChild1Type, MVT::i32,
/*  5900*/    OPC_EmitMergeInputChains1_0,
/*  5901*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SjLj_LongJmp), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_longjmp regs:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SjLj_LongJmp regs:{ *:[i32] }:$op0)
/*  5907*/  /*SwitchOpcode*/ 12, TARGET_VAL(CodasipISD::EH_SJLJ_SETJMP),// ->5922
/*  5910*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setjmp' chained node
/*  5911*/    OPC_RecordChild1, // #1 = $op1
/*  5912*/    OPC_CheckChild1Type, MVT::i32,
/*  5914*/    OPC_EmitMergeInputChains1_0,
/*  5915*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::EH_SjLj_SetJmp), 0|OPFL_Chain,
                  MVT::i32, 1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setjmp:{ *:[i32] } regs:{ *:[i32] }:$op1) - Complexity = 3
              // Dst: (EH_SjLj_SetJmp:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  5922*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_SETUP_DISPATCH),// ->5936
/*  5925*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setup_dispatch' chained node
/*  5926*/    OPC_RecordChild1, // #1 = $op0
/*  5927*/    OPC_CheckChild1Type, MVT::i32,
/*  5929*/    OPC_EmitMergeInputChains1_0,
/*  5930*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SJLJ_SETUP_DISPATCH), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setup_dispatch regs:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SJLJ_SETUP_DISPATCH regs:{ *:[i32] }:$op0)
/*  5936*/  0, // EndSwitchOpcode
    0
  }; // Total Array size is 5938 bytes

  // Opcode Histogram:
  // #OPC_Scope                                = 100
  // #OPC_RecordNode                           = 18
  // #OPC_RecordChild                          = 165
  // #OPC_RecordMemRef                         = 2
  // #OPC_CaptureGlueInput                     = 5
  // #OPC_MoveChild                            = 336
  // #OPC_MoveParent                           = 504
  // #OPC_CheckSame                            = 0
  // #OPC_CheckChildSame                       = 76
  // #OPC_CheckPatternPredicate                = 0
  // #OPC_CheckPredicate                       = 279
  // #OPC_CheckOpcode                          = 176
  // #OPC_SwitchOpcode                         = 7
  // #OPC_CheckType                            = 43
  // #OPC_SwitchType                           = 0
  // #OPC_CheckChildType                       = 9
  // #OPC_CheckInteger                         = 3
  // #OPC_CheckChildInteger                    = 115
  // #OPC_CheckCondCode                        = 0
  // #OPC_CheckChild2CondCode                  = 58
  // #OPC_CheckValueType                       = 46
  // #OPC_CheckComplexPat                      = 0
  // #OPC_CheckAndImm                          = 3
  // #OPC_CheckOrImm                           = 0
  // #OPC_CheckImmAllOnesV                     = 0
  // #OPC_CheckImmAllZerosV                    = 0
  // #OPC_CheckFoldableChainNode               = 0
  // #OPC_EmitInteger                          = 4
  // #OPC_EmitStringInteger                    = 0
  // #OPC_EmitRegister                         = 0
  // #OPC_EmitConvertToTarget                  = 56
  // #OPC_EmitMergeInputChains                 = 91
  // #OPC_EmitCopyToReg                        = 0
  // #OPC_EmitNode                             = 16
  // #OPC_EmitNodeXForm                        = 0
  // #OPC_CompleteMatch                        = 0
  // #OPC_MorphNodeTo                          = 269

  #undef TARGET_VAL
  SelectCodeCommon(N, MatcherTable,sizeof(MatcherTable));
}
#endif // GET_DAGISEL_BODY

#ifdef GET_DAGISEL_DECL
bool CheckNodePredicate(SDNode *Node, unsigned PredNo) const override;
#endif
#if defined(GET_DAGISEL_BODY) || DAGISEL_INLINE
bool DAGISEL_CLASS_COLONCOLON CheckNodePredicate(SDNode *Node, unsigned PredNo) const
#if DAGISEL_INLINE
  override
#endif
{
  switch (PredNo) {
  default: llvm_unreachable("Invalid predicate in table?");
  case 0: { 
    // Predicate_CheckFI_i32_regs
    SDNode *N = Node;
    (void)N;
return CheckFI(N, Codasip::regsRegClassID);
  }
  case 1: { 
    // Predicate_NotFI_i32_regs
    SDNode *N = Node;
    (void)N;
return !FrameIndexSDNode::classof(N);
  }
  case 2: { 
    // Predicate_sext12To32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,12,1,0);
  }
  case 3: { 
    // Predicate_unindexedstore
    SDNode *N = Node;
    (void)N;
if (cast<StoreSDNode>(N)->getAddressingMode() != ISD::UNINDEXED) return false;
return true;

  }
  case 4: { 
    // Predicate_store
    SDNode *N = Node;
    (void)N;
 if (cast<StoreSDNode>(N)->isTruncatingStore()) return false;
return true;

  }
  case 5: { 
    // Predicate_store_a1_s0
    // Predicate_truncstorei8_a1_s0
    // Predicate_truncstorei16_a1_s0
    // Predicate_sextloadi8_a1_s0
    // Predicate_zextloadi8_a1_s0
    // Predicate_sextloadi16_a1_s0
    // Predicate_zextloadi16_a1_s0
    // Predicate_load_a1_s0
    // Predicate_extloadi8_a1_s0
    // Predicate_extloadi16_a1_s0
    SDNode *N = Node;
    (void)N;
return CheckLoadStore(cast<MemSDNode>(N),1,0);
  }
  case 6: { 
    // Predicate_truncstore
    SDNode *N = Node;
    (void)N;
 if (!cast<StoreSDNode>(N)->isTruncatingStore()) return false;
return true;

  }
  case 7: { 
    // Predicate_truncstorei8
    // Predicate_sextloadi8
    // Predicate_zextloadi8
    // Predicate_extloadi8
    SDNode *N = Node;
    (void)N;
if (cast<MemSDNode>(N)->getMemoryVT() != MVT::i8) return false;
return true;

  }
  case 8: { 
    // Predicate_truncstorei16
    // Predicate_sextloadi16
    // Predicate_zextloadi16
    // Predicate_extloadi16
    SDNode *N = Node;
    (void)N;
if (cast<MemSDNode>(N)->getMemoryVT() != MVT::i16) return false;
return true;

  }
  case 9: { 
    // Predicate_zext5To32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,5,0,0);
  }
  case 10: { 
    // Predicate_unindexedload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getAddressingMode() != ISD::UNINDEXED) return false;
return true;

  }
  case 11: { 
    // Predicate_sextload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::SEXTLOAD) return false;
return true;

  }
  case 12: { 
    // Predicate_zextload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::ZEXTLOAD) return false;
return true;

  }
  case 13: { 
    // Predicate_load
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::NON_EXTLOAD) return false;
return true;

  }
  case 14: { 
    // Predicate_extload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::EXTLOAD) return false;
return true;

  }
  case 15: { 
    // Predicate_Trunc12_i32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,32,0,12);
  }
  }
}
#endif // GET_DAGISEL_BODY


#ifdef DAGISEL_INLINE
#undef DAGISEL_INLINE
#endif
#ifdef DAGISEL_CLASS_COLONCOLON
#undef DAGISEL_CLASS_COLONCOLON
#endif
#ifdef GET_DAGISEL_DECL
#undef GET_DAGISEL_DECL
#endif
#ifdef GET_DAGISEL_BODY
#undef GET_DAGISEL_BODY
#endif
