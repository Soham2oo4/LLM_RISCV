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
/*     0*/  OPC_SwitchOpcode /*28 cases */, 5|128,5/*645*/, TARGET_VAL(ISD::STORE),// ->650
/*     5*/    OPC_RecordMemRef,
/*     6*/    OPC_RecordNode, // #0 = 'st' chained node
/*     7*/    OPC_Scope, 49|128,1/*177*/, /*->187*/ // 8 children in Scope
/*    10*/      OPC_CheckChild1Integer, 0, 
/*    12*/      OPC_Scope, 36, /*->50*/ // 4 children in Scope
/*    14*/        OPC_CheckChild1Type, MVT::i8,
/*    16*/        OPC_MoveChild2,
/*    17*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*    20*/        OPC_RecordChild0, // #1 = $op0
/*    21*/        OPC_MoveChild0,
/*    22*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*    24*/        OPC_MoveParent,
/*    25*/        OPC_RecordChild1, // #2 = $op1
/*    26*/        OPC_MoveChild1,
/*    27*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*    30*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*    32*/        OPC_MoveParent,
/*    33*/        OPC_MoveParent,
/*    34*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*    36*/        OPC_CheckPredicate, 3, // Predicate_store
/*    38*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*    40*/        OPC_EmitMergeInputChains1_0,
/*    41*/        OPC_EmitConvertToTarget, 2,
/*    43*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:{ *:[i8] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*    50*/      /*Scope*/ 36, /*->87*/
/*    51*/        OPC_CheckChild1Type, MVT::i16,
/*    53*/        OPC_MoveChild2,
/*    54*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*    57*/        OPC_RecordChild0, // #1 = $op0
/*    58*/        OPC_MoveChild0,
/*    59*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*    61*/        OPC_MoveParent,
/*    62*/        OPC_RecordChild1, // #2 = $op1
/*    63*/        OPC_MoveChild1,
/*    64*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*    67*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*    69*/        OPC_MoveParent,
/*    70*/        OPC_MoveParent,
/*    71*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*    73*/        OPC_CheckPredicate, 3, // Predicate_store
/*    75*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*    77*/        OPC_EmitMergeInputChains1_0,
/*    78*/        OPC_EmitConvertToTarget, 2,
/*    80*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:{ *:[i16] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                  // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*    87*/      /*Scope*/ 72, /*->160*/
/*    88*/        OPC_MoveChild2,
/*    89*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*    92*/        OPC_RecordChild0, // #1 = $op0
/*    93*/        OPC_MoveChild0,
/*    94*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*    96*/        OPC_MoveParent,
/*    97*/        OPC_RecordChild1, // #2 = $op1
/*    98*/        OPC_MoveChild1,
/*    99*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   102*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   104*/        OPC_MoveParent,
/*   105*/        OPC_MoveParent,
/*   106*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   108*/        OPC_Scope, 14, /*->124*/ // 2 children in Scope
/*   110*/          OPC_CheckPredicate, 3, // Predicate_store
/*   112*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   114*/          OPC_EmitMergeInputChains1_0,
/*   115*/          OPC_EmitConvertToTarget, 2,
/*   117*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                    // Dst: (i_store__opc_storew__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   124*/        /*Scope*/ 34, /*->159*/
/*   125*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   127*/          OPC_Scope, 14, /*->143*/ // 2 children in Scope
/*   129*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   131*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   133*/            OPC_EmitMergeInputChains1_0,
/*   134*/            OPC_EmitConvertToTarget, 2,
/*   136*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 18
                      // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   143*/          /*Scope*/ 14, /*->158*/
/*   144*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   146*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   148*/            OPC_EmitMergeInputChains1_0,
/*   149*/            OPC_EmitConvertToTarget, 2,
/*   151*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 18
                      // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   158*/          0, /*End of Scope*/
/*   159*/        0, /*End of Scope*/
/*   160*/      /*Scope*/ 25, /*->186*/
/*   161*/        OPC_CheckChild1Type, MVT::i8,
/*   163*/        OPC_RecordChild2, // #1 = $op0
/*   164*/        OPC_MoveChild2,
/*   165*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   168*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   170*/        OPC_MoveParent,
/*   171*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   173*/        OPC_CheckPredicate, 3, // Predicate_store
/*   175*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   177*/        OPC_EmitMergeInputChains1_0,
/*   178*/        OPC_EmitConvertToTarget, 1,
/*   180*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 2, 
                  // Src: (st 0:{ *:[i8] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*   186*/      0, /*End of Scope*/
/*   187*/    /*Scope*/ 44, /*->232*/
/*   188*/      OPC_RecordChild1, // #1 = $op0
/*   189*/      OPC_MoveChild1,
/*   190*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   192*/      OPC_CheckType, MVT::i32,
/*   194*/      OPC_MoveParent,
/*   195*/      OPC_MoveChild2,
/*   196*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   199*/      OPC_RecordChild0, // #2 = $op1
/*   200*/      OPC_MoveChild0,
/*   201*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   203*/      OPC_MoveParent,
/*   204*/      OPC_RecordChild1, // #3 = $op2
/*   205*/      OPC_MoveChild1,
/*   206*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   209*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   211*/      OPC_MoveParent,
/*   212*/      OPC_MoveParent,
/*   213*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   215*/      OPC_CheckPredicate, 5, // Predicate_truncstore
/*   217*/      OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   219*/      OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   221*/      OPC_EmitMergeInputChains1_0,
/*   222*/      OPC_EmitConvertToTarget, 3,
/*   224*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeb__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   232*/    /*Scope*/ 27, /*->260*/
/*   233*/      OPC_CheckChild1Integer, 0, 
/*   235*/      OPC_CheckChild1Type, MVT::i16,
/*   237*/      OPC_RecordChild2, // #1 = $op0
/*   238*/      OPC_MoveChild2,
/*   239*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   242*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   244*/      OPC_MoveParent,
/*   245*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   247*/      OPC_CheckPredicate, 3, // Predicate_store
/*   249*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   251*/      OPC_EmitMergeInputChains1_0,
/*   252*/      OPC_EmitConvertToTarget, 1,
/*   254*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:{ *:[i16] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeh__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*   260*/    /*Scope*/ 44, /*->305*/
/*   261*/      OPC_RecordChild1, // #1 = $op0
/*   262*/      OPC_MoveChild1,
/*   263*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   265*/      OPC_CheckType, MVT::i32,
/*   267*/      OPC_MoveParent,
/*   268*/      OPC_MoveChild2,
/*   269*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   272*/      OPC_RecordChild0, // #2 = $op1
/*   273*/      OPC_MoveChild0,
/*   274*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   276*/      OPC_MoveParent,
/*   277*/      OPC_RecordChild1, // #3 = $op2
/*   278*/      OPC_MoveChild1,
/*   279*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   282*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   284*/      OPC_MoveParent,
/*   285*/      OPC_MoveParent,
/*   286*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   288*/      OPC_CheckPredicate, 5, // Predicate_truncstore
/*   290*/      OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   292*/      OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   294*/      OPC_EmitMergeInputChains1_0,
/*   295*/      OPC_EmitConvertToTarget, 3,
/*   297*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeh__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   305*/    /*Scope*/ 25, /*->331*/
/*   306*/      OPC_CheckChild1Integer, 0, 
/*   308*/      OPC_RecordChild2, // #1 = $op0
/*   309*/      OPC_MoveChild2,
/*   310*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   313*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   315*/      OPC_MoveParent,
/*   316*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   318*/      OPC_CheckPredicate, 3, // Predicate_store
/*   320*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   322*/      OPC_EmitMergeInputChains1_0,
/*   323*/      OPC_EmitConvertToTarget, 1,
/*   325*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storew__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*   331*/    /*Scope*/ 42, /*->374*/
/*   332*/      OPC_RecordChild1, // #1 = $op0
/*   333*/      OPC_MoveChild1,
/*   334*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   336*/      OPC_CheckType, MVT::i32,
/*   338*/      OPC_MoveParent,
/*   339*/      OPC_MoveChild2,
/*   340*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   343*/      OPC_RecordChild0, // #2 = $op1
/*   344*/      OPC_MoveChild0,
/*   345*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   347*/      OPC_MoveParent,
/*   348*/      OPC_RecordChild1, // #3 = $op2
/*   349*/      OPC_MoveChild1,
/*   350*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   353*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   355*/      OPC_MoveParent,
/*   356*/      OPC_MoveParent,
/*   357*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   359*/      OPC_CheckPredicate, 3, // Predicate_store
/*   361*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   363*/      OPC_EmitMergeInputChains1_0,
/*   364*/      OPC_EmitConvertToTarget, 3,
/*   366*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storew__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   374*/    /*Scope*/ 18|128,1/*146*/, /*->522*/
/*   376*/      OPC_CheckChild1Integer, 0, 
/*   378*/      OPC_Scope, 42, /*->422*/ // 4 children in Scope
/*   380*/        OPC_RecordChild2, // #1 = $op0
/*   381*/        OPC_MoveChild2,
/*   382*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   385*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   387*/        OPC_MoveParent,
/*   388*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   390*/        OPC_CheckPredicate, 5, // Predicate_truncstore
/*   392*/        OPC_Scope, 13, /*->407*/ // 2 children in Scope
/*   394*/          OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   396*/          OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   398*/          OPC_EmitMergeInputChains1_0,
/*   399*/          OPC_EmitConvertToTarget, 1,
/*   401*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 2, 
                    // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 14
                    // Dst: (i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_ (imm:{ *:[i32] }):$op0)
/*   407*/        /*Scope*/ 13, /*->421*/
/*   408*/          OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   410*/          OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   412*/          OPC_EmitMergeInputChains1_0,
/*   413*/          OPC_EmitConvertToTarget, 1,
/*   415*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 2, 
                    // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 14
                    // Dst: (i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_ (imm:{ *:[i32] }):$op0)
/*   421*/        0, /*End of Scope*/
/*   422*/      /*Scope*/ 22, /*->445*/
/*   423*/        OPC_CheckChild1Type, MVT::i8,
/*   425*/        OPC_RecordChild2, // #1 = $op0
/*   426*/        OPC_MoveChild2,
/*   427*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   429*/        OPC_CheckType, MVT::i32,
/*   431*/        OPC_MoveParent,
/*   432*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   434*/        OPC_CheckPredicate, 3, // Predicate_store
/*   436*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   438*/        OPC_EmitMergeInputChains1_0,
/*   439*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:{ *:[i8] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*   445*/      /*Scope*/ 22, /*->468*/
/*   446*/        OPC_CheckChild1Type, MVT::i16,
/*   448*/        OPC_RecordChild2, // #1 = $op0
/*   449*/        OPC_MoveChild2,
/*   450*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   452*/        OPC_CheckType, MVT::i32,
/*   454*/        OPC_MoveParent,
/*   455*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   457*/        OPC_CheckPredicate, 3, // Predicate_store
/*   459*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   461*/        OPC_EmitMergeInputChains1_0,
/*   462*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:{ *:[i16] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                  // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*   468*/      /*Scope*/ 52, /*->521*/
/*   469*/        OPC_RecordChild2, // #1 = $op0
/*   470*/        OPC_MoveChild2,
/*   471*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   473*/        OPC_CheckType, MVT::i32,
/*   475*/        OPC_MoveParent,
/*   476*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   478*/        OPC_Scope, 11, /*->491*/ // 2 children in Scope
/*   480*/          OPC_CheckPredicate, 3, // Predicate_store
/*   482*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   484*/          OPC_EmitMergeInputChains1_0,
/*   485*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 1, 
                    // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                    // Dst: (i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*   491*/        /*Scope*/ 28, /*->520*/
/*   492*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   494*/          OPC_Scope, 11, /*->507*/ // 2 children in Scope
/*   496*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   498*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   500*/            OPC_EmitMergeInputChains1_0,
/*   501*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#Ops*/, 1, 
                      // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 11
                      // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0)
/*   507*/          /*Scope*/ 11, /*->519*/
/*   508*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   510*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   512*/            OPC_EmitMergeInputChains1_0,
/*   513*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#Ops*/, 1, 
                      // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 11
                      // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0)
/*   519*/          0, /*End of Scope*/
/*   520*/        0, /*End of Scope*/
/*   521*/      0, /*End of Scope*/
/*   522*/    /*Scope*/ 126, /*->649*/
/*   523*/      OPC_RecordChild1, // #1 = $op0
/*   524*/      OPC_MoveChild1,
/*   525*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   527*/      OPC_CheckType, MVT::i32,
/*   529*/      OPC_MoveParent,
/*   530*/      OPC_RecordChild2, // #2 = $op1
/*   531*/      OPC_MoveChild2,
/*   532*/      OPC_Scope, 60, /*->594*/ // 2 children in Scope
/*   534*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   537*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   539*/        OPC_MoveParent,
/*   540*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   542*/        OPC_Scope, 34, /*->578*/ // 2 children in Scope
/*   544*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   546*/          OPC_Scope, 14, /*->562*/ // 2 children in Scope
/*   548*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   550*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   552*/            OPC_EmitMergeInputChains1_0,
/*   553*/            OPC_EmitConvertToTarget, 2,
/*   555*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 10
                      // Dst: (i_store__opc_storeb__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   562*/          /*Scope*/ 14, /*->577*/
/*   563*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   565*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   567*/            OPC_EmitMergeInputChains1_0,
/*   568*/            OPC_EmitConvertToTarget, 2,
/*   570*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 10
                      // Dst: (i_store__opc_storeh__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   577*/          0, /*End of Scope*/
/*   578*/        /*Scope*/ 14, /*->593*/
/*   579*/          OPC_CheckPredicate, 3, // Predicate_store
/*   581*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   583*/          OPC_EmitMergeInputChains1_0,
/*   584*/          OPC_EmitConvertToTarget, 2,
/*   586*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                    // Dst: (i_store__opc_storew__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   593*/        0, /*End of Scope*/
/*   594*/      /*Scope*/ 53, /*->648*/
/*   595*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   597*/        OPC_CheckType, MVT::i32,
/*   599*/        OPC_MoveParent,
/*   600*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   602*/        OPC_Scope, 30, /*->634*/ // 2 children in Scope
/*   604*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   606*/          OPC_Scope, 12, /*->620*/ // 2 children in Scope
/*   608*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   610*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   612*/            OPC_EmitMergeInputChains1_0,
/*   613*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 7
                      // Dst: (i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*   620*/          /*Scope*/ 12, /*->633*/
/*   621*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   623*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   625*/            OPC_EmitMergeInputChains1_0,
/*   626*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 7
                      // Dst: (i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*   633*/          0, /*End of Scope*/
/*   634*/        /*Scope*/ 12, /*->647*/
/*   635*/          OPC_CheckPredicate, 3, // Predicate_store
/*   637*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   639*/          OPC_EmitMergeInputChains1_0,
/*   640*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 2, 
                    // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 7
                    // Dst: (i_store__opc_storew__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*   647*/        0, /*End of Scope*/
/*   648*/      0, /*End of Scope*/
/*   649*/    0, /*End of Scope*/
/*   650*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::SHL),// ->712
/*   653*/    OPC_RecordChild0, // #0 = $op1
/*   654*/    OPC_MoveChild0,
/*   655*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   657*/    OPC_MoveParent,
/*   658*/    OPC_Scope, 17, /*->677*/ // 2 children in Scope
/*   660*/      OPC_MoveChild1,
/*   661*/      OPC_CheckAndImm, 31, 
/*   663*/      OPC_RecordChild0, // #1 = $op2
/*   664*/      OPC_MoveChild0,
/*   665*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   667*/      OPC_MoveParent,
/*   668*/      OPC_MoveParent,
/*   669*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   677*/    /*Scope*/ 33, /*->711*/
/*   678*/      OPC_RecordChild1, // #1 = $op2
/*   679*/      OPC_MoveChild1,
/*   680*/      OPC_Scope, 16, /*->698*/ // 2 children in Scope
/*   682*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   685*/        OPC_CheckPredicate, 8, // Predicate_zext5To32imm
/*   687*/        OPC_MoveParent,
/*   688*/        OPC_EmitConvertToTarget, 1,
/*   690*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   698*/      /*Scope*/ 11, /*->710*/
/*   699*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   701*/        OPC_MoveParent,
/*   702*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   710*/      0, /*End of Scope*/
/*   711*/    0, /*End of Scope*/
/*   712*/  /*SwitchOpcode*/ 90, TARGET_VAL(ISD::SRA),// ->805
/*   715*/    OPC_Scope, 22, /*->739*/ // 3 children in Scope
/*   717*/      OPC_RecordChild0, // #0 = $op1
/*   718*/      OPC_MoveChild0,
/*   719*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   721*/      OPC_MoveParent,
/*   722*/      OPC_MoveChild1,
/*   723*/      OPC_CheckAndImm, 31, 
/*   725*/      OPC_RecordChild0, // #1 = $op2
/*   726*/      OPC_MoveChild0,
/*   727*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   729*/      OPC_MoveParent,
/*   730*/      OPC_MoveParent,
/*   731*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   739*/    /*Scope*/ 25, /*->765*/
/*   740*/      OPC_MoveChild0,
/*   741*/      OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   744*/      OPC_RecordChild0, // #0 = $op1
/*   745*/      OPC_MoveChild0,
/*   746*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   748*/      OPC_MoveParent,
/*   749*/      OPC_RecordChild1, // #1 = $op2
/*   750*/      OPC_MoveChild1,
/*   751*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   753*/      OPC_MoveParent,
/*   754*/      OPC_MoveParent,
/*   755*/      OPC_CheckChild1Integer, 8, 
/*   757*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sra:{ *:[i32] } (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2), 8:{ *:[i32] }) - Complexity = 13
                // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   765*/    /*Scope*/ 38, /*->804*/
/*   766*/      OPC_RecordChild0, // #0 = $op1
/*   767*/      OPC_MoveChild0,
/*   768*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   770*/      OPC_MoveParent,
/*   771*/      OPC_RecordChild1, // #1 = $op2
/*   772*/      OPC_MoveChild1,
/*   773*/      OPC_Scope, 16, /*->791*/ // 2 children in Scope
/*   775*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   778*/        OPC_CheckPredicate, 8, // Predicate_zext5To32imm
/*   780*/        OPC_MoveParent,
/*   781*/        OPC_EmitConvertToTarget, 1,
/*   783*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   791*/      /*Scope*/ 11, /*->803*/
/*   792*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   794*/        OPC_MoveParent,
/*   795*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   803*/      0, /*End of Scope*/
/*   804*/    0, /*End of Scope*/
/*   805*/  /*SwitchOpcode*/ 69, TARGET_VAL(ISD::SRL),// ->877
/*   808*/    OPC_RecordChild0, // #0 = $op1
/*   809*/    OPC_MoveChild0,
/*   810*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   812*/    OPC_MoveParent,
/*   813*/    OPC_Scope, 17, /*->832*/ // 3 children in Scope
/*   815*/      OPC_MoveChild1,
/*   816*/      OPC_CheckAndImm, 31, 
/*   818*/      OPC_RecordChild0, // #1 = $op2
/*   819*/      OPC_MoveChild0,
/*   820*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   822*/      OPC_MoveParent,
/*   823*/      OPC_MoveParent,
/*   824*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   832*/    /*Scope*/ 9, /*->842*/
/*   833*/      OPC_CheckChild1Integer, 31, 
/*   835*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 31:{ *:[i32] }) - Complexity = 10
                // Dst: (i_comp_3reg__opc_slt__regs__regs__reg0__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*   842*/    /*Scope*/ 33, /*->876*/
/*   843*/      OPC_RecordChild1, // #1 = $op2
/*   844*/      OPC_MoveChild1,
/*   845*/      OPC_Scope, 16, /*->863*/ // 2 children in Scope
/*   847*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   850*/        OPC_CheckPredicate, 8, // Predicate_zext5To32imm
/*   852*/        OPC_MoveParent,
/*   853*/        OPC_EmitConvertToTarget, 1,
/*   855*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   863*/      /*Scope*/ 11, /*->875*/
/*   864*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   866*/        OPC_MoveParent,
/*   867*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   875*/      0, /*End of Scope*/
/*   876*/    0, /*End of Scope*/
/*   877*/  /*SwitchOpcode*/ 74|128,4/*586*/, TARGET_VAL(ISD::BRCOND),// ->1467
/*   881*/    OPC_RecordNode, // #0 = 'brcond' chained node
/*   882*/    OPC_Scope, 49|128,4/*561*/, /*->1446*/ // 2 children in Scope
/*   885*/      OPC_MoveChild1,
/*   886*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*   889*/      OPC_RecordChild0, // #1 = $op0
/*   890*/      OPC_MoveChild0,
/*   891*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   893*/      OPC_Scope, 91|128,2/*347*/, /*->1243*/ // 2 children in Scope
/*   896*/        OPC_MoveParent,
/*   897*/        OPC_Scope, 114, /*->1013*/ // 4 children in Scope
/*   899*/          OPC_CheckChild1Integer, 0, 
/*   901*/          OPC_Scope, 36, /*->939*/ // 4 children in Scope
/*   903*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*   905*/            OPC_MoveParent,
/*   906*/            OPC_RecordChild2, // #2 = $op1
/*   907*/            OPC_MoveChild2,
/*   908*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   911*/            OPC_MoveParent,
/*   912*/            OPC_EmitMergeInputChains1_0,
/*   913*/            OPC_Scope, 7, /*->922*/ // 3 children in Scope
/*   915*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   922*/            /*Scope*/ 7, /*->930*/
/*   923*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   930*/            /*Scope*/ 7, /*->938*/
/*   931*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   938*/            0, /*End of Scope*/
/*   939*/          /*Scope*/ 17, /*->957*/
/*   940*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*   942*/            OPC_MoveParent,
/*   943*/            OPC_RecordChild2, // #2 = $op1
/*   944*/            OPC_MoveChild2,
/*   945*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   948*/            OPC_MoveParent,
/*   949*/            OPC_EmitMergeInputChains1_0,
/*   950*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   957*/          /*Scope*/ 17, /*->975*/
/*   958*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*   960*/            OPC_MoveParent,
/*   961*/            OPC_RecordChild2, // #2 = $op1
/*   962*/            OPC_MoveChild2,
/*   963*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   966*/            OPC_MoveParent,
/*   967*/            OPC_EmitMergeInputChains1_0,
/*   968*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   975*/          /*Scope*/ 36, /*->1012*/
/*   976*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*   978*/            OPC_MoveParent,
/*   979*/            OPC_RecordChild2, // #2 = $op1
/*   980*/            OPC_MoveChild2,
/*   981*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   984*/            OPC_MoveParent,
/*   985*/            OPC_EmitMergeInputChains1_0,
/*   986*/            OPC_Scope, 7, /*->995*/ // 3 children in Scope
/*   988*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   995*/            /*Scope*/ 7, /*->1003*/
/*   996*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1003*/            /*Scope*/ 7, /*->1011*/
/*  1004*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1011*/            0, /*End of Scope*/
/*  1012*/          0, /*End of Scope*/
/*  1013*/        /*Scope*/ 19, /*->1033*/
/*  1014*/          OPC_CheckChild1Integer, 1, 
/*  1016*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1018*/          OPC_MoveParent,
/*  1019*/          OPC_RecordChild2, // #2 = $op1
/*  1020*/          OPC_MoveChild2,
/*  1021*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1024*/          OPC_MoveParent,
/*  1025*/          OPC_EmitMergeInputChains1_0,
/*  1026*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 1:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1033*/        /*Scope*/ 28, /*->1062*/
/*  1034*/          OPC_CheckChild1Integer, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*  1045*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1047*/          OPC_MoveParent,
/*  1048*/          OPC_RecordChild2, // #2 = $op1
/*  1049*/          OPC_MoveChild2,
/*  1050*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1053*/          OPC_MoveParent,
/*  1054*/          OPC_EmitMergeInputChains1_0,
/*  1055*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, -1:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1062*/        /*Scope*/ 50|128,1/*178*/, /*->1242*/
/*  1064*/          OPC_RecordChild1, // #2 = $op1
/*  1065*/          OPC_MoveChild1,
/*  1066*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1069*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1071*/          OPC_MoveParent,
/*  1072*/          OPC_Scope, 27, /*->1101*/ // 6 children in Scope
/*  1074*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1076*/            OPC_MoveParent,
/*  1077*/            OPC_RecordChild2, // #3 = $op2
/*  1078*/            OPC_MoveChild2,
/*  1079*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1082*/            OPC_MoveParent,
/*  1083*/            OPC_EmitMergeInputChains1_0,
/*  1084*/            OPC_EmitConvertToTarget, 2,
/*  1086*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1094*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1101*/          /*Scope*/ 27, /*->1129*/
/*  1102*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1104*/            OPC_MoveParent,
/*  1105*/            OPC_RecordChild2, // #3 = $op2
/*  1106*/            OPC_MoveChild2,
/*  1107*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1110*/            OPC_MoveParent,
/*  1111*/            OPC_EmitMergeInputChains1_0,
/*  1112*/            OPC_EmitConvertToTarget, 2,
/*  1114*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1122*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1129*/          /*Scope*/ 27, /*->1157*/
/*  1130*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1132*/            OPC_MoveParent,
/*  1133*/            OPC_RecordChild2, // #3 = $op2
/*  1134*/            OPC_MoveChild2,
/*  1135*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1138*/            OPC_MoveParent,
/*  1139*/            OPC_EmitMergeInputChains1_0,
/*  1140*/            OPC_EmitConvertToTarget, 2,
/*  1142*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1150*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1157*/          /*Scope*/ 27, /*->1185*/
/*  1158*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1160*/            OPC_MoveParent,
/*  1161*/            OPC_RecordChild2, // #3 = $op2
/*  1162*/            OPC_MoveChild2,
/*  1163*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1166*/            OPC_MoveParent,
/*  1167*/            OPC_EmitMergeInputChains1_0,
/*  1168*/            OPC_EmitConvertToTarget, 2,
/*  1170*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1178*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1185*/          /*Scope*/ 27, /*->1213*/
/*  1186*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1188*/            OPC_MoveParent,
/*  1189*/            OPC_RecordChild2, // #3 = $op2
/*  1190*/            OPC_MoveChild2,
/*  1191*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1194*/            OPC_MoveParent,
/*  1195*/            OPC_EmitMergeInputChains1_0,
/*  1196*/            OPC_EmitConvertToTarget, 2,
/*  1198*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1206*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1213*/          /*Scope*/ 27, /*->1241*/
/*  1214*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1216*/            OPC_MoveParent,
/*  1217*/            OPC_RecordChild2, // #3 = $op2
/*  1218*/            OPC_MoveChild2,
/*  1219*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1222*/            OPC_MoveParent,
/*  1223*/            OPC_EmitMergeInputChains1_0,
/*  1224*/            OPC_EmitConvertToTarget, 2,
/*  1226*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1234*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1241*/          0, /*End of Scope*/
/*  1242*/        0, /*End of Scope*/
/*  1243*/      /*Scope*/ 72|128,1/*200*/, /*->1445*/
/*  1245*/        OPC_CheckType, MVT::i32,
/*  1247*/        OPC_MoveParent,
/*  1248*/        OPC_RecordChild1, // #2 = $op1
/*  1249*/        OPC_MoveChild1,
/*  1250*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1252*/        OPC_MoveParent,
/*  1253*/        OPC_Scope, 18, /*->1273*/ // 10 children in Scope
/*  1255*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1257*/          OPC_MoveParent,
/*  1258*/          OPC_RecordChild2, // #3 = $op2
/*  1259*/          OPC_MoveChild2,
/*  1260*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1263*/          OPC_MoveParent,
/*  1264*/          OPC_EmitMergeInputChains1_0,
/*  1265*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_beq__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1273*/        /*Scope*/ 18, /*->1292*/
/*  1274*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1276*/          OPC_MoveParent,
/*  1277*/          OPC_RecordChild2, // #3 = $op2
/*  1278*/          OPC_MoveChild2,
/*  1279*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1282*/          OPC_MoveParent,
/*  1283*/          OPC_EmitMergeInputChains1_0,
/*  1284*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1292*/        /*Scope*/ 18, /*->1311*/
/*  1293*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1295*/          OPC_MoveParent,
/*  1296*/          OPC_RecordChild2, // #3 = $op2
/*  1297*/          OPC_MoveChild2,
/*  1298*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1301*/          OPC_MoveParent,
/*  1302*/          OPC_EmitMergeInputChains1_0,
/*  1303*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1311*/        /*Scope*/ 18, /*->1330*/
/*  1312*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1314*/          OPC_MoveParent,
/*  1315*/          OPC_RecordChild2, // #3 = $op2
/*  1316*/          OPC_MoveChild2,
/*  1317*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1320*/          OPC_MoveParent,
/*  1321*/          OPC_EmitMergeInputChains1_0,
/*  1322*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1330*/        /*Scope*/ 18, /*->1349*/
/*  1331*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1333*/          OPC_MoveParent,
/*  1334*/          OPC_RecordChild2, // #3 = $op2
/*  1335*/          OPC_MoveChild2,
/*  1336*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1339*/          OPC_MoveParent,
/*  1340*/          OPC_EmitMergeInputChains1_0,
/*  1341*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1349*/        /*Scope*/ 18, /*->1368*/
/*  1350*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1352*/          OPC_MoveParent,
/*  1353*/          OPC_RecordChild2, // #3 = $op2
/*  1354*/          OPC_MoveChild2,
/*  1355*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1358*/          OPC_MoveParent,
/*  1359*/          OPC_EmitMergeInputChains1_0,
/*  1360*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bne__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1368*/        /*Scope*/ 18, /*->1387*/
/*  1369*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1371*/          OPC_MoveParent,
/*  1372*/          OPC_RecordChild2, // #3 = $op2
/*  1373*/          OPC_MoveChild2,
/*  1374*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1377*/          OPC_MoveParent,
/*  1378*/          OPC_EmitMergeInputChains1_0,
/*  1379*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1387*/        /*Scope*/ 18, /*->1406*/
/*  1388*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  1390*/          OPC_MoveParent,
/*  1391*/          OPC_RecordChild2, // #3 = $op2
/*  1392*/          OPC_MoveChild2,
/*  1393*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1396*/          OPC_MoveParent,
/*  1397*/          OPC_EmitMergeInputChains1_0,
/*  1398*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1406*/        /*Scope*/ 18, /*->1425*/
/*  1407*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1409*/          OPC_MoveParent,
/*  1410*/          OPC_RecordChild2, // #3 = $op2
/*  1411*/          OPC_MoveChild2,
/*  1412*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1415*/          OPC_MoveParent,
/*  1416*/          OPC_EmitMergeInputChains1_0,
/*  1417*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1425*/        /*Scope*/ 18, /*->1444*/
/*  1426*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1428*/          OPC_MoveParent,
/*  1429*/          OPC_RecordChild2, // #3 = $op2
/*  1430*/          OPC_MoveChild2,
/*  1431*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1434*/          OPC_MoveParent,
/*  1435*/          OPC_EmitMergeInputChains1_0,
/*  1436*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1444*/        0, /*End of Scope*/
/*  1445*/      0, /*End of Scope*/
/*  1446*/    /*Scope*/ 19, /*->1466*/
/*  1447*/      OPC_RecordChild1, // #1 = $op0
/*  1448*/      OPC_MoveChild1,
/*  1449*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1451*/      OPC_MoveParent,
/*  1452*/      OPC_RecordChild2, // #2 = $op1
/*  1453*/      OPC_MoveChild2,
/*  1454*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1457*/      OPC_MoveParent,
/*  1458*/      OPC_EmitMergeInputChains1_0,
/*  1459*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                    2/*#Ops*/, 1, 2, 
                // Src: (brcond regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1) - Complexity = 4
                // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1)
/*  1466*/    0, /*End of Scope*/
/*  1467*/  /*SwitchOpcode*/ 8|128,3/*392*/, TARGET_VAL(ISD::SETCC),// ->1863
/*  1471*/    OPC_RecordChild0, // #0 = $op1
/*  1472*/    OPC_MoveChild0,
/*  1473*/    OPC_Scope, 34, /*->1509*/ // 2 children in Scope
/*  1475*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1478*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1480*/      OPC_MoveParent,
/*  1481*/      OPC_CheckChild1Integer, 0, 
/*  1483*/      OPC_Scope, 11, /*->1496*/ // 2 children in Scope
/*  1485*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  1487*/        OPC_EmitConvertToTarget, 0,
/*  1489*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1496*/      /*Scope*/ 11, /*->1508*/
/*  1497*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  1499*/        OPC_EmitConvertToTarget, 0,
/*  1501*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1508*/      0, /*End of Scope*/
/*  1509*/    /*Scope*/ 95|128,2/*351*/, /*->1862*/
/*  1511*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1513*/      OPC_Scope, 41|128,1/*169*/, /*->1685*/ // 2 children in Scope
/*  1516*/        OPC_MoveParent,
/*  1517*/        OPC_Scope, 44, /*->1563*/ // 2 children in Scope
/*  1519*/          OPC_CheckChild1Integer, 0, 
/*  1521*/          OPC_Scope, 9, /*->1532*/ // 4 children in Scope
/*  1523*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1525*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETEQ:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1532*/          /*Scope*/ 9, /*->1542*/
/*  1533*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1535*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1542*/          /*Scope*/ 9, /*->1552*/
/*  1543*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  1545*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_slt__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1552*/          /*Scope*/ 9, /*->1562*/
/*  1553*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1555*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_sltu__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1562*/          0, /*End of Scope*/
/*  1563*/        /*Scope*/ 120, /*->1684*/
/*  1564*/          OPC_RecordChild1, // #1 = $op2
/*  1565*/          OPC_MoveChild1,
/*  1566*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1569*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1571*/          OPC_MoveParent,
/*  1572*/          OPC_Scope, 12, /*->1586*/ // 6 children in Scope
/*  1574*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1576*/            OPC_EmitConvertToTarget, 1,
/*  1578*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETLT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1586*/          /*Scope*/ 12, /*->1599*/
/*  1587*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1589*/            OPC_EmitConvertToTarget, 1,
/*  1591*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETULT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1599*/          /*Scope*/ 19, /*->1619*/
/*  1600*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1602*/            OPC_EmitConvertToTarget, 1,
/*  1604*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1612*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1619*/          /*Scope*/ 19, /*->1639*/
/*  1620*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1622*/            OPC_EmitConvertToTarget, 1,
/*  1624*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1632*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1639*/          /*Scope*/ 19, /*->1659*/
/*  1640*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1642*/            OPC_EmitConvertToTarget, 1,
/*  1644*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1652*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1659*/          /*Scope*/ 23, /*->1683*/
/*  1660*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1662*/            OPC_EmitConvertToTarget, 1,
/*  1664*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1672*/            OPC_EmitInteger, MVT::i32, 1, 
/*  1675*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), 1:{ *:[i32] })
/*  1683*/          0, /*End of Scope*/
/*  1684*/        0, /*End of Scope*/
/*  1685*/      /*Scope*/ 46|128,1/*174*/, /*->1861*/
/*  1687*/        OPC_CheckType, MVT::i32,
/*  1689*/        OPC_MoveParent,
/*  1690*/        OPC_RecordChild1, // #1 = $op2
/*  1691*/        OPC_MoveChild1,
/*  1692*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1694*/        OPC_MoveParent,
/*  1695*/        OPC_Scope, 10, /*->1707*/ // 10 children in Scope
/*  1697*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1699*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETLT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1707*/        /*Scope*/ 10, /*->1718*/
/*  1708*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1710*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETULT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1718*/        /*Scope*/ 10, /*->1729*/
/*  1719*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1721*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1729*/        /*Scope*/ 10, /*->1740*/
/*  1730*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1732*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETUGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1740*/        /*Scope*/ 17, /*->1758*/
/*  1741*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1743*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1751*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1758*/        /*Scope*/ 17, /*->1776*/
/*  1759*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1761*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1769*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1776*/        /*Scope*/ 17, /*->1794*/
/*  1777*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1779*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1787*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1794*/        /*Scope*/ 21, /*->1816*/
/*  1795*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1797*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  1805*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1808*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  1816*/        /*Scope*/ 21, /*->1838*/
/*  1817*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1819*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1827*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1830*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1), 1:{ *:[i32] })
/*  1838*/        /*Scope*/ 21, /*->1860*/
/*  1839*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  1841*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  1849*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1852*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  1860*/        0, /*End of Scope*/
/*  1861*/      0, /*End of Scope*/
/*  1862*/    0, /*End of Scope*/
/*  1863*/  /*SwitchOpcode*/ 101|128,3/*485*/, TARGET_VAL(ISD::LOAD),// ->2352
/*  1867*/    OPC_RecordMemRef,
/*  1868*/    OPC_RecordNode, // #0 = 'ld' chained node
/*  1869*/    OPC_Scope, 45|128,1/*173*/, /*->2045*/ // 2 children in Scope
/*  1872*/      OPC_MoveChild1,
/*  1873*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  1876*/      OPC_RecordChild0, // #1 = $op1
/*  1877*/      OPC_MoveChild0,
/*  1878*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1880*/      OPC_MoveParent,
/*  1881*/      OPC_RecordChild1, // #2 = $op2
/*  1882*/      OPC_MoveChild1,
/*  1883*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1886*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1888*/      OPC_MoveParent,
/*  1889*/      OPC_MoveParent,
/*  1890*/      OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  1892*/      OPC_CheckType, MVT::i32,
/*  1894*/      OPC_Scope, 17, /*->1913*/ // 6 children in Scope
/*  1896*/        OPC_CheckPredicate, 10, // Predicate_sextload
/*  1898*/        OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  1900*/        OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  1902*/        OPC_EmitMergeInputChains1_0,
/*  1903*/        OPC_EmitConvertToTarget, 2,
/*  1905*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1913*/      /*Scope*/ 17, /*->1931*/
/*  1914*/        OPC_CheckPredicate, 11, // Predicate_zextload
/*  1916*/        OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  1918*/        OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  1920*/        OPC_EmitMergeInputChains1_0,
/*  1921*/        OPC_EmitConvertToTarget, 2,
/*  1923*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1931*/      /*Scope*/ 17, /*->1949*/
/*  1932*/        OPC_CheckPredicate, 10, // Predicate_sextload
/*  1934*/        OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  1936*/        OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  1938*/        OPC_EmitMergeInputChains1_0,
/*  1939*/        OPC_EmitConvertToTarget, 2,
/*  1941*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1949*/      /*Scope*/ 17, /*->1967*/
/*  1950*/        OPC_CheckPredicate, 11, // Predicate_zextload
/*  1952*/        OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  1954*/        OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  1956*/        OPC_EmitMergeInputChains1_0,
/*  1957*/        OPC_EmitConvertToTarget, 2,
/*  1959*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1967*/      /*Scope*/ 15, /*->1983*/
/*  1968*/        OPC_CheckPredicate, 12, // Predicate_load
/*  1970*/        OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  1972*/        OPC_EmitMergeInputChains1_0,
/*  1973*/        OPC_EmitConvertToTarget, 2,
/*  1975*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1983*/      /*Scope*/ 60, /*->2044*/
/*  1984*/        OPC_CheckPredicate, 13, // Predicate_extload
/*  1986*/        OPC_Scope, 27, /*->2015*/ // 2 children in Scope
/*  1988*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  1990*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  1992*/          OPC_EmitMergeInputChains1_0,
/*  1993*/          OPC_EmitConvertToTarget, 2,
/*  1995*/          OPC_Scope, 8, /*->2005*/ // 2 children in Scope
/*  1997*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2005*/          /*Scope*/ 8, /*->2014*/
/*  2006*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2014*/          0, /*End of Scope*/
/*  2015*/        /*Scope*/ 27, /*->2043*/
/*  2016*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2018*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2020*/          OPC_EmitMergeInputChains1_0,
/*  2021*/          OPC_EmitConvertToTarget, 2,
/*  2023*/          OPC_Scope, 8, /*->2033*/ // 2 children in Scope
/*  2025*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2033*/          /*Scope*/ 8, /*->2042*/
/*  2034*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2042*/          0, /*End of Scope*/
/*  2043*/        0, /*End of Scope*/
/*  2044*/      0, /*End of Scope*/
/*  2045*/    /*Scope*/ 48|128,2/*304*/, /*->2351*/
/*  2047*/      OPC_RecordChild1, // #1 = $op1
/*  2048*/      OPC_MoveChild1,
/*  2049*/      OPC_Scope, 24|128,1/*152*/, /*->2204*/ // 2 children in Scope
/*  2052*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2055*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  2057*/        OPC_MoveParent,
/*  2058*/        OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  2060*/        OPC_CheckType, MVT::i32,
/*  2062*/        OPC_Scope, 16, /*->2080*/ // 6 children in Scope
/*  2064*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2066*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2068*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2070*/          OPC_EmitMergeInputChains1_0,
/*  2071*/          OPC_EmitConvertToTarget, 1,
/*  2073*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2080*/        /*Scope*/ 16, /*->2097*/
/*  2081*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2083*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2085*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2087*/          OPC_EmitMergeInputChains1_0,
/*  2088*/          OPC_EmitConvertToTarget, 1,
/*  2090*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2097*/        /*Scope*/ 16, /*->2114*/
/*  2098*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2100*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2102*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2104*/          OPC_EmitMergeInputChains1_0,
/*  2105*/          OPC_EmitConvertToTarget, 1,
/*  2107*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2114*/        /*Scope*/ 16, /*->2131*/
/*  2115*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2117*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2119*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2121*/          OPC_EmitMergeInputChains1_0,
/*  2122*/          OPC_EmitConvertToTarget, 1,
/*  2124*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2131*/        /*Scope*/ 14, /*->2146*/
/*  2132*/          OPC_CheckPredicate, 12, // Predicate_load
/*  2134*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2136*/          OPC_EmitMergeInputChains1_0,
/*  2137*/          OPC_EmitConvertToTarget, 1,
/*  2139*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2146*/        /*Scope*/ 56, /*->2203*/
/*  2147*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2149*/          OPC_Scope, 25, /*->2176*/ // 2 children in Scope
/*  2151*/            OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2153*/            OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2155*/            OPC_EmitMergeInputChains1_0,
/*  2156*/            OPC_EmitConvertToTarget, 1,
/*  2158*/            OPC_Scope, 7, /*->2167*/ // 2 children in Scope
/*  2160*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2167*/            /*Scope*/ 7, /*->2175*/
/*  2168*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2175*/            0, /*End of Scope*/
/*  2176*/          /*Scope*/ 25, /*->2202*/
/*  2177*/            OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2179*/            OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2181*/            OPC_EmitMergeInputChains1_0,
/*  2182*/            OPC_EmitConvertToTarget, 1,
/*  2184*/            OPC_Scope, 7, /*->2193*/ // 2 children in Scope
/*  2186*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2193*/            /*Scope*/ 7, /*->2201*/
/*  2194*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2201*/            0, /*End of Scope*/
/*  2202*/          0, /*End of Scope*/
/*  2203*/        0, /*End of Scope*/
/*  2204*/      /*Scope*/ 16|128,1/*144*/, /*->2350*/
/*  2206*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2208*/        OPC_CheckType, MVT::i32,
/*  2210*/        OPC_MoveParent,
/*  2211*/        OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  2213*/        OPC_CheckType, MVT::i32,
/*  2215*/        OPC_Scope, 14, /*->2231*/ // 9 children in Scope
/*  2217*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2219*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2221*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2223*/          OPC_EmitMergeInputChains1_0,
/*  2224*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2231*/        /*Scope*/ 14, /*->2246*/
/*  2232*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2234*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2236*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2238*/          OPC_EmitMergeInputChains1_0,
/*  2239*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2246*/        /*Scope*/ 14, /*->2261*/
/*  2247*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2249*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2251*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2253*/          OPC_EmitMergeInputChains1_0,
/*  2254*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2261*/        /*Scope*/ 14, /*->2276*/
/*  2262*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2264*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2266*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2268*/          OPC_EmitMergeInputChains1_0,
/*  2269*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2276*/        /*Scope*/ 14, /*->2291*/
/*  2277*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2279*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2281*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2283*/          OPC_EmitMergeInputChains1_0,
/*  2284*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2291*/        /*Scope*/ 14, /*->2306*/
/*  2292*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2294*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2296*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2298*/          OPC_EmitMergeInputChains1_0,
/*  2299*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2306*/        /*Scope*/ 14, /*->2321*/
/*  2307*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2309*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2311*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2313*/          OPC_EmitMergeInputChains1_0,
/*  2314*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2321*/        /*Scope*/ 14, /*->2336*/
/*  2322*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2324*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2326*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2328*/          OPC_EmitMergeInputChains1_0,
/*  2329*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2336*/        /*Scope*/ 12, /*->2349*/
/*  2337*/          OPC_CheckPredicate, 12, // Predicate_load
/*  2339*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2341*/          OPC_EmitMergeInputChains1_0,
/*  2342*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2349*/        0, /*End of Scope*/
/*  2350*/      0, /*End of Scope*/
/*  2351*/    0, /*End of Scope*/
/*  2352*/  /*SwitchOpcode*/ 9|128,2/*265*/, TARGET_VAL(CodasipISD::TailCall),// ->2621
/*  2356*/    OPC_RecordNode, // #0 = 'TailCall' chained node
/*  2357*/    OPC_CaptureGlueInput,
/*  2358*/    OPC_Scope, 116|128,1/*244*/, /*->2605*/ // 2 children in Scope
/*  2361*/      OPC_MoveChild1,
/*  2362*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2365*/      OPC_RecordChild0, // #1 = $op0
/*  2366*/      OPC_MoveChild0,
/*  2367*/      OPC_SwitchOpcode /*4 cases */, 56, TARGET_VAL(ISD::TargetGlobalAddress),// ->2427
/*  2371*/        OPC_MoveParent,
/*  2372*/        OPC_CheckType, MVT::i32,
/*  2374*/        OPC_MoveParent,
/*  2375*/        OPC_EmitMergeInputChains1_0,
/*  2376*/        OPC_Scope, 6, /*->2384*/ // 7 children in Scope
/*  2378*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2384*/        /*Scope*/ 6, /*->2391*/
/*  2385*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2391*/        /*Scope*/ 6, /*->2398*/
/*  2392*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2398*/        /*Scope*/ 6, /*->2405*/
/*  2399*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2405*/        /*Scope*/ 6, /*->2412*/
/*  2406*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2412*/        /*Scope*/ 6, /*->2419*/
/*  2413*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2419*/        /*Scope*/ 6, /*->2426*/
/*  2420*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2426*/        0, /*End of Scope*/
/*  2427*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetExternalSymbol),// ->2486
/*  2430*/        OPC_MoveParent,
/*  2431*/        OPC_CheckType, MVT::i32,
/*  2433*/        OPC_MoveParent,
/*  2434*/        OPC_EmitMergeInputChains1_0,
/*  2435*/        OPC_Scope, 6, /*->2443*/ // 7 children in Scope
/*  2437*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2443*/        /*Scope*/ 6, /*->2450*/
/*  2444*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2450*/        /*Scope*/ 6, /*->2457*/
/*  2451*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2457*/        /*Scope*/ 6, /*->2464*/
/*  2458*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2464*/        /*Scope*/ 6, /*->2471*/
/*  2465*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2471*/        /*Scope*/ 6, /*->2478*/
/*  2472*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2478*/        /*Scope*/ 6, /*->2485*/
/*  2479*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2485*/        0, /*End of Scope*/
/*  2486*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::MCSymbol),// ->2545
/*  2489*/        OPC_MoveParent,
/*  2490*/        OPC_CheckType, MVT::i32,
/*  2492*/        OPC_MoveParent,
/*  2493*/        OPC_EmitMergeInputChains1_0,
/*  2494*/        OPC_Scope, 6, /*->2502*/ // 7 children in Scope
/*  2496*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2502*/        /*Scope*/ 6, /*->2509*/
/*  2503*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2509*/        /*Scope*/ 6, /*->2516*/
/*  2510*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2516*/        /*Scope*/ 6, /*->2523*/
/*  2517*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2523*/        /*Scope*/ 6, /*->2530*/
/*  2524*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2530*/        /*Scope*/ 6, /*->2537*/
/*  2531*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2537*/        /*Scope*/ 6, /*->2544*/
/*  2538*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2544*/        0, /*End of Scope*/
/*  2545*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetBlockAddress),// ->2604
/*  2548*/        OPC_MoveParent,
/*  2549*/        OPC_CheckType, MVT::i32,
/*  2551*/        OPC_MoveParent,
/*  2552*/        OPC_EmitMergeInputChains1_0,
/*  2553*/        OPC_Scope, 6, /*->2561*/ // 7 children in Scope
/*  2555*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2561*/        /*Scope*/ 6, /*->2568*/
/*  2562*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2568*/        /*Scope*/ 6, /*->2575*/
/*  2569*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2575*/        /*Scope*/ 6, /*->2582*/
/*  2576*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2582*/        /*Scope*/ 6, /*->2589*/
/*  2583*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2589*/        /*Scope*/ 6, /*->2596*/
/*  2590*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2596*/        /*Scope*/ 6, /*->2603*/
/*  2597*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2603*/        0, /*End of Scope*/
/*  2604*/      0, // EndSwitchOpcode
/*  2605*/    /*Scope*/ 14, /*->2620*/
/*  2606*/      OPC_RecordChild1, // #1 = $op0
/*  2607*/      OPC_MoveChild1,
/*  2608*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2610*/      OPC_CheckType, MVT::i32,
/*  2612*/      OPC_MoveParent,
/*  2613*/      OPC_EmitMergeInputChains1_0,
/*  2614*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                    1/*#Ops*/, 1, 
                // Src: (TailCall regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_jump_reg_alias__regs__TAILCALL_CLONE_ regs:{ *:[i32] }:$op0)
/*  2620*/    0, /*End of Scope*/
/*  2621*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::INTRINSIC_W_CHAIN),// ->2646
/*  2624*/    OPC_RecordNode, // #0 = 'intrinsic_w_chain' chained node
/*  2625*/    OPC_CheckChild1Integer, 17|128,1/*145*/, 
/*  2628*/    OPC_RecordChild2, // #1 = $op1
/*  2629*/    OPC_RecordChild3, // #2 = $op2
/*  2630*/    OPC_MoveChild3,
/*  2631*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2634*/    OPC_MoveParent,
/*  2635*/    OPC_EmitMergeInputChains1_0,
/*  2636*/    OPC_EmitConvertToTarget, 2,
/*  2638*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::hwloop_loop_decrement_reg), 0|OPFL_Chain,
                  MVT::i32, 2/*#Ops*/, 1, 3, 
              // Src: (intrinsic_w_chain:{ *:[i32] } 145:{ *:[iPTR] }, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2) - Complexity = 11
              // Dst: (hwloop_loop_decrement_reg:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2646*/  /*SwitchOpcode*/ 89, TARGET_VAL(CodasipISD::Call),// ->2738
/*  2649*/    OPC_RecordNode, // #0 = 'Call' chained node
/*  2650*/    OPC_CaptureGlueInput,
/*  2651*/    OPC_Scope, 68, /*->2721*/ // 2 children in Scope
/*  2653*/      OPC_MoveChild1,
/*  2654*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2657*/      OPC_RecordChild0, // #1 = $op0
/*  2658*/      OPC_MoveChild0,
/*  2659*/      OPC_SwitchOpcode /*4 cases */, 12, TARGET_VAL(ISD::TargetGlobalAddress),// ->2675
/*  2663*/        OPC_MoveParent,
/*  2664*/        OPC_CheckType, MVT::i32,
/*  2666*/        OPC_MoveParent,
/*  2667*/        OPC_EmitMergeInputChains1_0,
/*  2668*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)
/*  2675*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetExternalSymbol),// ->2690
/*  2678*/        OPC_MoveParent,
/*  2679*/        OPC_CheckType, MVT::i32,
/*  2681*/        OPC_MoveParent,
/*  2682*/        OPC_EmitMergeInputChains1_0,
/*  2683*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)
/*  2690*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::MCSymbol),// ->2705
/*  2693*/        OPC_MoveParent,
/*  2694*/        OPC_CheckType, MVT::i32,
/*  2696*/        OPC_MoveParent,
/*  2697*/        OPC_EmitMergeInputChains1_0,
/*  2698*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)
/*  2705*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetBlockAddress),// ->2720
/*  2708*/        OPC_MoveParent,
/*  2709*/        OPC_CheckType, MVT::i32,
/*  2711*/        OPC_MoveParent,
/*  2712*/        OPC_EmitMergeInputChains1_0,
/*  2713*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)
/*  2720*/      0, // EndSwitchOpcode
/*  2721*/    /*Scope*/ 15, /*->2737*/
/*  2722*/      OPC_RecordChild1, // #1 = $op0
/*  2723*/      OPC_MoveChild1,
/*  2724*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2726*/      OPC_CheckType, MVT::i32,
/*  2728*/      OPC_MoveParent,
/*  2729*/      OPC_EmitMergeInputChains1_0,
/*  2730*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__regs__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    MVT::i32, 1/*#Ops*/, 1, 
                // Src: (Call regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_call_reg_alias__regs__:{ *:[i32] } regs:{ *:[i32] }:$op0)
/*  2737*/    0, /*End of Scope*/
/*  2738*/  /*SwitchOpcode*/ 47, TARGET_VAL(ISD::SUB),// ->2788
/*  2741*/    OPC_Scope, 25, /*->2768*/ // 2 children in Scope
/*  2743*/      OPC_CheckChild0Integer, 0, 
/*  2745*/      OPC_RecordChild1, // #0 = $op1
/*  2746*/      OPC_MoveChild1,
/*  2747*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2749*/      OPC_MoveParent,
/*  2750*/      OPC_Scope, 7, /*->2759*/ // 2 children in Scope
/*  2752*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2759*/      /*Scope*/ 7, /*->2767*/
/*  2760*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_neg_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2767*/      0, /*End of Scope*/
/*  2768*/    /*Scope*/ 18, /*->2787*/
/*  2769*/      OPC_RecordChild0, // #0 = $op1
/*  2770*/      OPC_MoveChild0,
/*  2771*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2773*/      OPC_MoveParent,
/*  2774*/      OPC_RecordChild1, // #1 = $op2
/*  2775*/      OPC_MoveChild1,
/*  2776*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2778*/      OPC_MoveParent,
/*  2779*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sub:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_sub__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2787*/    0, /*End of Scope*/
/*  2788*/  /*SwitchOpcode*/ 53|128,2/*309*/, TARGET_VAL(ISD::SELECT),// ->3101
/*  2792*/    OPC_Scope, 22|128,2/*278*/, /*->3073*/ // 2 children in Scope
/*  2795*/      OPC_MoveChild0,
/*  2796*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  2799*/      OPC_RecordChild0, // #0 = $op0
/*  2800*/      OPC_MoveChild0,
/*  2801*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2803*/      OPC_CheckType, MVT::i32,
/*  2805*/      OPC_MoveParent,
/*  2806*/      OPC_RecordChild1, // #1 = $op1
/*  2807*/      OPC_MoveChild1,
/*  2808*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2810*/      OPC_MoveParent,
/*  2811*/      OPC_Scope, 25, /*->2838*/ // 10 children in Scope
/*  2813*/        OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2815*/        OPC_MoveParent,
/*  2816*/        OPC_RecordChild1, // #2 = $op2
/*  2817*/        OPC_MoveChild1,
/*  2818*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2820*/        OPC_MoveParent,
/*  2821*/        OPC_RecordChild2, // #3 = $op3
/*  2822*/        OPC_MoveChild2,
/*  2823*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2825*/        OPC_MoveParent,
/*  2826*/        OPC_CheckType, MVT::i32,
/*  2828*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_7), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_7:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2838*/      /*Scope*/ 25, /*->2864*/
/*  2839*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  2841*/        OPC_MoveParent,
/*  2842*/        OPC_RecordChild1, // #2 = $op2
/*  2843*/        OPC_MoveChild1,
/*  2844*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2846*/        OPC_MoveParent,
/*  2847*/        OPC_RecordChild2, // #3 = $op3
/*  2848*/        OPC_MoveChild2,
/*  2849*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2851*/        OPC_MoveParent,
/*  2852*/        OPC_CheckType, MVT::i32,
/*  2854*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_8), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_8:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2864*/      /*Scope*/ 25, /*->2890*/
/*  2865*/        OPC_CheckChild2CondCode, ISD::SETGE,
/*  2867*/        OPC_MoveParent,
/*  2868*/        OPC_RecordChild1, // #2 = $op2
/*  2869*/        OPC_MoveChild1,
/*  2870*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2872*/        OPC_MoveParent,
/*  2873*/        OPC_RecordChild2, // #3 = $op3
/*  2874*/        OPC_MoveChild2,
/*  2875*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2877*/        OPC_MoveParent,
/*  2878*/        OPC_CheckType, MVT::i32,
/*  2880*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_9), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_9:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2890*/      /*Scope*/ 25, /*->2916*/
/*  2891*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  2893*/        OPC_MoveParent,
/*  2894*/        OPC_RecordChild1, // #2 = $op2
/*  2895*/        OPC_MoveChild1,
/*  2896*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2898*/        OPC_MoveParent,
/*  2899*/        OPC_RecordChild2, // #3 = $op3
/*  2900*/        OPC_MoveChild2,
/*  2901*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2903*/        OPC_MoveParent,
/*  2904*/        OPC_CheckType, MVT::i32,
/*  2906*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_10), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_10:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2916*/      /*Scope*/ 25, /*->2942*/
/*  2917*/        OPC_CheckChild2CondCode, ISD::SETLE,
/*  2919*/        OPC_MoveParent,
/*  2920*/        OPC_RecordChild1, // #2 = $op2
/*  2921*/        OPC_MoveChild1,
/*  2922*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2924*/        OPC_MoveParent,
/*  2925*/        OPC_RecordChild2, // #3 = $op3
/*  2926*/        OPC_MoveChild2,
/*  2927*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2929*/        OPC_MoveParent,
/*  2930*/        OPC_CheckType, MVT::i32,
/*  2932*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_11), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_11:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2942*/      /*Scope*/ 25, /*->2968*/
/*  2943*/        OPC_CheckChild2CondCode, ISD::SETLT,
/*  2945*/        OPC_MoveParent,
/*  2946*/        OPC_RecordChild1, // #2 = $op2
/*  2947*/        OPC_MoveChild1,
/*  2948*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2950*/        OPC_MoveParent,
/*  2951*/        OPC_RecordChild2, // #3 = $op3
/*  2952*/        OPC_MoveChild2,
/*  2953*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2955*/        OPC_MoveParent,
/*  2956*/        OPC_CheckType, MVT::i32,
/*  2958*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_12), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_12:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2968*/      /*Scope*/ 25, /*->2994*/
/*  2969*/        OPC_CheckChild2CondCode, ISD::SETUGE,
/*  2971*/        OPC_MoveParent,
/*  2972*/        OPC_RecordChild1, // #2 = $op2
/*  2973*/        OPC_MoveChild1,
/*  2974*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2976*/        OPC_MoveParent,
/*  2977*/        OPC_RecordChild2, // #3 = $op3
/*  2978*/        OPC_MoveChild2,
/*  2979*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2981*/        OPC_MoveParent,
/*  2982*/        OPC_CheckType, MVT::i32,
/*  2984*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_13), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_13:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2994*/      /*Scope*/ 25, /*->3020*/
/*  2995*/        OPC_CheckChild2CondCode, ISD::SETUGT,
/*  2997*/        OPC_MoveParent,
/*  2998*/        OPC_RecordChild1, // #2 = $op2
/*  2999*/        OPC_MoveChild1,
/*  3000*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3002*/        OPC_MoveParent,
/*  3003*/        OPC_RecordChild2, // #3 = $op3
/*  3004*/        OPC_MoveChild2,
/*  3005*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3007*/        OPC_MoveParent,
/*  3008*/        OPC_CheckType, MVT::i32,
/*  3010*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_14), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_14:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3020*/      /*Scope*/ 25, /*->3046*/
/*  3021*/        OPC_CheckChild2CondCode, ISD::SETULE,
/*  3023*/        OPC_MoveParent,
/*  3024*/        OPC_RecordChild1, // #2 = $op2
/*  3025*/        OPC_MoveChild1,
/*  3026*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3028*/        OPC_MoveParent,
/*  3029*/        OPC_RecordChild2, // #3 = $op3
/*  3030*/        OPC_MoveChild2,
/*  3031*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3033*/        OPC_MoveParent,
/*  3034*/        OPC_CheckType, MVT::i32,
/*  3036*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_15), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_15:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3046*/      /*Scope*/ 25, /*->3072*/
/*  3047*/        OPC_CheckChild2CondCode, ISD::SETULT,
/*  3049*/        OPC_MoveParent,
/*  3050*/        OPC_RecordChild1, // #2 = $op2
/*  3051*/        OPC_MoveChild1,
/*  3052*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3054*/        OPC_MoveParent,
/*  3055*/        OPC_RecordChild2, // #3 = $op3
/*  3056*/        OPC_MoveChild2,
/*  3057*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3059*/        OPC_MoveParent,
/*  3060*/        OPC_CheckType, MVT::i32,
/*  3062*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_16), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_16:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3072*/      0, /*End of Scope*/
/*  3073*/    /*Scope*/ 26, /*->3100*/
/*  3074*/      OPC_RecordChild0, // #0 = $op0
/*  3075*/      OPC_MoveChild0,
/*  3076*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3078*/      OPC_MoveParent,
/*  3079*/      OPC_RecordChild1, // #1 = $op1
/*  3080*/      OPC_MoveChild1,
/*  3081*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3083*/      OPC_MoveParent,
/*  3084*/      OPC_RecordChild2, // #2 = $op2
/*  3085*/      OPC_MoveChild2,
/*  3086*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3088*/      OPC_MoveParent,
/*  3089*/      OPC_CheckType, MVT::i32,
/*  3091*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_17), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (rule_SELECT_17:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3100*/    0, /*End of Scope*/
/*  3101*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::ADD),// ->3142
/*  3104*/    OPC_RecordChild0, // #0 = $op1
/*  3105*/    OPC_MoveChild0,
/*  3106*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3108*/    OPC_MoveParent,
/*  3109*/    OPC_RecordChild1, // #1 = $op2
/*  3110*/    OPC_MoveChild1,
/*  3111*/    OPC_Scope, 16, /*->3129*/ // 2 children in Scope
/*  3113*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3116*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3118*/      OPC_MoveParent,
/*  3119*/      OPC_EmitConvertToTarget, 1,
/*  3121*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3129*/    /*Scope*/ 11, /*->3141*/
/*  3130*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3132*/      OPC_MoveParent,
/*  3133*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_add__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3141*/    0, /*End of Scope*/
/*  3142*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::AND),// ->3183
/*  3145*/    OPC_RecordChild0, // #0 = $op1
/*  3146*/    OPC_MoveChild0,
/*  3147*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3149*/    OPC_MoveParent,
/*  3150*/    OPC_RecordChild1, // #1 = $op2
/*  3151*/    OPC_MoveChild1,
/*  3152*/    OPC_Scope, 16, /*->3170*/ // 2 children in Scope
/*  3154*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3157*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3159*/      OPC_MoveParent,
/*  3160*/      OPC_EmitConvertToTarget, 1,
/*  3162*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3170*/    /*Scope*/ 11, /*->3182*/
/*  3171*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3173*/      OPC_MoveParent,
/*  3174*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_and__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3182*/    0, /*End of Scope*/
/*  3183*/  /*SwitchOpcode*/ 50, TARGET_VAL(ISD::OR),// ->3236
/*  3186*/    OPC_RecordChild0, // #0 = $op1
/*  3187*/    OPC_MoveChild0,
/*  3188*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3190*/    OPC_MoveParent,
/*  3191*/    OPC_RecordChild1, // #1 = $op2
/*  3192*/    OPC_MoveChild1,
/*  3193*/    OPC_Scope, 28, /*->3223*/ // 2 children in Scope
/*  3195*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3198*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3200*/      OPC_MoveParent,
/*  3201*/      OPC_EmitConvertToTarget, 1,
/*  3203*/      OPC_Scope, 8, /*->3213*/ // 2 children in Scope
/*  3205*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3213*/      /*Scope*/ 8, /*->3222*/
/*  3214*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_ori_emulation_alias__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3222*/      0, /*End of Scope*/
/*  3223*/    /*Scope*/ 11, /*->3235*/
/*  3224*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3226*/      OPC_MoveParent,
/*  3227*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_or__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3235*/    0, /*End of Scope*/
/*  3236*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::XOR),// ->3277
/*  3239*/    OPC_RecordChild0, // #0 = $op1
/*  3240*/    OPC_MoveChild0,
/*  3241*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3243*/    OPC_MoveParent,
/*  3244*/    OPC_RecordChild1, // #1 = $op2
/*  3245*/    OPC_MoveChild1,
/*  3246*/    OPC_Scope, 16, /*->3264*/ // 2 children in Scope
/*  3248*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3251*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3253*/      OPC_MoveParent,
/*  3254*/      OPC_EmitConvertToTarget, 1,
/*  3256*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3264*/    /*Scope*/ 11, /*->3276*/
/*  3265*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3267*/      OPC_MoveParent,
/*  3268*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3276*/    0, /*End of Scope*/
/*  3277*/  /*SwitchOpcode*/ 21, TARGET_VAL(ISD::CALLSEQ_START),// ->3301
/*  3280*/    OPC_RecordNode, // #0 = 'callseq_start' chained node
/*  3281*/    OPC_RecordChild1, // #1 = $InSize
/*  3282*/    OPC_MoveChild1,
/*  3283*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3286*/    OPC_MoveParent,
/*  3287*/    OPC_RecordChild2, // #2 = $OutSize
/*  3288*/    OPC_MoveChild2,
/*  3289*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3292*/    OPC_MoveParent,
/*  3293*/    OPC_EmitMergeInputChains1_0,
/*  3294*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLSTART), 0|OPFL_Chain|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_start (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLSTART (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3301*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::CALLSEQ_END),// ->3326
/*  3304*/    OPC_RecordNode, // #0 = 'callseq_end' chained node
/*  3305*/    OPC_CaptureGlueInput,
/*  3306*/    OPC_RecordChild1, // #1 = $InSize
/*  3307*/    OPC_MoveChild1,
/*  3308*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3311*/    OPC_MoveParent,
/*  3312*/    OPC_RecordChild2, // #2 = $OutSize
/*  3313*/    OPC_MoveChild2,
/*  3314*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3317*/    OPC_MoveParent,
/*  3318*/    OPC_EmitMergeInputChains1_0,
/*  3319*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLEND), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_end (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLEND (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3326*/  /*SwitchOpcode*/ 12, TARGET_VAL(ISD::INTRINSIC_VOID),// ->3341
/*  3329*/    OPC_RecordNode, // #0 = 'intrinsic_void' chained node
/*  3330*/    OPC_CheckChild1Integer, 101|128,1/*229*/, 
/*  3333*/    OPC_RecordChild2, // #1 = $op0
/*  3334*/    OPC_EmitMergeInputChains1_0,
/*  3335*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::hwloop_set_loop_iterations), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (intrinsic_void 229:{ *:[iPTR] }, regs:{ *:[i32] }:$op0) - Complexity = 8
              // Dst: (hwloop_set_loop_iterations regs:{ *:[i32] }:$op0)
/*  3341*/  /*SwitchOpcode*/ 92|128,1/*220*/, TARGET_VAL(ISD::Constant),// ->3565
/*  3345*/    OPC_Scope, 109, /*->3456*/ // 5 children in Scope
/*  3347*/      OPC_CheckInteger, 0, 
/*  3349*/      OPC_Scope, 6, /*->3357*/ // 15 children in Scope
/*  3351*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_mv_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_mv_alias__regs__reg0__:{ *:[i32] })
/*  3357*/      /*Scope*/ 6, /*->3364*/
/*  3358*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_snez_alias__regs__reg0__:{ *:[i32] })
/*  3364*/      /*Scope*/ 6, /*->3371*/
/*  3365*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_add__regs__reg0__reg0__:{ *:[i32] })
/*  3371*/      /*Scope*/ 6, /*->3378*/
/*  3372*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_and__regs__reg0__reg0__:{ *:[i32] })
/*  3378*/      /*Scope*/ 6, /*->3385*/
/*  3379*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_or__regs__reg0__reg0__:{ *:[i32] })
/*  3385*/      /*Scope*/ 6, /*->3392*/
/*  3386*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__reg0__reg0__:{ *:[i32] })
/*  3392*/      /*Scope*/ 6, /*->3399*/
/*  3393*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_slt__regs__reg0__reg0__:{ *:[i32] })
/*  3399*/      /*Scope*/ 6, /*->3406*/
/*  3400*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sltu__regs__reg0__reg0__:{ *:[i32] })
/*  3406*/      /*Scope*/ 6, /*->3413*/
/*  3407*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__reg0__reg0__:{ *:[i32] })
/*  3413*/      /*Scope*/ 6, /*->3420*/
/*  3414*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__reg0__reg0__:{ *:[i32] })
/*  3420*/      /*Scope*/ 6, /*->3427*/
/*  3421*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__reg0__:{ *:[i32] })
/*  3427*/      /*Scope*/ 6, /*->3434*/
/*  3428*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_xor__regs__reg0__reg0__:{ *:[i32] })
/*  3434*/      /*Scope*/ 6, /*->3441*/
/*  3435*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_neg_alias__regs__reg0__:{ *:[i32] })
/*  3441*/      /*Scope*/ 6, /*->3448*/
/*  3442*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3448*/      /*Scope*/ 6, /*->3455*/
/*  3449*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3455*/      0, /*End of Scope*/
/*  3456*/    /*Scope*/ 25, /*->3482*/
/*  3457*/      OPC_CheckInteger, 1, 
/*  3459*/      OPC_Scope, 6, /*->3467*/ // 3 children in Scope
/*  3461*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 7
                  // Dst: (i_seqz_alias__regs__reg0__:{ *:[i32] })
/*  3467*/      /*Scope*/ 6, /*->3474*/
/*  3468*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3474*/      /*Scope*/ 6, /*->3481*/
/*  3475*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3481*/      0, /*End of Scope*/
/*  3482*/    /*Scope*/ 46, /*->3529*/
/*  3483*/      OPC_RecordNode, // #0 = $op1
/*  3484*/      OPC_Scope, 30, /*->3516*/ // 2 children in Scope
/*  3486*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3488*/        OPC_EmitConvertToTarget, 0,
/*  3490*/        OPC_Scope, 7, /*->3499*/ // 3 children in Scope
/*  3492*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3499*/        /*Scope*/ 7, /*->3507*/
/*  3500*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3507*/        /*Scope*/ 7, /*->3515*/
/*  3508*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3515*/        0, /*End of Scope*/
/*  3516*/      /*Scope*/ 11, /*->3528*/
/*  3517*/        OPC_CheckPredicate, 14, // Predicate_Trunc12_i32imm
/*  3519*/        OPC_EmitConvertToTarget, 0,
/*  3521*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_lui__opc_lui__regs__imm20_s12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_Trunc12_i32imm>>:$op1 - Complexity = 5
                  // Dst: (i_lui__opc_lui__regs__imm20_s12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3528*/      0, /*End of Scope*/
/*  3529*/    /*Scope*/ 8, /*->3538*/
/*  3530*/      OPC_CheckInteger, 0, 
/*  3532*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__), 0,
                    MVT::i32, 0/*#Ops*/, 
                // Src: 0:{ *:[i32] } - Complexity = 5
                // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__:{ *:[i32] })
/*  3538*/    /*Scope*/ 25, /*->3564*/
/*  3539*/      OPC_RecordNode, // #0 = $op1
/*  3540*/      OPC_Scope, 11, /*->3553*/ // 2 children in Scope
/*  3542*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3544*/        OPC_EmitConvertToTarget, 0,
/*  3546*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                  // Dst: (i_ori_emulation_alias__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3553*/      /*Scope*/ 9, /*->3563*/
/*  3554*/        OPC_EmitConvertToTarget, 0,
/*  3556*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] }):$op1 - Complexity = 3
                  // Dst: (e_movi32__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3563*/      0, /*End of Scope*/
/*  3564*/    0, /*End of Scope*/
/*  3565*/  /*SwitchOpcode*/ 15, TARGET_VAL(ISD::BRIND),// ->3583
/*  3568*/    OPC_RecordNode, // #0 = 'brind' chained node
/*  3569*/    OPC_RecordChild1, // #1 = $op0
/*  3570*/    OPC_MoveChild1,
/*  3571*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3573*/    OPC_CheckType, MVT::i32,
/*  3575*/    OPC_MoveParent,
/*  3576*/    OPC_EmitMergeInputChains1_0,
/*  3577*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (brind regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
              // Dst: (i_jump_reg_alias__regs__ regs:{ *:[i32] }:$op0)
/*  3583*/  /*SwitchOpcode*/ 82, TARGET_VAL(CodasipISD::GAWrap),// ->3668
/*  3586*/    OPC_RecordChild0, // #0 = $op1
/*  3587*/    OPC_MoveChild0,
/*  3588*/    OPC_SwitchOpcode /*6 cases */, 10, TARGET_VAL(ISD::TargetGlobalAddress),// ->3602
/*  3592*/      OPC_MoveParent,
/*  3593*/      OPC_CheckType, MVT::i32,
/*  3595*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__GA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__GA:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1)
/*  3602*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetExternalSymbol),// ->3615
/*  3605*/      OPC_MoveParent,
/*  3606*/      OPC_CheckType, MVT::i32,
/*  3608*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__ES), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1)
/*  3615*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::MCSymbol),// ->3628
/*  3618*/      OPC_MoveParent,
/*  3619*/      OPC_CheckType, MVT::i32,
/*  3621*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__MC), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op1)
/*  3628*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetBlockAddress),// ->3641
/*  3631*/      OPC_MoveParent,
/*  3632*/      OPC_CheckType, MVT::i32,
/*  3634*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__BA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1)
/*  3641*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetJumpTable),// ->3654
/*  3644*/      OPC_MoveParent,
/*  3645*/      OPC_CheckType, MVT::i32,
/*  3647*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__JT), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__JT:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1)
/*  3654*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetConstantPool),// ->3667
/*  3657*/      OPC_MoveParent,
/*  3658*/      OPC_CheckType, MVT::i32,
/*  3660*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__CP), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__CP:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1)
/*  3667*/    0, // EndSwitchOpcode
/*  3668*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::BR),// ->3730
/*  3671*/    OPC_RecordNode, // #0 = 'br' chained node
/*  3672*/    OPC_RecordChild1, // #1 = $op0
/*  3673*/    OPC_MoveChild1,
/*  3674*/    OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3677*/    OPC_MoveParent,
/*  3678*/    OPC_EmitMergeInputChains1_0,
/*  3679*/    OPC_Scope, 6, /*->3687*/ // 7 children in Scope
/*  3681*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 5
                // Dst: (i_jmp_rel_alias__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3687*/    /*Scope*/ 6, /*->3694*/
/*  3688*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3694*/    /*Scope*/ 6, /*->3701*/
/*  3695*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3701*/    /*Scope*/ 6, /*->3708*/
/*  3702*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3708*/    /*Scope*/ 6, /*->3715*/
/*  3709*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3715*/    /*Scope*/ 6, /*->3722*/
/*  3716*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__ (bb:{ *:[Other] }):$op0)
/*  3722*/    /*Scope*/ 6, /*->3729*/
/*  3723*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_jal__opc_jal__reg0__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3729*/    0, /*End of Scope*/
/*  3730*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::Ret),// ->3741
/*  3733*/    OPC_RecordNode, // #0 = 'Return' chained node
/*  3734*/    OPC_CaptureGlueInput,
/*  3735*/    OPC_EmitMergeInputChains1_0,
/*  3736*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs___RET_EMUL_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (Return) - Complexity = 5
              // Dst: (i_jump_reg_alias__regs___RET_EMUL_)
/*  3741*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::MRET),// ->3752
/*  3744*/    OPC_RecordNode, // #0 = 'MRet' chained node
/*  3745*/    OPC_CaptureGlueInput,
/*  3746*/    OPC_EmitMergeInputChains1_0,
/*  3747*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_xret__opc_mret__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (MRet) - Complexity = 3
              // Dst: (i_xret__opc_mret__)
/*  3752*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_LONGJMP),// ->3766
/*  3755*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_longjmp' chained node
/*  3756*/    OPC_RecordChild1, // #1 = $op0
/*  3757*/    OPC_CheckChild1Type, MVT::i32,
/*  3759*/    OPC_EmitMergeInputChains1_0,
/*  3760*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SjLj_LongJmp), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_longjmp regs:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SjLj_LongJmp regs:{ *:[i32] }:$op0)
/*  3766*/  /*SwitchOpcode*/ 12, TARGET_VAL(CodasipISD::EH_SJLJ_SETJMP),// ->3781
/*  3769*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setjmp' chained node
/*  3770*/    OPC_RecordChild1, // #1 = $op1
/*  3771*/    OPC_CheckChild1Type, MVT::i32,
/*  3773*/    OPC_EmitMergeInputChains1_0,
/*  3774*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::EH_SjLj_SetJmp), 0|OPFL_Chain,
                  MVT::i32, 1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setjmp:{ *:[i32] } regs:{ *:[i32] }:$op1) - Complexity = 3
              // Dst: (EH_SjLj_SetJmp:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  3781*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_SETUP_DISPATCH),// ->3795
/*  3784*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setup_dispatch' chained node
/*  3785*/    OPC_RecordChild1, // #1 = $op0
/*  3786*/    OPC_CheckChild1Type, MVT::i32,
/*  3788*/    OPC_EmitMergeInputChains1_0,
/*  3789*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SJLJ_SETUP_DISPATCH), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setup_dispatch regs:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SJLJ_SETUP_DISPATCH regs:{ *:[i32] }:$op0)
/*  3795*/  0, // EndSwitchOpcode
    0
  }; // Total Array size is 3797 bytes

  // Opcode Histogram:
  // #OPC_Scope                                = 67
  // #OPC_RecordNode                           = 18
  // #OPC_RecordChild                          = 122
  // #OPC_RecordMemRef                         = 2
  // #OPC_CaptureGlueInput                     = 5
  // #OPC_MoveChild                            = 132
  // #OPC_MoveParent                           = 191
  // #OPC_CheckSame                            = 0
  // #OPC_CheckChildSame                       = 0
  // #OPC_CheckPatternPredicate                = 0
  // #OPC_CheckPredicate                       = 235
  // #OPC_CheckOpcode                          = 64
  // #OPC_SwitchOpcode                         = 4
  // #OPC_CheckType                            = 43
  // #OPC_SwitchType                           = 0
  // #OPC_CheckChildType                       = 9
  // #OPC_CheckInteger                         = 3
  // #OPC_CheckChildInteger                    = 14
  // #OPC_CheckCondCode                        = 0
  // #OPC_CheckChild2CondCode                  = 54
  // #OPC_CheckValueType                       = 0
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
  // #OPC_MorphNodeTo                          = 216

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
    // Predicate_sext12To32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,12,1,0);
  }
  case 2: { 
    // Predicate_unindexedstore
    SDNode *N = Node;
    (void)N;
if (cast<StoreSDNode>(N)->getAddressingMode() != ISD::UNINDEXED) return false;
return true;

  }
  case 3: { 
    // Predicate_store
    SDNode *N = Node;
    (void)N;
 if (cast<StoreSDNode>(N)->isTruncatingStore()) return false;
return true;

  }
  case 4: { 
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
  case 5: { 
    // Predicate_truncstore
    SDNode *N = Node;
    (void)N;
 if (!cast<StoreSDNode>(N)->isTruncatingStore()) return false;
return true;

  }
  case 6: { 
    // Predicate_truncstorei8
    // Predicate_sextloadi8
    // Predicate_zextloadi8
    // Predicate_extloadi8
    SDNode *N = Node;
    (void)N;
if (cast<MemSDNode>(N)->getMemoryVT() != MVT::i8) return false;
return true;

  }
  case 7: { 
    // Predicate_truncstorei16
    // Predicate_sextloadi16
    // Predicate_zextloadi16
    // Predicate_extloadi16
    SDNode *N = Node;
    (void)N;
if (cast<MemSDNode>(N)->getMemoryVT() != MVT::i16) return false;
return true;

  }
  case 8: { 
    // Predicate_zext5To32imm
    int64_t Imm = cast<ConstantSDNode>(Node)->getSExtValue();
return CheckImm(Imm,5,0,0);
  }
  case 9: { 
    // Predicate_unindexedload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getAddressingMode() != ISD::UNINDEXED) return false;
return true;

  }
  case 10: { 
    // Predicate_sextload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::SEXTLOAD) return false;
return true;

  }
  case 11: { 
    // Predicate_zextload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::ZEXTLOAD) return false;
return true;

  }
  case 12: { 
    // Predicate_load
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::NON_EXTLOAD) return false;
return true;

  }
  case 13: { 
    // Predicate_extload
    SDNode *N = Node;
    (void)N;
if (cast<LoadSDNode>(N)->getExtensionType() != ISD::EXTLOAD) return false;
return true;

  }
  case 14: { 
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
