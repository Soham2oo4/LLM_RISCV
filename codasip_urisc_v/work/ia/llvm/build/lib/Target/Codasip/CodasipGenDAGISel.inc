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
/*   712*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::SRA),// ->774
/*   715*/    OPC_RecordChild0, // #0 = $op1
/*   716*/    OPC_MoveChild0,
/*   717*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   719*/    OPC_MoveParent,
/*   720*/    OPC_Scope, 17, /*->739*/ // 2 children in Scope
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
/*   739*/    /*Scope*/ 33, /*->773*/
/*   740*/      OPC_RecordChild1, // #1 = $op2
/*   741*/      OPC_MoveChild1,
/*   742*/      OPC_Scope, 16, /*->760*/ // 2 children in Scope
/*   744*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   747*/        OPC_CheckPredicate, 8, // Predicate_zext5To32imm
/*   749*/        OPC_MoveParent,
/*   750*/        OPC_EmitConvertToTarget, 1,
/*   752*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   760*/      /*Scope*/ 11, /*->772*/
/*   761*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   763*/        OPC_MoveParent,
/*   764*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   772*/      0, /*End of Scope*/
/*   773*/    0, /*End of Scope*/
/*   774*/  /*SwitchOpcode*/ 69, TARGET_VAL(ISD::SRL),// ->846
/*   777*/    OPC_RecordChild0, // #0 = $op1
/*   778*/    OPC_MoveChild0,
/*   779*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   781*/    OPC_MoveParent,
/*   782*/    OPC_Scope, 17, /*->801*/ // 3 children in Scope
/*   784*/      OPC_MoveChild1,
/*   785*/      OPC_CheckAndImm, 31, 
/*   787*/      OPC_RecordChild0, // #1 = $op2
/*   788*/      OPC_MoveChild0,
/*   789*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   791*/      OPC_MoveParent,
/*   792*/      OPC_MoveParent,
/*   793*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   801*/    /*Scope*/ 9, /*->811*/
/*   802*/      OPC_CheckChild1Integer, 31, 
/*   804*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 31:{ *:[i32] }) - Complexity = 10
                // Dst: (i_comp_3reg__opc_slt__regs__regs__reg0__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*   811*/    /*Scope*/ 33, /*->845*/
/*   812*/      OPC_RecordChild1, // #1 = $op2
/*   813*/      OPC_MoveChild1,
/*   814*/      OPC_Scope, 16, /*->832*/ // 2 children in Scope
/*   816*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   819*/        OPC_CheckPredicate, 8, // Predicate_zext5To32imm
/*   821*/        OPC_MoveParent,
/*   822*/        OPC_EmitConvertToTarget, 1,
/*   824*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   832*/      /*Scope*/ 11, /*->844*/
/*   833*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   835*/        OPC_MoveParent,
/*   836*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   844*/      0, /*End of Scope*/
/*   845*/    0, /*End of Scope*/
/*   846*/  /*SwitchOpcode*/ 74|128,4/*586*/, TARGET_VAL(ISD::BRCOND),// ->1436
/*   850*/    OPC_RecordNode, // #0 = 'brcond' chained node
/*   851*/    OPC_Scope, 49|128,4/*561*/, /*->1415*/ // 2 children in Scope
/*   854*/      OPC_MoveChild1,
/*   855*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*   858*/      OPC_RecordChild0, // #1 = $op0
/*   859*/      OPC_MoveChild0,
/*   860*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   862*/      OPC_Scope, 91|128,2/*347*/, /*->1212*/ // 2 children in Scope
/*   865*/        OPC_MoveParent,
/*   866*/        OPC_Scope, 114, /*->982*/ // 4 children in Scope
/*   868*/          OPC_CheckChild1Integer, 0, 
/*   870*/          OPC_Scope, 36, /*->908*/ // 4 children in Scope
/*   872*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*   874*/            OPC_MoveParent,
/*   875*/            OPC_RecordChild2, // #2 = $op1
/*   876*/            OPC_MoveChild2,
/*   877*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   880*/            OPC_MoveParent,
/*   881*/            OPC_EmitMergeInputChains1_0,
/*   882*/            OPC_Scope, 7, /*->891*/ // 3 children in Scope
/*   884*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   891*/            /*Scope*/ 7, /*->899*/
/*   892*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   899*/            /*Scope*/ 7, /*->907*/
/*   900*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   907*/            0, /*End of Scope*/
/*   908*/          /*Scope*/ 17, /*->926*/
/*   909*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*   911*/            OPC_MoveParent,
/*   912*/            OPC_RecordChild2, // #2 = $op1
/*   913*/            OPC_MoveChild2,
/*   914*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   917*/            OPC_MoveParent,
/*   918*/            OPC_EmitMergeInputChains1_0,
/*   919*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   926*/          /*Scope*/ 17, /*->944*/
/*   927*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*   929*/            OPC_MoveParent,
/*   930*/            OPC_RecordChild2, // #2 = $op1
/*   931*/            OPC_MoveChild2,
/*   932*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   935*/            OPC_MoveParent,
/*   936*/            OPC_EmitMergeInputChains1_0,
/*   937*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   944*/          /*Scope*/ 36, /*->981*/
/*   945*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*   947*/            OPC_MoveParent,
/*   948*/            OPC_RecordChild2, // #2 = $op1
/*   949*/            OPC_MoveChild2,
/*   950*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   953*/            OPC_MoveParent,
/*   954*/            OPC_EmitMergeInputChains1_0,
/*   955*/            OPC_Scope, 7, /*->964*/ // 3 children in Scope
/*   957*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   964*/            /*Scope*/ 7, /*->972*/
/*   965*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   972*/            /*Scope*/ 7, /*->980*/
/*   973*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*   980*/            0, /*End of Scope*/
/*   981*/          0, /*End of Scope*/
/*   982*/        /*Scope*/ 19, /*->1002*/
/*   983*/          OPC_CheckChild1Integer, 1, 
/*   985*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*   987*/          OPC_MoveParent,
/*   988*/          OPC_RecordChild2, // #2 = $op1
/*   989*/          OPC_MoveChild2,
/*   990*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*   993*/          OPC_MoveParent,
/*   994*/          OPC_EmitMergeInputChains1_0,
/*   995*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 1:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1002*/        /*Scope*/ 28, /*->1031*/
/*  1003*/          OPC_CheckChild1Integer, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*  1014*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1016*/          OPC_MoveParent,
/*  1017*/          OPC_RecordChild2, // #2 = $op1
/*  1018*/          OPC_MoveChild2,
/*  1019*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1022*/          OPC_MoveParent,
/*  1023*/          OPC_EmitMergeInputChains1_0,
/*  1024*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, -1:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1031*/        /*Scope*/ 50|128,1/*178*/, /*->1211*/
/*  1033*/          OPC_RecordChild1, // #2 = $op1
/*  1034*/          OPC_MoveChild1,
/*  1035*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1038*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1040*/          OPC_MoveParent,
/*  1041*/          OPC_Scope, 27, /*->1070*/ // 6 children in Scope
/*  1043*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1045*/            OPC_MoveParent,
/*  1046*/            OPC_RecordChild2, // #3 = $op2
/*  1047*/            OPC_MoveChild2,
/*  1048*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1051*/            OPC_MoveParent,
/*  1052*/            OPC_EmitMergeInputChains1_0,
/*  1053*/            OPC_EmitConvertToTarget, 2,
/*  1055*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1063*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1070*/          /*Scope*/ 27, /*->1098*/
/*  1071*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1073*/            OPC_MoveParent,
/*  1074*/            OPC_RecordChild2, // #3 = $op2
/*  1075*/            OPC_MoveChild2,
/*  1076*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1079*/            OPC_MoveParent,
/*  1080*/            OPC_EmitMergeInputChains1_0,
/*  1081*/            OPC_EmitConvertToTarget, 2,
/*  1083*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1091*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1098*/          /*Scope*/ 27, /*->1126*/
/*  1099*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1101*/            OPC_MoveParent,
/*  1102*/            OPC_RecordChild2, // #3 = $op2
/*  1103*/            OPC_MoveChild2,
/*  1104*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1107*/            OPC_MoveParent,
/*  1108*/            OPC_EmitMergeInputChains1_0,
/*  1109*/            OPC_EmitConvertToTarget, 2,
/*  1111*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1119*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1126*/          /*Scope*/ 27, /*->1154*/
/*  1127*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1129*/            OPC_MoveParent,
/*  1130*/            OPC_RecordChild2, // #3 = $op2
/*  1131*/            OPC_MoveChild2,
/*  1132*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1135*/            OPC_MoveParent,
/*  1136*/            OPC_EmitMergeInputChains1_0,
/*  1137*/            OPC_EmitConvertToTarget, 2,
/*  1139*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1147*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1154*/          /*Scope*/ 27, /*->1182*/
/*  1155*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1157*/            OPC_MoveParent,
/*  1158*/            OPC_RecordChild2, // #3 = $op2
/*  1159*/            OPC_MoveChild2,
/*  1160*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1163*/            OPC_MoveParent,
/*  1164*/            OPC_EmitMergeInputChains1_0,
/*  1165*/            OPC_EmitConvertToTarget, 2,
/*  1167*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1175*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1182*/          /*Scope*/ 27, /*->1210*/
/*  1183*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1185*/            OPC_MoveParent,
/*  1186*/            OPC_RecordChild2, // #3 = $op2
/*  1187*/            OPC_MoveChild2,
/*  1188*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1191*/            OPC_MoveParent,
/*  1192*/            OPC_EmitMergeInputChains1_0,
/*  1193*/            OPC_EmitConvertToTarget, 2,
/*  1195*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1203*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1210*/          0, /*End of Scope*/
/*  1211*/        0, /*End of Scope*/
/*  1212*/      /*Scope*/ 72|128,1/*200*/, /*->1414*/
/*  1214*/        OPC_CheckType, MVT::i32,
/*  1216*/        OPC_MoveParent,
/*  1217*/        OPC_RecordChild1, // #2 = $op1
/*  1218*/        OPC_MoveChild1,
/*  1219*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1221*/        OPC_MoveParent,
/*  1222*/        OPC_Scope, 18, /*->1242*/ // 10 children in Scope
/*  1224*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1226*/          OPC_MoveParent,
/*  1227*/          OPC_RecordChild2, // #3 = $op2
/*  1228*/          OPC_MoveChild2,
/*  1229*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1232*/          OPC_MoveParent,
/*  1233*/          OPC_EmitMergeInputChains1_0,
/*  1234*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_beq__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1242*/        /*Scope*/ 18, /*->1261*/
/*  1243*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1245*/          OPC_MoveParent,
/*  1246*/          OPC_RecordChild2, // #3 = $op2
/*  1247*/          OPC_MoveChild2,
/*  1248*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1251*/          OPC_MoveParent,
/*  1252*/          OPC_EmitMergeInputChains1_0,
/*  1253*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1261*/        /*Scope*/ 18, /*->1280*/
/*  1262*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1264*/          OPC_MoveParent,
/*  1265*/          OPC_RecordChild2, // #3 = $op2
/*  1266*/          OPC_MoveChild2,
/*  1267*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1270*/          OPC_MoveParent,
/*  1271*/          OPC_EmitMergeInputChains1_0,
/*  1272*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1280*/        /*Scope*/ 18, /*->1299*/
/*  1281*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1283*/          OPC_MoveParent,
/*  1284*/          OPC_RecordChild2, // #3 = $op2
/*  1285*/          OPC_MoveChild2,
/*  1286*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1289*/          OPC_MoveParent,
/*  1290*/          OPC_EmitMergeInputChains1_0,
/*  1291*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1299*/        /*Scope*/ 18, /*->1318*/
/*  1300*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1302*/          OPC_MoveParent,
/*  1303*/          OPC_RecordChild2, // #3 = $op2
/*  1304*/          OPC_MoveChild2,
/*  1305*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1308*/          OPC_MoveParent,
/*  1309*/          OPC_EmitMergeInputChains1_0,
/*  1310*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1318*/        /*Scope*/ 18, /*->1337*/
/*  1319*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1321*/          OPC_MoveParent,
/*  1322*/          OPC_RecordChild2, // #3 = $op2
/*  1323*/          OPC_MoveChild2,
/*  1324*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1327*/          OPC_MoveParent,
/*  1328*/          OPC_EmitMergeInputChains1_0,
/*  1329*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bne__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1337*/        /*Scope*/ 18, /*->1356*/
/*  1338*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1340*/          OPC_MoveParent,
/*  1341*/          OPC_RecordChild2, // #3 = $op2
/*  1342*/          OPC_MoveChild2,
/*  1343*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1346*/          OPC_MoveParent,
/*  1347*/          OPC_EmitMergeInputChains1_0,
/*  1348*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1356*/        /*Scope*/ 18, /*->1375*/
/*  1357*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  1359*/          OPC_MoveParent,
/*  1360*/          OPC_RecordChild2, // #3 = $op2
/*  1361*/          OPC_MoveChild2,
/*  1362*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1365*/          OPC_MoveParent,
/*  1366*/          OPC_EmitMergeInputChains1_0,
/*  1367*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1375*/        /*Scope*/ 18, /*->1394*/
/*  1376*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1378*/          OPC_MoveParent,
/*  1379*/          OPC_RecordChild2, // #3 = $op2
/*  1380*/          OPC_MoveChild2,
/*  1381*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1384*/          OPC_MoveParent,
/*  1385*/          OPC_EmitMergeInputChains1_0,
/*  1386*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1394*/        /*Scope*/ 18, /*->1413*/
/*  1395*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1397*/          OPC_MoveParent,
/*  1398*/          OPC_RecordChild2, // #3 = $op2
/*  1399*/          OPC_MoveChild2,
/*  1400*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1403*/          OPC_MoveParent,
/*  1404*/          OPC_EmitMergeInputChains1_0,
/*  1405*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1413*/        0, /*End of Scope*/
/*  1414*/      0, /*End of Scope*/
/*  1415*/    /*Scope*/ 19, /*->1435*/
/*  1416*/      OPC_RecordChild1, // #1 = $op0
/*  1417*/      OPC_MoveChild1,
/*  1418*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1420*/      OPC_MoveParent,
/*  1421*/      OPC_RecordChild2, // #2 = $op1
/*  1422*/      OPC_MoveChild2,
/*  1423*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1426*/      OPC_MoveParent,
/*  1427*/      OPC_EmitMergeInputChains1_0,
/*  1428*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                    2/*#Ops*/, 1, 2, 
                // Src: (brcond regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1) - Complexity = 4
                // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1)
/*  1435*/    0, /*End of Scope*/
/*  1436*/  /*SwitchOpcode*/ 8|128,3/*392*/, TARGET_VAL(ISD::SETCC),// ->1832
/*  1440*/    OPC_RecordChild0, // #0 = $op1
/*  1441*/    OPC_MoveChild0,
/*  1442*/    OPC_Scope, 34, /*->1478*/ // 2 children in Scope
/*  1444*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1447*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1449*/      OPC_MoveParent,
/*  1450*/      OPC_CheckChild1Integer, 0, 
/*  1452*/      OPC_Scope, 11, /*->1465*/ // 2 children in Scope
/*  1454*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  1456*/        OPC_EmitConvertToTarget, 0,
/*  1458*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1465*/      /*Scope*/ 11, /*->1477*/
/*  1466*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  1468*/        OPC_EmitConvertToTarget, 0,
/*  1470*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1477*/      0, /*End of Scope*/
/*  1478*/    /*Scope*/ 95|128,2/*351*/, /*->1831*/
/*  1480*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1482*/      OPC_Scope, 41|128,1/*169*/, /*->1654*/ // 2 children in Scope
/*  1485*/        OPC_MoveParent,
/*  1486*/        OPC_Scope, 44, /*->1532*/ // 2 children in Scope
/*  1488*/          OPC_CheckChild1Integer, 0, 
/*  1490*/          OPC_Scope, 9, /*->1501*/ // 4 children in Scope
/*  1492*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1494*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETEQ:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1501*/          /*Scope*/ 9, /*->1511*/
/*  1502*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1504*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1511*/          /*Scope*/ 9, /*->1521*/
/*  1512*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  1514*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_slt__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1521*/          /*Scope*/ 9, /*->1531*/
/*  1522*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1524*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_sltu__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1531*/          0, /*End of Scope*/
/*  1532*/        /*Scope*/ 120, /*->1653*/
/*  1533*/          OPC_RecordChild1, // #1 = $op2
/*  1534*/          OPC_MoveChild1,
/*  1535*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1538*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1540*/          OPC_MoveParent,
/*  1541*/          OPC_Scope, 12, /*->1555*/ // 6 children in Scope
/*  1543*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1545*/            OPC_EmitConvertToTarget, 1,
/*  1547*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETLT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1555*/          /*Scope*/ 12, /*->1568*/
/*  1556*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1558*/            OPC_EmitConvertToTarget, 1,
/*  1560*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETULT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1568*/          /*Scope*/ 19, /*->1588*/
/*  1569*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1571*/            OPC_EmitConvertToTarget, 1,
/*  1573*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1581*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1588*/          /*Scope*/ 19, /*->1608*/
/*  1589*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1591*/            OPC_EmitConvertToTarget, 1,
/*  1593*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1601*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1608*/          /*Scope*/ 19, /*->1628*/
/*  1609*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1611*/            OPC_EmitConvertToTarget, 1,
/*  1613*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1621*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1628*/          /*Scope*/ 23, /*->1652*/
/*  1629*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1631*/            OPC_EmitConvertToTarget, 1,
/*  1633*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1641*/            OPC_EmitInteger, MVT::i32, 1, 
/*  1644*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), 1:{ *:[i32] })
/*  1652*/          0, /*End of Scope*/
/*  1653*/        0, /*End of Scope*/
/*  1654*/      /*Scope*/ 46|128,1/*174*/, /*->1830*/
/*  1656*/        OPC_CheckType, MVT::i32,
/*  1658*/        OPC_MoveParent,
/*  1659*/        OPC_RecordChild1, // #1 = $op2
/*  1660*/        OPC_MoveChild1,
/*  1661*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1663*/        OPC_MoveParent,
/*  1664*/        OPC_Scope, 10, /*->1676*/ // 10 children in Scope
/*  1666*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1668*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETLT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1676*/        /*Scope*/ 10, /*->1687*/
/*  1677*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1679*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETULT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1687*/        /*Scope*/ 10, /*->1698*/
/*  1688*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1690*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1698*/        /*Scope*/ 10, /*->1709*/
/*  1699*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1701*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETUGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1709*/        /*Scope*/ 17, /*->1727*/
/*  1710*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1712*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1720*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1727*/        /*Scope*/ 17, /*->1745*/
/*  1728*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1730*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1738*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1745*/        /*Scope*/ 17, /*->1763*/
/*  1746*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1748*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1756*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1763*/        /*Scope*/ 21, /*->1785*/
/*  1764*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1766*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  1774*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1777*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  1785*/        /*Scope*/ 21, /*->1807*/
/*  1786*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1788*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1796*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1799*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1), 1:{ *:[i32] })
/*  1807*/        /*Scope*/ 21, /*->1829*/
/*  1808*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  1810*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  1818*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1821*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  1829*/        0, /*End of Scope*/
/*  1830*/      0, /*End of Scope*/
/*  1831*/    0, /*End of Scope*/
/*  1832*/  /*SwitchOpcode*/ 101|128,3/*485*/, TARGET_VAL(ISD::LOAD),// ->2321
/*  1836*/    OPC_RecordMemRef,
/*  1837*/    OPC_RecordNode, // #0 = 'ld' chained node
/*  1838*/    OPC_Scope, 45|128,1/*173*/, /*->2014*/ // 2 children in Scope
/*  1841*/      OPC_MoveChild1,
/*  1842*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  1845*/      OPC_RecordChild0, // #1 = $op1
/*  1846*/      OPC_MoveChild0,
/*  1847*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1849*/      OPC_MoveParent,
/*  1850*/      OPC_RecordChild1, // #2 = $op2
/*  1851*/      OPC_MoveChild1,
/*  1852*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1855*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1857*/      OPC_MoveParent,
/*  1858*/      OPC_MoveParent,
/*  1859*/      OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  1861*/      OPC_CheckType, MVT::i32,
/*  1863*/      OPC_Scope, 17, /*->1882*/ // 6 children in Scope
/*  1865*/        OPC_CheckPredicate, 10, // Predicate_sextload
/*  1867*/        OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  1869*/        OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  1871*/        OPC_EmitMergeInputChains1_0,
/*  1872*/        OPC_EmitConvertToTarget, 2,
/*  1874*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1882*/      /*Scope*/ 17, /*->1900*/
/*  1883*/        OPC_CheckPredicate, 11, // Predicate_zextload
/*  1885*/        OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  1887*/        OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  1889*/        OPC_EmitMergeInputChains1_0,
/*  1890*/        OPC_EmitConvertToTarget, 2,
/*  1892*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1900*/      /*Scope*/ 17, /*->1918*/
/*  1901*/        OPC_CheckPredicate, 10, // Predicate_sextload
/*  1903*/        OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  1905*/        OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  1907*/        OPC_EmitMergeInputChains1_0,
/*  1908*/        OPC_EmitConvertToTarget, 2,
/*  1910*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1918*/      /*Scope*/ 17, /*->1936*/
/*  1919*/        OPC_CheckPredicate, 11, // Predicate_zextload
/*  1921*/        OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  1923*/        OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  1925*/        OPC_EmitMergeInputChains1_0,
/*  1926*/        OPC_EmitConvertToTarget, 2,
/*  1928*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1936*/      /*Scope*/ 15, /*->1952*/
/*  1937*/        OPC_CheckPredicate, 12, // Predicate_load
/*  1939*/        OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  1941*/        OPC_EmitMergeInputChains1_0,
/*  1942*/        OPC_EmitConvertToTarget, 2,
/*  1944*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1952*/      /*Scope*/ 60, /*->2013*/
/*  1953*/        OPC_CheckPredicate, 13, // Predicate_extload
/*  1955*/        OPC_Scope, 27, /*->1984*/ // 2 children in Scope
/*  1957*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  1959*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  1961*/          OPC_EmitMergeInputChains1_0,
/*  1962*/          OPC_EmitConvertToTarget, 2,
/*  1964*/          OPC_Scope, 8, /*->1974*/ // 2 children in Scope
/*  1966*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1974*/          /*Scope*/ 8, /*->1983*/
/*  1975*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1983*/          0, /*End of Scope*/
/*  1984*/        /*Scope*/ 27, /*->2012*/
/*  1985*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  1987*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  1989*/          OPC_EmitMergeInputChains1_0,
/*  1990*/          OPC_EmitConvertToTarget, 2,
/*  1992*/          OPC_Scope, 8, /*->2002*/ // 2 children in Scope
/*  1994*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2002*/          /*Scope*/ 8, /*->2011*/
/*  2003*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2011*/          0, /*End of Scope*/
/*  2012*/        0, /*End of Scope*/
/*  2013*/      0, /*End of Scope*/
/*  2014*/    /*Scope*/ 48|128,2/*304*/, /*->2320*/
/*  2016*/      OPC_RecordChild1, // #1 = $op1
/*  2017*/      OPC_MoveChild1,
/*  2018*/      OPC_Scope, 24|128,1/*152*/, /*->2173*/ // 2 children in Scope
/*  2021*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2024*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  2026*/        OPC_MoveParent,
/*  2027*/        OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  2029*/        OPC_CheckType, MVT::i32,
/*  2031*/        OPC_Scope, 16, /*->2049*/ // 6 children in Scope
/*  2033*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2035*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2037*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2039*/          OPC_EmitMergeInputChains1_0,
/*  2040*/          OPC_EmitConvertToTarget, 1,
/*  2042*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2049*/        /*Scope*/ 16, /*->2066*/
/*  2050*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2052*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2054*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2056*/          OPC_EmitMergeInputChains1_0,
/*  2057*/          OPC_EmitConvertToTarget, 1,
/*  2059*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2066*/        /*Scope*/ 16, /*->2083*/
/*  2067*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2069*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2071*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2073*/          OPC_EmitMergeInputChains1_0,
/*  2074*/          OPC_EmitConvertToTarget, 1,
/*  2076*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2083*/        /*Scope*/ 16, /*->2100*/
/*  2084*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2086*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2088*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2090*/          OPC_EmitMergeInputChains1_0,
/*  2091*/          OPC_EmitConvertToTarget, 1,
/*  2093*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2100*/        /*Scope*/ 14, /*->2115*/
/*  2101*/          OPC_CheckPredicate, 12, // Predicate_load
/*  2103*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2105*/          OPC_EmitMergeInputChains1_0,
/*  2106*/          OPC_EmitConvertToTarget, 1,
/*  2108*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2115*/        /*Scope*/ 56, /*->2172*/
/*  2116*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2118*/          OPC_Scope, 25, /*->2145*/ // 2 children in Scope
/*  2120*/            OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2122*/            OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2124*/            OPC_EmitMergeInputChains1_0,
/*  2125*/            OPC_EmitConvertToTarget, 1,
/*  2127*/            OPC_Scope, 7, /*->2136*/ // 2 children in Scope
/*  2129*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2136*/            /*Scope*/ 7, /*->2144*/
/*  2137*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2144*/            0, /*End of Scope*/
/*  2145*/          /*Scope*/ 25, /*->2171*/
/*  2146*/            OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2148*/            OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2150*/            OPC_EmitMergeInputChains1_0,
/*  2151*/            OPC_EmitConvertToTarget, 1,
/*  2153*/            OPC_Scope, 7, /*->2162*/ // 2 children in Scope
/*  2155*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2162*/            /*Scope*/ 7, /*->2170*/
/*  2163*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2170*/            0, /*End of Scope*/
/*  2171*/          0, /*End of Scope*/
/*  2172*/        0, /*End of Scope*/
/*  2173*/      /*Scope*/ 16|128,1/*144*/, /*->2319*/
/*  2175*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2177*/        OPC_CheckType, MVT::i32,
/*  2179*/        OPC_MoveParent,
/*  2180*/        OPC_CheckPredicate, 9, // Predicate_unindexedload
/*  2182*/        OPC_CheckType, MVT::i32,
/*  2184*/        OPC_Scope, 14, /*->2200*/ // 9 children in Scope
/*  2186*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2188*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2190*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2192*/          OPC_EmitMergeInputChains1_0,
/*  2193*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2200*/        /*Scope*/ 14, /*->2215*/
/*  2201*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2203*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2205*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2207*/          OPC_EmitMergeInputChains1_0,
/*  2208*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2215*/        /*Scope*/ 14, /*->2230*/
/*  2216*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2218*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2220*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2222*/          OPC_EmitMergeInputChains1_0,
/*  2223*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2230*/        /*Scope*/ 14, /*->2245*/
/*  2231*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2233*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2235*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2237*/          OPC_EmitMergeInputChains1_0,
/*  2238*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2245*/        /*Scope*/ 14, /*->2260*/
/*  2246*/          OPC_CheckPredicate, 10, // Predicate_sextload
/*  2248*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2250*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2252*/          OPC_EmitMergeInputChains1_0,
/*  2253*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2260*/        /*Scope*/ 14, /*->2275*/
/*  2261*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2263*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2265*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2267*/          OPC_EmitMergeInputChains1_0,
/*  2268*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2275*/        /*Scope*/ 14, /*->2290*/
/*  2276*/          OPC_CheckPredicate, 11, // Predicate_zextload
/*  2278*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2280*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2282*/          OPC_EmitMergeInputChains1_0,
/*  2283*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2290*/        /*Scope*/ 14, /*->2305*/
/*  2291*/          OPC_CheckPredicate, 13, // Predicate_extload
/*  2293*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2295*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2297*/          OPC_EmitMergeInputChains1_0,
/*  2298*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2305*/        /*Scope*/ 12, /*->2318*/
/*  2306*/          OPC_CheckPredicate, 12, // Predicate_load
/*  2308*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2310*/          OPC_EmitMergeInputChains1_0,
/*  2311*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2318*/        0, /*End of Scope*/
/*  2319*/      0, /*End of Scope*/
/*  2320*/    0, /*End of Scope*/
/*  2321*/  /*SwitchOpcode*/ 9|128,2/*265*/, TARGET_VAL(CodasipISD::TailCall),// ->2590
/*  2325*/    OPC_RecordNode, // #0 = 'TailCall' chained node
/*  2326*/    OPC_CaptureGlueInput,
/*  2327*/    OPC_Scope, 116|128,1/*244*/, /*->2574*/ // 2 children in Scope
/*  2330*/      OPC_MoveChild1,
/*  2331*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2334*/      OPC_RecordChild0, // #1 = $op0
/*  2335*/      OPC_MoveChild0,
/*  2336*/      OPC_SwitchOpcode /*4 cases */, 56, TARGET_VAL(ISD::TargetGlobalAddress),// ->2396
/*  2340*/        OPC_MoveParent,
/*  2341*/        OPC_CheckType, MVT::i32,
/*  2343*/        OPC_MoveParent,
/*  2344*/        OPC_EmitMergeInputChains1_0,
/*  2345*/        OPC_Scope, 6, /*->2353*/ // 7 children in Scope
/*  2347*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2353*/        /*Scope*/ 6, /*->2360*/
/*  2354*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2360*/        /*Scope*/ 6, /*->2367*/
/*  2361*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2367*/        /*Scope*/ 6, /*->2374*/
/*  2368*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2374*/        /*Scope*/ 6, /*->2381*/
/*  2375*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2381*/        /*Scope*/ 6, /*->2388*/
/*  2382*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2388*/        /*Scope*/ 6, /*->2395*/
/*  2389*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2395*/        0, /*End of Scope*/
/*  2396*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetExternalSymbol),// ->2455
/*  2399*/        OPC_MoveParent,
/*  2400*/        OPC_CheckType, MVT::i32,
/*  2402*/        OPC_MoveParent,
/*  2403*/        OPC_EmitMergeInputChains1_0,
/*  2404*/        OPC_Scope, 6, /*->2412*/ // 7 children in Scope
/*  2406*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2412*/        /*Scope*/ 6, /*->2419*/
/*  2413*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2419*/        /*Scope*/ 6, /*->2426*/
/*  2420*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2426*/        /*Scope*/ 6, /*->2433*/
/*  2427*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2433*/        /*Scope*/ 6, /*->2440*/
/*  2434*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2440*/        /*Scope*/ 6, /*->2447*/
/*  2441*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2447*/        /*Scope*/ 6, /*->2454*/
/*  2448*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2454*/        0, /*End of Scope*/
/*  2455*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::MCSymbol),// ->2514
/*  2458*/        OPC_MoveParent,
/*  2459*/        OPC_CheckType, MVT::i32,
/*  2461*/        OPC_MoveParent,
/*  2462*/        OPC_EmitMergeInputChains1_0,
/*  2463*/        OPC_Scope, 6, /*->2471*/ // 7 children in Scope
/*  2465*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2471*/        /*Scope*/ 6, /*->2478*/
/*  2472*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2478*/        /*Scope*/ 6, /*->2485*/
/*  2479*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2485*/        /*Scope*/ 6, /*->2492*/
/*  2486*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2492*/        /*Scope*/ 6, /*->2499*/
/*  2493*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2499*/        /*Scope*/ 6, /*->2506*/
/*  2500*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2506*/        /*Scope*/ 6, /*->2513*/
/*  2507*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2513*/        0, /*End of Scope*/
/*  2514*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetBlockAddress),// ->2573
/*  2517*/        OPC_MoveParent,
/*  2518*/        OPC_CheckType, MVT::i32,
/*  2520*/        OPC_MoveParent,
/*  2521*/        OPC_EmitMergeInputChains1_0,
/*  2522*/        OPC_Scope, 6, /*->2530*/ // 7 children in Scope
/*  2524*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2530*/        /*Scope*/ 6, /*->2537*/
/*  2531*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2537*/        /*Scope*/ 6, /*->2544*/
/*  2538*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2544*/        /*Scope*/ 6, /*->2551*/
/*  2545*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2551*/        /*Scope*/ 6, /*->2558*/
/*  2552*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2558*/        /*Scope*/ 6, /*->2565*/
/*  2559*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2565*/        /*Scope*/ 6, /*->2572*/
/*  2566*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2572*/        0, /*End of Scope*/
/*  2573*/      0, // EndSwitchOpcode
/*  2574*/    /*Scope*/ 14, /*->2589*/
/*  2575*/      OPC_RecordChild1, // #1 = $op0
/*  2576*/      OPC_MoveChild1,
/*  2577*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2579*/      OPC_CheckType, MVT::i32,
/*  2581*/      OPC_MoveParent,
/*  2582*/      OPC_EmitMergeInputChains1_0,
/*  2583*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                    1/*#Ops*/, 1, 
                // Src: (TailCall regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_jump_reg_alias__regs__TAILCALL_CLONE_ regs:{ *:[i32] }:$op0)
/*  2589*/    0, /*End of Scope*/
/*  2590*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::INTRINSIC_W_CHAIN),// ->2615
/*  2593*/    OPC_RecordNode, // #0 = 'intrinsic_w_chain' chained node
/*  2594*/    OPC_CheckChild1Integer, 17|128,1/*145*/, 
/*  2597*/    OPC_RecordChild2, // #1 = $op1
/*  2598*/    OPC_RecordChild3, // #2 = $op2
/*  2599*/    OPC_MoveChild3,
/*  2600*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2603*/    OPC_MoveParent,
/*  2604*/    OPC_EmitMergeInputChains1_0,
/*  2605*/    OPC_EmitConvertToTarget, 2,
/*  2607*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::hwloop_loop_decrement_reg), 0|OPFL_Chain,
                  MVT::i32, 2/*#Ops*/, 1, 3, 
              // Src: (intrinsic_w_chain:{ *:[i32] } 145:{ *:[iPTR] }, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2) - Complexity = 11
              // Dst: (hwloop_loop_decrement_reg:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2615*/  /*SwitchOpcode*/ 89, TARGET_VAL(CodasipISD::Call),// ->2707
/*  2618*/    OPC_RecordNode, // #0 = 'Call' chained node
/*  2619*/    OPC_CaptureGlueInput,
/*  2620*/    OPC_Scope, 68, /*->2690*/ // 2 children in Scope
/*  2622*/      OPC_MoveChild1,
/*  2623*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2626*/      OPC_RecordChild0, // #1 = $op0
/*  2627*/      OPC_MoveChild0,
/*  2628*/      OPC_SwitchOpcode /*4 cases */, 12, TARGET_VAL(ISD::TargetGlobalAddress),// ->2644
/*  2632*/        OPC_MoveParent,
/*  2633*/        OPC_CheckType, MVT::i32,
/*  2635*/        OPC_MoveParent,
/*  2636*/        OPC_EmitMergeInputChains1_0,
/*  2637*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)
/*  2644*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetExternalSymbol),// ->2659
/*  2647*/        OPC_MoveParent,
/*  2648*/        OPC_CheckType, MVT::i32,
/*  2650*/        OPC_MoveParent,
/*  2651*/        OPC_EmitMergeInputChains1_0,
/*  2652*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)
/*  2659*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::MCSymbol),// ->2674
/*  2662*/        OPC_MoveParent,
/*  2663*/        OPC_CheckType, MVT::i32,
/*  2665*/        OPC_MoveParent,
/*  2666*/        OPC_EmitMergeInputChains1_0,
/*  2667*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)
/*  2674*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetBlockAddress),// ->2689
/*  2677*/        OPC_MoveParent,
/*  2678*/        OPC_CheckType, MVT::i32,
/*  2680*/        OPC_MoveParent,
/*  2681*/        OPC_EmitMergeInputChains1_0,
/*  2682*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)
/*  2689*/      0, // EndSwitchOpcode
/*  2690*/    /*Scope*/ 15, /*->2706*/
/*  2691*/      OPC_RecordChild1, // #1 = $op0
/*  2692*/      OPC_MoveChild1,
/*  2693*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2695*/      OPC_CheckType, MVT::i32,
/*  2697*/      OPC_MoveParent,
/*  2698*/      OPC_EmitMergeInputChains1_0,
/*  2699*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__regs__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    MVT::i32, 1/*#Ops*/, 1, 
                // Src: (Call regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_call_reg_alias__regs__:{ *:[i32] } regs:{ *:[i32] }:$op0)
/*  2706*/    0, /*End of Scope*/
/*  2707*/  /*SwitchOpcode*/ 47, TARGET_VAL(ISD::SUB),// ->2757
/*  2710*/    OPC_Scope, 25, /*->2737*/ // 2 children in Scope
/*  2712*/      OPC_CheckChild0Integer, 0, 
/*  2714*/      OPC_RecordChild1, // #0 = $op1
/*  2715*/      OPC_MoveChild1,
/*  2716*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2718*/      OPC_MoveParent,
/*  2719*/      OPC_Scope, 7, /*->2728*/ // 2 children in Scope
/*  2721*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2728*/      /*Scope*/ 7, /*->2736*/
/*  2729*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_neg_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2736*/      0, /*End of Scope*/
/*  2737*/    /*Scope*/ 18, /*->2756*/
/*  2738*/      OPC_RecordChild0, // #0 = $op1
/*  2739*/      OPC_MoveChild0,
/*  2740*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2742*/      OPC_MoveParent,
/*  2743*/      OPC_RecordChild1, // #1 = $op2
/*  2744*/      OPC_MoveChild1,
/*  2745*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2747*/      OPC_MoveParent,
/*  2748*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sub:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_sub__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2756*/    0, /*End of Scope*/
/*  2757*/  /*SwitchOpcode*/ 53|128,2/*309*/, TARGET_VAL(ISD::SELECT),// ->3070
/*  2761*/    OPC_Scope, 22|128,2/*278*/, /*->3042*/ // 2 children in Scope
/*  2764*/      OPC_MoveChild0,
/*  2765*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  2768*/      OPC_RecordChild0, // #0 = $op0
/*  2769*/      OPC_MoveChild0,
/*  2770*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2772*/      OPC_CheckType, MVT::i32,
/*  2774*/      OPC_MoveParent,
/*  2775*/      OPC_RecordChild1, // #1 = $op1
/*  2776*/      OPC_MoveChild1,
/*  2777*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2779*/      OPC_MoveParent,
/*  2780*/      OPC_Scope, 25, /*->2807*/ // 10 children in Scope
/*  2782*/        OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2784*/        OPC_MoveParent,
/*  2785*/        OPC_RecordChild1, // #2 = $op2
/*  2786*/        OPC_MoveChild1,
/*  2787*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2789*/        OPC_MoveParent,
/*  2790*/        OPC_RecordChild2, // #3 = $op3
/*  2791*/        OPC_MoveChild2,
/*  2792*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2794*/        OPC_MoveParent,
/*  2795*/        OPC_CheckType, MVT::i32,
/*  2797*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_7), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_7:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2807*/      /*Scope*/ 25, /*->2833*/
/*  2808*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  2810*/        OPC_MoveParent,
/*  2811*/        OPC_RecordChild1, // #2 = $op2
/*  2812*/        OPC_MoveChild1,
/*  2813*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2815*/        OPC_MoveParent,
/*  2816*/        OPC_RecordChild2, // #3 = $op3
/*  2817*/        OPC_MoveChild2,
/*  2818*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2820*/        OPC_MoveParent,
/*  2821*/        OPC_CheckType, MVT::i32,
/*  2823*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_8), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_8:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2833*/      /*Scope*/ 25, /*->2859*/
/*  2834*/        OPC_CheckChild2CondCode, ISD::SETGE,
/*  2836*/        OPC_MoveParent,
/*  2837*/        OPC_RecordChild1, // #2 = $op2
/*  2838*/        OPC_MoveChild1,
/*  2839*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2841*/        OPC_MoveParent,
/*  2842*/        OPC_RecordChild2, // #3 = $op3
/*  2843*/        OPC_MoveChild2,
/*  2844*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2846*/        OPC_MoveParent,
/*  2847*/        OPC_CheckType, MVT::i32,
/*  2849*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_9), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_9:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2859*/      /*Scope*/ 25, /*->2885*/
/*  2860*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  2862*/        OPC_MoveParent,
/*  2863*/        OPC_RecordChild1, // #2 = $op2
/*  2864*/        OPC_MoveChild1,
/*  2865*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2867*/        OPC_MoveParent,
/*  2868*/        OPC_RecordChild2, // #3 = $op3
/*  2869*/        OPC_MoveChild2,
/*  2870*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2872*/        OPC_MoveParent,
/*  2873*/        OPC_CheckType, MVT::i32,
/*  2875*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_10), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_10:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2885*/      /*Scope*/ 25, /*->2911*/
/*  2886*/        OPC_CheckChild2CondCode, ISD::SETLE,
/*  2888*/        OPC_MoveParent,
/*  2889*/        OPC_RecordChild1, // #2 = $op2
/*  2890*/        OPC_MoveChild1,
/*  2891*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2893*/        OPC_MoveParent,
/*  2894*/        OPC_RecordChild2, // #3 = $op3
/*  2895*/        OPC_MoveChild2,
/*  2896*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2898*/        OPC_MoveParent,
/*  2899*/        OPC_CheckType, MVT::i32,
/*  2901*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_11), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_11:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2911*/      /*Scope*/ 25, /*->2937*/
/*  2912*/        OPC_CheckChild2CondCode, ISD::SETLT,
/*  2914*/        OPC_MoveParent,
/*  2915*/        OPC_RecordChild1, // #2 = $op2
/*  2916*/        OPC_MoveChild1,
/*  2917*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2919*/        OPC_MoveParent,
/*  2920*/        OPC_RecordChild2, // #3 = $op3
/*  2921*/        OPC_MoveChild2,
/*  2922*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2924*/        OPC_MoveParent,
/*  2925*/        OPC_CheckType, MVT::i32,
/*  2927*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_12), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_12:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2937*/      /*Scope*/ 25, /*->2963*/
/*  2938*/        OPC_CheckChild2CondCode, ISD::SETUGE,
/*  2940*/        OPC_MoveParent,
/*  2941*/        OPC_RecordChild1, // #2 = $op2
/*  2942*/        OPC_MoveChild1,
/*  2943*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2945*/        OPC_MoveParent,
/*  2946*/        OPC_RecordChild2, // #3 = $op3
/*  2947*/        OPC_MoveChild2,
/*  2948*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2950*/        OPC_MoveParent,
/*  2951*/        OPC_CheckType, MVT::i32,
/*  2953*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_13), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_13:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2963*/      /*Scope*/ 25, /*->2989*/
/*  2964*/        OPC_CheckChild2CondCode, ISD::SETUGT,
/*  2966*/        OPC_MoveParent,
/*  2967*/        OPC_RecordChild1, // #2 = $op2
/*  2968*/        OPC_MoveChild1,
/*  2969*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2971*/        OPC_MoveParent,
/*  2972*/        OPC_RecordChild2, // #3 = $op3
/*  2973*/        OPC_MoveChild2,
/*  2974*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2976*/        OPC_MoveParent,
/*  2977*/        OPC_CheckType, MVT::i32,
/*  2979*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_14), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_14:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  2989*/      /*Scope*/ 25, /*->3015*/
/*  2990*/        OPC_CheckChild2CondCode, ISD::SETULE,
/*  2992*/        OPC_MoveParent,
/*  2993*/        OPC_RecordChild1, // #2 = $op2
/*  2994*/        OPC_MoveChild1,
/*  2995*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2997*/        OPC_MoveParent,
/*  2998*/        OPC_RecordChild2, // #3 = $op3
/*  2999*/        OPC_MoveChild2,
/*  3000*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3002*/        OPC_MoveParent,
/*  3003*/        OPC_CheckType, MVT::i32,
/*  3005*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_15), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_15:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3015*/      /*Scope*/ 25, /*->3041*/
/*  3016*/        OPC_CheckChild2CondCode, ISD::SETULT,
/*  3018*/        OPC_MoveParent,
/*  3019*/        OPC_RecordChild1, // #2 = $op2
/*  3020*/        OPC_MoveChild1,
/*  3021*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3023*/        OPC_MoveParent,
/*  3024*/        OPC_RecordChild2, // #3 = $op3
/*  3025*/        OPC_MoveChild2,
/*  3026*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3028*/        OPC_MoveParent,
/*  3029*/        OPC_CheckType, MVT::i32,
/*  3031*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_16), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_16:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3041*/      0, /*End of Scope*/
/*  3042*/    /*Scope*/ 26, /*->3069*/
/*  3043*/      OPC_RecordChild0, // #0 = $op0
/*  3044*/      OPC_MoveChild0,
/*  3045*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3047*/      OPC_MoveParent,
/*  3048*/      OPC_RecordChild1, // #1 = $op1
/*  3049*/      OPC_MoveChild1,
/*  3050*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3052*/      OPC_MoveParent,
/*  3053*/      OPC_RecordChild2, // #2 = $op2
/*  3054*/      OPC_MoveChild2,
/*  3055*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3057*/      OPC_MoveParent,
/*  3058*/      OPC_CheckType, MVT::i32,
/*  3060*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_17), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (rule_SELECT_17:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3069*/    0, /*End of Scope*/
/*  3070*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::ADD),// ->3111
/*  3073*/    OPC_RecordChild0, // #0 = $op1
/*  3074*/    OPC_MoveChild0,
/*  3075*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3077*/    OPC_MoveParent,
/*  3078*/    OPC_RecordChild1, // #1 = $op2
/*  3079*/    OPC_MoveChild1,
/*  3080*/    OPC_Scope, 16, /*->3098*/ // 2 children in Scope
/*  3082*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3085*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3087*/      OPC_MoveParent,
/*  3088*/      OPC_EmitConvertToTarget, 1,
/*  3090*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3098*/    /*Scope*/ 11, /*->3110*/
/*  3099*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3101*/      OPC_MoveParent,
/*  3102*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_add__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3110*/    0, /*End of Scope*/
/*  3111*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::AND),// ->3152
/*  3114*/    OPC_RecordChild0, // #0 = $op1
/*  3115*/    OPC_MoveChild0,
/*  3116*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3118*/    OPC_MoveParent,
/*  3119*/    OPC_RecordChild1, // #1 = $op2
/*  3120*/    OPC_MoveChild1,
/*  3121*/    OPC_Scope, 16, /*->3139*/ // 2 children in Scope
/*  3123*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3126*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3128*/      OPC_MoveParent,
/*  3129*/      OPC_EmitConvertToTarget, 1,
/*  3131*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3139*/    /*Scope*/ 11, /*->3151*/
/*  3140*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3142*/      OPC_MoveParent,
/*  3143*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_and__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3151*/    0, /*End of Scope*/
/*  3152*/  /*SwitchOpcode*/ 50, TARGET_VAL(ISD::OR),// ->3205
/*  3155*/    OPC_RecordChild0, // #0 = $op1
/*  3156*/    OPC_MoveChild0,
/*  3157*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3159*/    OPC_MoveParent,
/*  3160*/    OPC_RecordChild1, // #1 = $op2
/*  3161*/    OPC_MoveChild1,
/*  3162*/    OPC_Scope, 28, /*->3192*/ // 2 children in Scope
/*  3164*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3167*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3169*/      OPC_MoveParent,
/*  3170*/      OPC_EmitConvertToTarget, 1,
/*  3172*/      OPC_Scope, 8, /*->3182*/ // 2 children in Scope
/*  3174*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3182*/      /*Scope*/ 8, /*->3191*/
/*  3183*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_ori_emulation_alias__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3191*/      0, /*End of Scope*/
/*  3192*/    /*Scope*/ 11, /*->3204*/
/*  3193*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3195*/      OPC_MoveParent,
/*  3196*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_or__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3204*/    0, /*End of Scope*/
/*  3205*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::XOR),// ->3246
/*  3208*/    OPC_RecordChild0, // #0 = $op1
/*  3209*/    OPC_MoveChild0,
/*  3210*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3212*/    OPC_MoveParent,
/*  3213*/    OPC_RecordChild1, // #1 = $op2
/*  3214*/    OPC_MoveChild1,
/*  3215*/    OPC_Scope, 16, /*->3233*/ // 2 children in Scope
/*  3217*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3220*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3222*/      OPC_MoveParent,
/*  3223*/      OPC_EmitConvertToTarget, 1,
/*  3225*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3233*/    /*Scope*/ 11, /*->3245*/
/*  3234*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3236*/      OPC_MoveParent,
/*  3237*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3245*/    0, /*End of Scope*/
/*  3246*/  /*SwitchOpcode*/ 21, TARGET_VAL(ISD::CALLSEQ_START),// ->3270
/*  3249*/    OPC_RecordNode, // #0 = 'callseq_start' chained node
/*  3250*/    OPC_RecordChild1, // #1 = $InSize
/*  3251*/    OPC_MoveChild1,
/*  3252*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3255*/    OPC_MoveParent,
/*  3256*/    OPC_RecordChild2, // #2 = $OutSize
/*  3257*/    OPC_MoveChild2,
/*  3258*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3261*/    OPC_MoveParent,
/*  3262*/    OPC_EmitMergeInputChains1_0,
/*  3263*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLSTART), 0|OPFL_Chain|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_start (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLSTART (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3270*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::CALLSEQ_END),// ->3295
/*  3273*/    OPC_RecordNode, // #0 = 'callseq_end' chained node
/*  3274*/    OPC_CaptureGlueInput,
/*  3275*/    OPC_RecordChild1, // #1 = $InSize
/*  3276*/    OPC_MoveChild1,
/*  3277*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3280*/    OPC_MoveParent,
/*  3281*/    OPC_RecordChild2, // #2 = $OutSize
/*  3282*/    OPC_MoveChild2,
/*  3283*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3286*/    OPC_MoveParent,
/*  3287*/    OPC_EmitMergeInputChains1_0,
/*  3288*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLEND), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_end (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLEND (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3295*/  /*SwitchOpcode*/ 12, TARGET_VAL(ISD::INTRINSIC_VOID),// ->3310
/*  3298*/    OPC_RecordNode, // #0 = 'intrinsic_void' chained node
/*  3299*/    OPC_CheckChild1Integer, 101|128,1/*229*/, 
/*  3302*/    OPC_RecordChild2, // #1 = $op0
/*  3303*/    OPC_EmitMergeInputChains1_0,
/*  3304*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::hwloop_set_loop_iterations), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (intrinsic_void 229:{ *:[iPTR] }, regs:{ *:[i32] }:$op0) - Complexity = 8
              // Dst: (hwloop_set_loop_iterations regs:{ *:[i32] }:$op0)
/*  3310*/  /*SwitchOpcode*/ 123|128,1/*251*/, TARGET_VAL(ISD::Constant),// ->3565
/*  3314*/    OPC_Scope, 109, /*->3425*/ // 5 children in Scope
/*  3316*/      OPC_CheckInteger, 0, 
/*  3318*/      OPC_Scope, 6, /*->3326*/ // 15 children in Scope
/*  3320*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_mv_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_mv_alias__regs__reg0__:{ *:[i32] })
/*  3326*/      /*Scope*/ 6, /*->3333*/
/*  3327*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_snez_alias__regs__reg0__:{ *:[i32] })
/*  3333*/      /*Scope*/ 6, /*->3340*/
/*  3334*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_add__regs__reg0__reg0__:{ *:[i32] })
/*  3340*/      /*Scope*/ 6, /*->3347*/
/*  3341*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_and__regs__reg0__reg0__:{ *:[i32] })
/*  3347*/      /*Scope*/ 6, /*->3354*/
/*  3348*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_or__regs__reg0__reg0__:{ *:[i32] })
/*  3354*/      /*Scope*/ 6, /*->3361*/
/*  3355*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__reg0__reg0__:{ *:[i32] })
/*  3361*/      /*Scope*/ 6, /*->3368*/
/*  3362*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_slt__regs__reg0__reg0__:{ *:[i32] })
/*  3368*/      /*Scope*/ 6, /*->3375*/
/*  3369*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sltu__regs__reg0__reg0__:{ *:[i32] })
/*  3375*/      /*Scope*/ 6, /*->3382*/
/*  3376*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__reg0__reg0__:{ *:[i32] })
/*  3382*/      /*Scope*/ 6, /*->3389*/
/*  3383*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__reg0__reg0__:{ *:[i32] })
/*  3389*/      /*Scope*/ 6, /*->3396*/
/*  3390*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__reg0__:{ *:[i32] })
/*  3396*/      /*Scope*/ 6, /*->3403*/
/*  3397*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_xor__regs__reg0__reg0__:{ *:[i32] })
/*  3403*/      /*Scope*/ 6, /*->3410*/
/*  3404*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_neg_alias__regs__reg0__:{ *:[i32] })
/*  3410*/      /*Scope*/ 6, /*->3417*/
/*  3411*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3417*/      /*Scope*/ 6, /*->3424*/
/*  3418*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3424*/      0, /*End of Scope*/
/*  3425*/    /*Scope*/ 25, /*->3451*/
/*  3426*/      OPC_CheckInteger, 1, 
/*  3428*/      OPC_Scope, 6, /*->3436*/ // 3 children in Scope
/*  3430*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 7
                  // Dst: (i_seqz_alias__regs__reg0__:{ *:[i32] })
/*  3436*/      /*Scope*/ 6, /*->3443*/
/*  3437*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3443*/      /*Scope*/ 6, /*->3450*/
/*  3444*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3450*/      0, /*End of Scope*/
/*  3451*/    /*Scope*/ 46, /*->3498*/
/*  3452*/      OPC_RecordNode, // #0 = $op1
/*  3453*/      OPC_Scope, 30, /*->3485*/ // 2 children in Scope
/*  3455*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3457*/        OPC_EmitConvertToTarget, 0,
/*  3459*/        OPC_Scope, 7, /*->3468*/ // 3 children in Scope
/*  3461*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3468*/        /*Scope*/ 7, /*->3476*/
/*  3469*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3476*/        /*Scope*/ 7, /*->3484*/
/*  3477*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3484*/        0, /*End of Scope*/
/*  3485*/      /*Scope*/ 11, /*->3497*/
/*  3486*/        OPC_CheckPredicate, 14, // Predicate_Trunc12_i32imm
/*  3488*/        OPC_EmitConvertToTarget, 0,
/*  3490*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_lui__opc_lui__regs__imm20_s12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_Trunc12_i32imm>>:$op1 - Complexity = 5
                  // Dst: (i_lui__opc_lui__regs__imm20_s12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3497*/      0, /*End of Scope*/
/*  3498*/    /*Scope*/ 39, /*->3538*/
/*  3499*/      OPC_CheckInteger, 0, 
/*  3501*/      OPC_Scope, 6, /*->3509*/ // 5 children in Scope
/*  3503*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__:{ *:[i32] })
/*  3509*/      /*Scope*/ 6, /*->3516*/
/*  3510*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__:{ *:[i32] })
/*  3516*/      /*Scope*/ 6, /*->3523*/
/*  3517*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__:{ *:[i32] })
/*  3523*/      /*Scope*/ 6, /*->3530*/
/*  3524*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__:{ *:[i32] })
/*  3530*/      /*Scope*/ 6, /*->3537*/
/*  3531*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__:{ *:[i32] })
/*  3537*/      0, /*End of Scope*/
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
  // #OPC_Scope                                = 68
  // #OPC_RecordNode                           = 18
  // #OPC_RecordChild                          = 119
  // #OPC_RecordMemRef                         = 2
  // #OPC_CaptureGlueInput                     = 5
  // #OPC_MoveChild                            = 128
  // #OPC_MoveParent                           = 187
  // #OPC_CheckSame                            = 0
  // #OPC_CheckChildSame                       = 0
  // #OPC_CheckPatternPredicate                = 0
  // #OPC_CheckPredicate                       = 232
  // #OPC_CheckOpcode                          = 63
  // #OPC_SwitchOpcode                         = 4
  // #OPC_CheckType                            = 43
  // #OPC_SwitchType                           = 0
  // #OPC_CheckChildType                       = 9
  // #OPC_CheckInteger                         = 3
  // #OPC_CheckChildInteger                    = 13
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
  // #OPC_MorphNodeTo                          = 219

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
