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
/*   650*/  /*SwitchOpcode*/ 25|128,1/*153*/, TARGET_VAL(ISD::SRA),// ->807
/*   654*/    OPC_Scope, 72, /*->728*/ // 2 children in Scope
/*   656*/      OPC_MoveChild0,
/*   657*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   660*/      OPC_Scope, 32, /*->694*/ // 2 children in Scope
/*   662*/        OPC_RecordChild0, // #0 = $op1
/*   663*/        OPC_MoveChild0,
/*   664*/        OPC_CheckPredicate, 8, // Predicate_NotFI_i32_regs
/*   666*/        OPC_MoveParent,
/*   667*/        OPC_MoveChild1,
/*   668*/        OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   671*/        OPC_RecordChild0, // #1 = $op2
/*   672*/        OPC_MoveChild0,
/*   673*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   675*/        OPC_MoveParent,
/*   676*/        OPC_RecordChild1, // #2 = $op3
/*   677*/        OPC_MoveChild1,
/*   678*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   680*/        OPC_MoveParent,
/*   681*/        OPC_MoveParent,
/*   682*/        OPC_MoveParent,
/*   683*/        OPC_CheckChild1Integer, 8, 
/*   685*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__), 0,
                      MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                  // Src: (sra:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op1, (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3)), 8:{ *:[i32] }) - Complexity = 17
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   694*/      /*Scope*/ 32, /*->727*/
/*   695*/        OPC_MoveChild0,
/*   696*/        OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   699*/        OPC_RecordChild0, // #0 = $op2
/*   700*/        OPC_MoveChild0,
/*   701*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   703*/        OPC_MoveParent,
/*   704*/        OPC_RecordChild1, // #1 = $op3
/*   705*/        OPC_MoveChild1,
/*   706*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   708*/        OPC_MoveParent,
/*   709*/        OPC_MoveParent,
/*   710*/        OPC_RecordChild1, // #2 = $op1
/*   711*/        OPC_MoveChild1,
/*   712*/        OPC_CheckPredicate, 8, // Predicate_NotFI_i32_regs
/*   714*/        OPC_MoveParent,
/*   715*/        OPC_MoveParent,
/*   716*/        OPC_CheckChild1Integer, 8, 
/*   718*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__), 0,
                      MVT::i32, 3/*#Ops*/, 2, 0, 1, 
                  // Src: (sra:{ *:[i32] } (add:{ *:[i32] } (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op1), 8:{ *:[i32] }) - Complexity = 17
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   727*/      0, /*End of Scope*/
/*   728*/    /*Scope*/ 77, /*->806*/
/*   729*/      OPC_RecordChild0, // #0 = $op1
/*   730*/      OPC_MoveChild0,
/*   731*/      OPC_Scope, 42, /*->775*/ // 3 children in Scope
/*   733*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   735*/        OPC_MoveParent,
/*   736*/        OPC_Scope, 17, /*->755*/ // 2 children in Scope
/*   738*/          OPC_MoveChild1,
/*   739*/          OPC_CheckAndImm, 31, 
/*   741*/          OPC_RecordChild0, // #1 = $op2
/*   742*/          OPC_MoveChild0,
/*   743*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   745*/          OPC_MoveParent,
/*   746*/          OPC_MoveParent,
/*   747*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                    // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   755*/        /*Scope*/ 18, /*->774*/
/*   756*/          OPC_RecordChild1, // #1 = $op2
/*   757*/          OPC_MoveChild1,
/*   758*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   761*/          OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*   763*/          OPC_MoveParent,
/*   764*/          OPC_EmitConvertToTarget, 1,
/*   766*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 2, 
                    // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                    // Dst: (i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   774*/        0, /*End of Scope*/
/*   775*/      /*Scope*/ 12, /*->788*/
/*   776*/        OPC_CheckPredicate, 8, // Predicate_NotFI_i32_regs
/*   778*/        OPC_MoveParent,
/*   779*/        OPC_CheckChild1Integer, 8, 
/*   781*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op1, 8:{ *:[i32] }) - Complexity = 9
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*   788*/      /*Scope*/ 16, /*->805*/
/*   789*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   791*/        OPC_MoveParent,
/*   792*/        OPC_RecordChild1, // #1 = $op2
/*   793*/        OPC_MoveChild1,
/*   794*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   796*/        OPC_MoveParent,
/*   797*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   805*/      0, /*End of Scope*/
/*   806*/    0, /*End of Scope*/
/*   807*/  /*SwitchOpcode*/ 116, TARGET_VAL(ISD::ADD),// ->926
/*   810*/    OPC_Scope, 36, /*->848*/ // 2 children in Scope
/*   812*/      OPC_MoveChild0,
/*   813*/      OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   816*/      OPC_MoveChild0,
/*   817*/      OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   820*/      OPC_RecordChild0, // #0 = $op1
/*   821*/      OPC_MoveChild0,
/*   822*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   824*/      OPC_MoveParent,
/*   825*/      OPC_RecordChild1, // #1 = $op2
/*   826*/      OPC_MoveChild1,
/*   827*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   829*/      OPC_MoveParent,
/*   830*/      OPC_MoveParent,
/*   831*/      OPC_CheckChild1Integer, 8, 
/*   833*/      OPC_MoveParent,
/*   834*/      OPC_RecordChild1, // #2 = $op3
/*   835*/      OPC_MoveChild1,
/*   836*/      OPC_CheckPredicate, 8, // Predicate_NotFI_i32_regs
/*   838*/      OPC_MoveParent,
/*   839*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 17
                // Dst: (i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   848*/    /*Scope*/ 76, /*->925*/
/*   849*/      OPC_RecordChild0, // #0 = $op3
/*   850*/      OPC_MoveChild0,
/*   851*/      OPC_Scope, 34, /*->887*/ // 2 children in Scope
/*   853*/        OPC_CheckPredicate, 8, // Predicate_NotFI_i32_regs
/*   855*/        OPC_MoveParent,
/*   856*/        OPC_MoveChild1,
/*   857*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*   860*/        OPC_MoveChild0,
/*   861*/        OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*   864*/        OPC_RecordChild0, // #1 = $op1
/*   865*/        OPC_MoveChild0,
/*   866*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   868*/        OPC_MoveParent,
/*   869*/        OPC_RecordChild1, // #2 = $op2
/*   870*/        OPC_MoveChild1,
/*   871*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   873*/        OPC_MoveParent,
/*   874*/        OPC_MoveParent,
/*   875*/        OPC_CheckChild1Integer, 8, 
/*   877*/        OPC_MoveParent,
/*   878*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__), 0,
                      MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                  // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2), 8:{ *:[i32] })) - Complexity = 17
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   887*/      /*Scope*/ 36, /*->924*/
/*   888*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   890*/        OPC_MoveParent,
/*   891*/        OPC_RecordChild1, // #1 = $op2
/*   892*/        OPC_MoveChild1,
/*   893*/        OPC_Scope, 16, /*->911*/ // 2 children in Scope
/*   895*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   898*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   900*/          OPC_MoveParent,
/*   901*/          OPC_EmitConvertToTarget, 1,
/*   903*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 2, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                    // Dst: (i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   911*/        /*Scope*/ 11, /*->923*/
/*   912*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   914*/          OPC_MoveParent,
/*   915*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_add__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   923*/        0, /*End of Scope*/
/*   924*/      0, /*End of Scope*/
/*   925*/    0, /*End of Scope*/
/*   926*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::SHL),// ->988
/*   929*/    OPC_RecordChild0, // #0 = $op1
/*   930*/    OPC_MoveChild0,
/*   931*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   933*/    OPC_MoveParent,
/*   934*/    OPC_Scope, 17, /*->953*/ // 2 children in Scope
/*   936*/      OPC_MoveChild1,
/*   937*/      OPC_CheckAndImm, 31, 
/*   939*/      OPC_RecordChild0, // #1 = $op2
/*   940*/      OPC_MoveChild0,
/*   941*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   943*/      OPC_MoveParent,
/*   944*/      OPC_MoveParent,
/*   945*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   953*/    /*Scope*/ 33, /*->987*/
/*   954*/      OPC_RecordChild1, // #1 = $op2
/*   955*/      OPC_MoveChild1,
/*   956*/      OPC_Scope, 16, /*->974*/ // 2 children in Scope
/*   958*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   961*/        OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*   963*/        OPC_MoveParent,
/*   964*/        OPC_EmitConvertToTarget, 1,
/*   966*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   974*/      /*Scope*/ 11, /*->986*/
/*   975*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   977*/        OPC_MoveParent,
/*   978*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   986*/      0, /*End of Scope*/
/*   987*/    0, /*End of Scope*/
/*   988*/  /*SwitchOpcode*/ 69, TARGET_VAL(ISD::SRL),// ->1060
/*   991*/    OPC_RecordChild0, // #0 = $op1
/*   992*/    OPC_MoveChild0,
/*   993*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   995*/    OPC_MoveParent,
/*   996*/    OPC_Scope, 17, /*->1015*/ // 3 children in Scope
/*   998*/      OPC_MoveChild1,
/*   999*/      OPC_CheckAndImm, 31, 
/*  1001*/      OPC_RecordChild0, // #1 = $op2
/*  1002*/      OPC_MoveChild0,
/*  1003*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1005*/      OPC_MoveParent,
/*  1006*/      OPC_MoveParent,
/*  1007*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1015*/    /*Scope*/ 9, /*->1025*/
/*  1016*/      OPC_CheckChild1Integer, 31, 
/*  1018*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 31:{ *:[i32] }) - Complexity = 10
                // Dst: (i_comp_3reg__opc_slt__regs__regs__reg0__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1025*/    /*Scope*/ 33, /*->1059*/
/*  1026*/      OPC_RecordChild1, // #1 = $op2
/*  1027*/      OPC_MoveChild1,
/*  1028*/      OPC_Scope, 16, /*->1046*/ // 2 children in Scope
/*  1030*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1033*/        OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*  1035*/        OPC_MoveParent,
/*  1036*/        OPC_EmitConvertToTarget, 1,
/*  1038*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1046*/      /*Scope*/ 11, /*->1058*/
/*  1047*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1049*/        OPC_MoveParent,
/*  1050*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1058*/      0, /*End of Scope*/
/*  1059*/    0, /*End of Scope*/
/*  1060*/  /*SwitchOpcode*/ 74|128,4/*586*/, TARGET_VAL(ISD::BRCOND),// ->1650
/*  1064*/    OPC_RecordNode, // #0 = 'brcond' chained node
/*  1065*/    OPC_Scope, 49|128,4/*561*/, /*->1629*/ // 2 children in Scope
/*  1068*/      OPC_MoveChild1,
/*  1069*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  1072*/      OPC_RecordChild0, // #1 = $op0
/*  1073*/      OPC_MoveChild0,
/*  1074*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1076*/      OPC_Scope, 91|128,2/*347*/, /*->1426*/ // 2 children in Scope
/*  1079*/        OPC_MoveParent,
/*  1080*/        OPC_Scope, 114, /*->1196*/ // 4 children in Scope
/*  1082*/          OPC_CheckChild1Integer, 0, 
/*  1084*/          OPC_Scope, 36, /*->1122*/ // 4 children in Scope
/*  1086*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1088*/            OPC_MoveParent,
/*  1089*/            OPC_RecordChild2, // #2 = $op1
/*  1090*/            OPC_MoveChild2,
/*  1091*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1094*/            OPC_MoveParent,
/*  1095*/            OPC_EmitMergeInputChains1_0,
/*  1096*/            OPC_Scope, 7, /*->1105*/ // 3 children in Scope
/*  1098*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1105*/            /*Scope*/ 7, /*->1113*/
/*  1106*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1113*/            /*Scope*/ 7, /*->1121*/
/*  1114*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1121*/            0, /*End of Scope*/
/*  1122*/          /*Scope*/ 17, /*->1140*/
/*  1123*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  1125*/            OPC_MoveParent,
/*  1126*/            OPC_RecordChild2, // #2 = $op1
/*  1127*/            OPC_MoveChild2,
/*  1128*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1131*/            OPC_MoveParent,
/*  1132*/            OPC_EmitMergeInputChains1_0,
/*  1133*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1140*/          /*Scope*/ 17, /*->1158*/
/*  1141*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1143*/            OPC_MoveParent,
/*  1144*/            OPC_RecordChild2, // #2 = $op1
/*  1145*/            OPC_MoveChild2,
/*  1146*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1149*/            OPC_MoveParent,
/*  1150*/            OPC_EmitMergeInputChains1_0,
/*  1151*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1158*/          /*Scope*/ 36, /*->1195*/
/*  1159*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1161*/            OPC_MoveParent,
/*  1162*/            OPC_RecordChild2, // #2 = $op1
/*  1163*/            OPC_MoveChild2,
/*  1164*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1167*/            OPC_MoveParent,
/*  1168*/            OPC_EmitMergeInputChains1_0,
/*  1169*/            OPC_Scope, 7, /*->1178*/ // 3 children in Scope
/*  1171*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1178*/            /*Scope*/ 7, /*->1186*/
/*  1179*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1186*/            /*Scope*/ 7, /*->1194*/
/*  1187*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1194*/            0, /*End of Scope*/
/*  1195*/          0, /*End of Scope*/
/*  1196*/        /*Scope*/ 19, /*->1216*/
/*  1197*/          OPC_CheckChild1Integer, 1, 
/*  1199*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1201*/          OPC_MoveParent,
/*  1202*/          OPC_RecordChild2, // #2 = $op1
/*  1203*/          OPC_MoveChild2,
/*  1204*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1207*/          OPC_MoveParent,
/*  1208*/          OPC_EmitMergeInputChains1_0,
/*  1209*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 1:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1216*/        /*Scope*/ 28, /*->1245*/
/*  1217*/          OPC_CheckChild1Integer, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*  1228*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1230*/          OPC_MoveParent,
/*  1231*/          OPC_RecordChild2, // #2 = $op1
/*  1232*/          OPC_MoveChild2,
/*  1233*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1236*/          OPC_MoveParent,
/*  1237*/          OPC_EmitMergeInputChains1_0,
/*  1238*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, -1:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1245*/        /*Scope*/ 50|128,1/*178*/, /*->1425*/
/*  1247*/          OPC_RecordChild1, // #2 = $op1
/*  1248*/          OPC_MoveChild1,
/*  1249*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1252*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1254*/          OPC_MoveParent,
/*  1255*/          OPC_Scope, 27, /*->1284*/ // 6 children in Scope
/*  1257*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1259*/            OPC_MoveParent,
/*  1260*/            OPC_RecordChild2, // #3 = $op2
/*  1261*/            OPC_MoveChild2,
/*  1262*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1265*/            OPC_MoveParent,
/*  1266*/            OPC_EmitMergeInputChains1_0,
/*  1267*/            OPC_EmitConvertToTarget, 2,
/*  1269*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1277*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1284*/          /*Scope*/ 27, /*->1312*/
/*  1285*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1287*/            OPC_MoveParent,
/*  1288*/            OPC_RecordChild2, // #3 = $op2
/*  1289*/            OPC_MoveChild2,
/*  1290*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1293*/            OPC_MoveParent,
/*  1294*/            OPC_EmitMergeInputChains1_0,
/*  1295*/            OPC_EmitConvertToTarget, 2,
/*  1297*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1305*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1312*/          /*Scope*/ 27, /*->1340*/
/*  1313*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1315*/            OPC_MoveParent,
/*  1316*/            OPC_RecordChild2, // #3 = $op2
/*  1317*/            OPC_MoveChild2,
/*  1318*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1321*/            OPC_MoveParent,
/*  1322*/            OPC_EmitMergeInputChains1_0,
/*  1323*/            OPC_EmitConvertToTarget, 2,
/*  1325*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1333*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1340*/          /*Scope*/ 27, /*->1368*/
/*  1341*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1343*/            OPC_MoveParent,
/*  1344*/            OPC_RecordChild2, // #3 = $op2
/*  1345*/            OPC_MoveChild2,
/*  1346*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1349*/            OPC_MoveParent,
/*  1350*/            OPC_EmitMergeInputChains1_0,
/*  1351*/            OPC_EmitConvertToTarget, 2,
/*  1353*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1361*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1368*/          /*Scope*/ 27, /*->1396*/
/*  1369*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1371*/            OPC_MoveParent,
/*  1372*/            OPC_RecordChild2, // #3 = $op2
/*  1373*/            OPC_MoveChild2,
/*  1374*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1377*/            OPC_MoveParent,
/*  1378*/            OPC_EmitMergeInputChains1_0,
/*  1379*/            OPC_EmitConvertToTarget, 2,
/*  1381*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1389*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1396*/          /*Scope*/ 27, /*->1424*/
/*  1397*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1399*/            OPC_MoveParent,
/*  1400*/            OPC_RecordChild2, // #3 = $op2
/*  1401*/            OPC_MoveChild2,
/*  1402*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1405*/            OPC_MoveParent,
/*  1406*/            OPC_EmitMergeInputChains1_0,
/*  1407*/            OPC_EmitConvertToTarget, 2,
/*  1409*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1417*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1424*/          0, /*End of Scope*/
/*  1425*/        0, /*End of Scope*/
/*  1426*/      /*Scope*/ 72|128,1/*200*/, /*->1628*/
/*  1428*/        OPC_CheckType, MVT::i32,
/*  1430*/        OPC_MoveParent,
/*  1431*/        OPC_RecordChild1, // #2 = $op1
/*  1432*/        OPC_MoveChild1,
/*  1433*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1435*/        OPC_MoveParent,
/*  1436*/        OPC_Scope, 18, /*->1456*/ // 10 children in Scope
/*  1438*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1440*/          OPC_MoveParent,
/*  1441*/          OPC_RecordChild2, // #3 = $op2
/*  1442*/          OPC_MoveChild2,
/*  1443*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1446*/          OPC_MoveParent,
/*  1447*/          OPC_EmitMergeInputChains1_0,
/*  1448*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_beq__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1456*/        /*Scope*/ 18, /*->1475*/
/*  1457*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1459*/          OPC_MoveParent,
/*  1460*/          OPC_RecordChild2, // #3 = $op2
/*  1461*/          OPC_MoveChild2,
/*  1462*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1465*/          OPC_MoveParent,
/*  1466*/          OPC_EmitMergeInputChains1_0,
/*  1467*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1475*/        /*Scope*/ 18, /*->1494*/
/*  1476*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1478*/          OPC_MoveParent,
/*  1479*/          OPC_RecordChild2, // #3 = $op2
/*  1480*/          OPC_MoveChild2,
/*  1481*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1484*/          OPC_MoveParent,
/*  1485*/          OPC_EmitMergeInputChains1_0,
/*  1486*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1494*/        /*Scope*/ 18, /*->1513*/
/*  1495*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1497*/          OPC_MoveParent,
/*  1498*/          OPC_RecordChild2, // #3 = $op2
/*  1499*/          OPC_MoveChild2,
/*  1500*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1503*/          OPC_MoveParent,
/*  1504*/          OPC_EmitMergeInputChains1_0,
/*  1505*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1513*/        /*Scope*/ 18, /*->1532*/
/*  1514*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1516*/          OPC_MoveParent,
/*  1517*/          OPC_RecordChild2, // #3 = $op2
/*  1518*/          OPC_MoveChild2,
/*  1519*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1522*/          OPC_MoveParent,
/*  1523*/          OPC_EmitMergeInputChains1_0,
/*  1524*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1532*/        /*Scope*/ 18, /*->1551*/
/*  1533*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1535*/          OPC_MoveParent,
/*  1536*/          OPC_RecordChild2, // #3 = $op2
/*  1537*/          OPC_MoveChild2,
/*  1538*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1541*/          OPC_MoveParent,
/*  1542*/          OPC_EmitMergeInputChains1_0,
/*  1543*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bne__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1551*/        /*Scope*/ 18, /*->1570*/
/*  1552*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1554*/          OPC_MoveParent,
/*  1555*/          OPC_RecordChild2, // #3 = $op2
/*  1556*/          OPC_MoveChild2,
/*  1557*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1560*/          OPC_MoveParent,
/*  1561*/          OPC_EmitMergeInputChains1_0,
/*  1562*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1570*/        /*Scope*/ 18, /*->1589*/
/*  1571*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  1573*/          OPC_MoveParent,
/*  1574*/          OPC_RecordChild2, // #3 = $op2
/*  1575*/          OPC_MoveChild2,
/*  1576*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1579*/          OPC_MoveParent,
/*  1580*/          OPC_EmitMergeInputChains1_0,
/*  1581*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1589*/        /*Scope*/ 18, /*->1608*/
/*  1590*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1592*/          OPC_MoveParent,
/*  1593*/          OPC_RecordChild2, // #3 = $op2
/*  1594*/          OPC_MoveChild2,
/*  1595*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1598*/          OPC_MoveParent,
/*  1599*/          OPC_EmitMergeInputChains1_0,
/*  1600*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1608*/        /*Scope*/ 18, /*->1627*/
/*  1609*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1611*/          OPC_MoveParent,
/*  1612*/          OPC_RecordChild2, // #3 = $op2
/*  1613*/          OPC_MoveChild2,
/*  1614*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1617*/          OPC_MoveParent,
/*  1618*/          OPC_EmitMergeInputChains1_0,
/*  1619*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1627*/        0, /*End of Scope*/
/*  1628*/      0, /*End of Scope*/
/*  1629*/    /*Scope*/ 19, /*->1649*/
/*  1630*/      OPC_RecordChild1, // #1 = $op0
/*  1631*/      OPC_MoveChild1,
/*  1632*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1634*/      OPC_MoveParent,
/*  1635*/      OPC_RecordChild2, // #2 = $op1
/*  1636*/      OPC_MoveChild2,
/*  1637*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1640*/      OPC_MoveParent,
/*  1641*/      OPC_EmitMergeInputChains1_0,
/*  1642*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                    2/*#Ops*/, 1, 2, 
                // Src: (brcond regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1) - Complexity = 4
                // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1)
/*  1649*/    0, /*End of Scope*/
/*  1650*/  /*SwitchOpcode*/ 8|128,3/*392*/, TARGET_VAL(ISD::SETCC),// ->2046
/*  1654*/    OPC_RecordChild0, // #0 = $op1
/*  1655*/    OPC_MoveChild0,
/*  1656*/    OPC_Scope, 34, /*->1692*/ // 2 children in Scope
/*  1658*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1661*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1663*/      OPC_MoveParent,
/*  1664*/      OPC_CheckChild1Integer, 0, 
/*  1666*/      OPC_Scope, 11, /*->1679*/ // 2 children in Scope
/*  1668*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  1670*/        OPC_EmitConvertToTarget, 0,
/*  1672*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1679*/      /*Scope*/ 11, /*->1691*/
/*  1680*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  1682*/        OPC_EmitConvertToTarget, 0,
/*  1684*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  1691*/      0, /*End of Scope*/
/*  1692*/    /*Scope*/ 95|128,2/*351*/, /*->2045*/
/*  1694*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1696*/      OPC_Scope, 41|128,1/*169*/, /*->1868*/ // 2 children in Scope
/*  1699*/        OPC_MoveParent,
/*  1700*/        OPC_Scope, 44, /*->1746*/ // 2 children in Scope
/*  1702*/          OPC_CheckChild1Integer, 0, 
/*  1704*/          OPC_Scope, 9, /*->1715*/ // 4 children in Scope
/*  1706*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1708*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETEQ:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1715*/          /*Scope*/ 9, /*->1725*/
/*  1716*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1718*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1725*/          /*Scope*/ 9, /*->1735*/
/*  1726*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  1728*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_slt__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1735*/          /*Scope*/ 9, /*->1745*/
/*  1736*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1738*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_sltu__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1745*/          0, /*End of Scope*/
/*  1746*/        /*Scope*/ 120, /*->1867*/
/*  1747*/          OPC_RecordChild1, // #1 = $op2
/*  1748*/          OPC_MoveChild1,
/*  1749*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1752*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1754*/          OPC_MoveParent,
/*  1755*/          OPC_Scope, 12, /*->1769*/ // 6 children in Scope
/*  1757*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1759*/            OPC_EmitConvertToTarget, 1,
/*  1761*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETLT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1769*/          /*Scope*/ 12, /*->1782*/
/*  1770*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1772*/            OPC_EmitConvertToTarget, 1,
/*  1774*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETULT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1782*/          /*Scope*/ 19, /*->1802*/
/*  1783*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1785*/            OPC_EmitConvertToTarget, 1,
/*  1787*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1795*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1802*/          /*Scope*/ 19, /*->1822*/
/*  1803*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1805*/            OPC_EmitConvertToTarget, 1,
/*  1807*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1815*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1822*/          /*Scope*/ 19, /*->1842*/
/*  1823*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1825*/            OPC_EmitConvertToTarget, 1,
/*  1827*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1835*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  1842*/          /*Scope*/ 23, /*->1866*/
/*  1843*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1845*/            OPC_EmitConvertToTarget, 1,
/*  1847*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  1855*/            OPC_EmitInteger, MVT::i32, 1, 
/*  1858*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), 1:{ *:[i32] })
/*  1866*/          0, /*End of Scope*/
/*  1867*/        0, /*End of Scope*/
/*  1868*/      /*Scope*/ 46|128,1/*174*/, /*->2044*/
/*  1870*/        OPC_CheckType, MVT::i32,
/*  1872*/        OPC_MoveParent,
/*  1873*/        OPC_RecordChild1, // #1 = $op2
/*  1874*/        OPC_MoveChild1,
/*  1875*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1877*/        OPC_MoveParent,
/*  1878*/        OPC_Scope, 10, /*->1890*/ // 10 children in Scope
/*  1880*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1882*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETLT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1890*/        /*Scope*/ 10, /*->1901*/
/*  1891*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1893*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETULT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1901*/        /*Scope*/ 10, /*->1912*/
/*  1902*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1904*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1912*/        /*Scope*/ 10, /*->1923*/
/*  1913*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1915*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETUGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1923*/        /*Scope*/ 17, /*->1941*/
/*  1924*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1926*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1934*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1941*/        /*Scope*/ 17, /*->1959*/
/*  1942*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1944*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1952*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1959*/        /*Scope*/ 17, /*->1977*/
/*  1960*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1962*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  1970*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  1977*/        /*Scope*/ 21, /*->1999*/
/*  1978*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1980*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  1988*/          OPC_EmitInteger, MVT::i32, 1, 
/*  1991*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  1999*/        /*Scope*/ 21, /*->2021*/
/*  2000*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  2002*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  2010*/          OPC_EmitInteger, MVT::i32, 1, 
/*  2013*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1), 1:{ *:[i32] })
/*  2021*/        /*Scope*/ 21, /*->2043*/
/*  2022*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  2024*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  2032*/          OPC_EmitInteger, MVT::i32, 1, 
/*  2035*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  2043*/        0, /*End of Scope*/
/*  2044*/      0, /*End of Scope*/
/*  2045*/    0, /*End of Scope*/
/*  2046*/  /*SwitchOpcode*/ 101|128,3/*485*/, TARGET_VAL(ISD::LOAD),// ->2535
/*  2050*/    OPC_RecordMemRef,
/*  2051*/    OPC_RecordNode, // #0 = 'ld' chained node
/*  2052*/    OPC_Scope, 45|128,1/*173*/, /*->2228*/ // 2 children in Scope
/*  2055*/      OPC_MoveChild1,
/*  2056*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  2059*/      OPC_RecordChild0, // #1 = $op1
/*  2060*/      OPC_MoveChild0,
/*  2061*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2063*/      OPC_MoveParent,
/*  2064*/      OPC_RecordChild1, // #2 = $op2
/*  2065*/      OPC_MoveChild1,
/*  2066*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2069*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  2071*/      OPC_MoveParent,
/*  2072*/      OPC_MoveParent,
/*  2073*/      OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  2075*/      OPC_CheckType, MVT::i32,
/*  2077*/      OPC_Scope, 17, /*->2096*/ // 6 children in Scope
/*  2079*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*  2081*/        OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2083*/        OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2085*/        OPC_EmitMergeInputChains1_0,
/*  2086*/        OPC_EmitConvertToTarget, 2,
/*  2088*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2096*/      /*Scope*/ 17, /*->2114*/
/*  2097*/        OPC_CheckPredicate, 12, // Predicate_zextload
/*  2099*/        OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2101*/        OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2103*/        OPC_EmitMergeInputChains1_0,
/*  2104*/        OPC_EmitConvertToTarget, 2,
/*  2106*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2114*/      /*Scope*/ 17, /*->2132*/
/*  2115*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*  2117*/        OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2119*/        OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2121*/        OPC_EmitMergeInputChains1_0,
/*  2122*/        OPC_EmitConvertToTarget, 2,
/*  2124*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2132*/      /*Scope*/ 17, /*->2150*/
/*  2133*/        OPC_CheckPredicate, 12, // Predicate_zextload
/*  2135*/        OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2137*/        OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2139*/        OPC_EmitMergeInputChains1_0,
/*  2140*/        OPC_EmitConvertToTarget, 2,
/*  2142*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2150*/      /*Scope*/ 15, /*->2166*/
/*  2151*/        OPC_CheckPredicate, 13, // Predicate_load
/*  2153*/        OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2155*/        OPC_EmitMergeInputChains1_0,
/*  2156*/        OPC_EmitConvertToTarget, 2,
/*  2158*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2166*/      /*Scope*/ 60, /*->2227*/
/*  2167*/        OPC_CheckPredicate, 14, // Predicate_extload
/*  2169*/        OPC_Scope, 27, /*->2198*/ // 2 children in Scope
/*  2171*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2173*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2175*/          OPC_EmitMergeInputChains1_0,
/*  2176*/          OPC_EmitConvertToTarget, 2,
/*  2178*/          OPC_Scope, 8, /*->2188*/ // 2 children in Scope
/*  2180*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2188*/          /*Scope*/ 8, /*->2197*/
/*  2189*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2197*/          0, /*End of Scope*/
/*  2198*/        /*Scope*/ 27, /*->2226*/
/*  2199*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2201*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2203*/          OPC_EmitMergeInputChains1_0,
/*  2204*/          OPC_EmitConvertToTarget, 2,
/*  2206*/          OPC_Scope, 8, /*->2216*/ // 2 children in Scope
/*  2208*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2216*/          /*Scope*/ 8, /*->2225*/
/*  2217*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2225*/          0, /*End of Scope*/
/*  2226*/        0, /*End of Scope*/
/*  2227*/      0, /*End of Scope*/
/*  2228*/    /*Scope*/ 48|128,2/*304*/, /*->2534*/
/*  2230*/      OPC_RecordChild1, // #1 = $op1
/*  2231*/      OPC_MoveChild1,
/*  2232*/      OPC_Scope, 24|128,1/*152*/, /*->2387*/ // 2 children in Scope
/*  2235*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2238*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  2240*/        OPC_MoveParent,
/*  2241*/        OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  2243*/        OPC_CheckType, MVT::i32,
/*  2245*/        OPC_Scope, 16, /*->2263*/ // 6 children in Scope
/*  2247*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  2249*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2251*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2253*/          OPC_EmitMergeInputChains1_0,
/*  2254*/          OPC_EmitConvertToTarget, 1,
/*  2256*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2263*/        /*Scope*/ 16, /*->2280*/
/*  2264*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  2266*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2268*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2270*/          OPC_EmitMergeInputChains1_0,
/*  2271*/          OPC_EmitConvertToTarget, 1,
/*  2273*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2280*/        /*Scope*/ 16, /*->2297*/
/*  2281*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  2283*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2285*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2287*/          OPC_EmitMergeInputChains1_0,
/*  2288*/          OPC_EmitConvertToTarget, 1,
/*  2290*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2297*/        /*Scope*/ 16, /*->2314*/
/*  2298*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  2300*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2302*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2304*/          OPC_EmitMergeInputChains1_0,
/*  2305*/          OPC_EmitConvertToTarget, 1,
/*  2307*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2314*/        /*Scope*/ 14, /*->2329*/
/*  2315*/          OPC_CheckPredicate, 13, // Predicate_load
/*  2317*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2319*/          OPC_EmitMergeInputChains1_0,
/*  2320*/          OPC_EmitConvertToTarget, 1,
/*  2322*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2329*/        /*Scope*/ 56, /*->2386*/
/*  2330*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2332*/          OPC_Scope, 25, /*->2359*/ // 2 children in Scope
/*  2334*/            OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2336*/            OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2338*/            OPC_EmitMergeInputChains1_0,
/*  2339*/            OPC_EmitConvertToTarget, 1,
/*  2341*/            OPC_Scope, 7, /*->2350*/ // 2 children in Scope
/*  2343*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2350*/            /*Scope*/ 7, /*->2358*/
/*  2351*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2358*/            0, /*End of Scope*/
/*  2359*/          /*Scope*/ 25, /*->2385*/
/*  2360*/            OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2362*/            OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2364*/            OPC_EmitMergeInputChains1_0,
/*  2365*/            OPC_EmitConvertToTarget, 1,
/*  2367*/            OPC_Scope, 7, /*->2376*/ // 2 children in Scope
/*  2369*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2376*/            /*Scope*/ 7, /*->2384*/
/*  2377*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2384*/            0, /*End of Scope*/
/*  2385*/          0, /*End of Scope*/
/*  2386*/        0, /*End of Scope*/
/*  2387*/      /*Scope*/ 16|128,1/*144*/, /*->2533*/
/*  2389*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2391*/        OPC_CheckType, MVT::i32,
/*  2393*/        OPC_MoveParent,
/*  2394*/        OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  2396*/        OPC_CheckType, MVT::i32,
/*  2398*/        OPC_Scope, 14, /*->2414*/ // 9 children in Scope
/*  2400*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  2402*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2404*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2406*/          OPC_EmitMergeInputChains1_0,
/*  2407*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2414*/        /*Scope*/ 14, /*->2429*/
/*  2415*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2417*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2419*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2421*/          OPC_EmitMergeInputChains1_0,
/*  2422*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2429*/        /*Scope*/ 14, /*->2444*/
/*  2430*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  2432*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2434*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2436*/          OPC_EmitMergeInputChains1_0,
/*  2437*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2444*/        /*Scope*/ 14, /*->2459*/
/*  2445*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2447*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2449*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2451*/          OPC_EmitMergeInputChains1_0,
/*  2452*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2459*/        /*Scope*/ 14, /*->2474*/
/*  2460*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  2462*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2464*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2466*/          OPC_EmitMergeInputChains1_0,
/*  2467*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2474*/        /*Scope*/ 14, /*->2489*/
/*  2475*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2477*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2479*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2481*/          OPC_EmitMergeInputChains1_0,
/*  2482*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2489*/        /*Scope*/ 14, /*->2504*/
/*  2490*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  2492*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2494*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2496*/          OPC_EmitMergeInputChains1_0,
/*  2497*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2504*/        /*Scope*/ 14, /*->2519*/
/*  2505*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2507*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2509*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2511*/          OPC_EmitMergeInputChains1_0,
/*  2512*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2519*/        /*Scope*/ 12, /*->2532*/
/*  2520*/          OPC_CheckPredicate, 13, // Predicate_load
/*  2522*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2524*/          OPC_EmitMergeInputChains1_0,
/*  2525*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2532*/        0, /*End of Scope*/
/*  2533*/      0, /*End of Scope*/
/*  2534*/    0, /*End of Scope*/
/*  2535*/  /*SwitchOpcode*/ 9|128,2/*265*/, TARGET_VAL(CodasipISD::TailCall),// ->2804
/*  2539*/    OPC_RecordNode, // #0 = 'TailCall' chained node
/*  2540*/    OPC_CaptureGlueInput,
/*  2541*/    OPC_Scope, 116|128,1/*244*/, /*->2788*/ // 2 children in Scope
/*  2544*/      OPC_MoveChild1,
/*  2545*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2548*/      OPC_RecordChild0, // #1 = $op0
/*  2549*/      OPC_MoveChild0,
/*  2550*/      OPC_SwitchOpcode /*4 cases */, 56, TARGET_VAL(ISD::TargetGlobalAddress),// ->2610
/*  2554*/        OPC_MoveParent,
/*  2555*/        OPC_CheckType, MVT::i32,
/*  2557*/        OPC_MoveParent,
/*  2558*/        OPC_EmitMergeInputChains1_0,
/*  2559*/        OPC_Scope, 6, /*->2567*/ // 7 children in Scope
/*  2561*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2567*/        /*Scope*/ 6, /*->2574*/
/*  2568*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2574*/        /*Scope*/ 6, /*->2581*/
/*  2575*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2581*/        /*Scope*/ 6, /*->2588*/
/*  2582*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2588*/        /*Scope*/ 6, /*->2595*/
/*  2589*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2595*/        /*Scope*/ 6, /*->2602*/
/*  2596*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2602*/        /*Scope*/ 6, /*->2609*/
/*  2603*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2609*/        0, /*End of Scope*/
/*  2610*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetExternalSymbol),// ->2669
/*  2613*/        OPC_MoveParent,
/*  2614*/        OPC_CheckType, MVT::i32,
/*  2616*/        OPC_MoveParent,
/*  2617*/        OPC_EmitMergeInputChains1_0,
/*  2618*/        OPC_Scope, 6, /*->2626*/ // 7 children in Scope
/*  2620*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2626*/        /*Scope*/ 6, /*->2633*/
/*  2627*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2633*/        /*Scope*/ 6, /*->2640*/
/*  2634*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2640*/        /*Scope*/ 6, /*->2647*/
/*  2641*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2647*/        /*Scope*/ 6, /*->2654*/
/*  2648*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2654*/        /*Scope*/ 6, /*->2661*/
/*  2655*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2661*/        /*Scope*/ 6, /*->2668*/
/*  2662*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2668*/        0, /*End of Scope*/
/*  2669*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::MCSymbol),// ->2728
/*  2672*/        OPC_MoveParent,
/*  2673*/        OPC_CheckType, MVT::i32,
/*  2675*/        OPC_MoveParent,
/*  2676*/        OPC_EmitMergeInputChains1_0,
/*  2677*/        OPC_Scope, 6, /*->2685*/ // 7 children in Scope
/*  2679*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2685*/        /*Scope*/ 6, /*->2692*/
/*  2686*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2692*/        /*Scope*/ 6, /*->2699*/
/*  2693*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2699*/        /*Scope*/ 6, /*->2706*/
/*  2700*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2706*/        /*Scope*/ 6, /*->2713*/
/*  2707*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2713*/        /*Scope*/ 6, /*->2720*/
/*  2714*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2720*/        /*Scope*/ 6, /*->2727*/
/*  2721*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  2727*/        0, /*End of Scope*/
/*  2728*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetBlockAddress),// ->2787
/*  2731*/        OPC_MoveParent,
/*  2732*/        OPC_CheckType, MVT::i32,
/*  2734*/        OPC_MoveParent,
/*  2735*/        OPC_EmitMergeInputChains1_0,
/*  2736*/        OPC_Scope, 6, /*->2744*/ // 7 children in Scope
/*  2738*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2744*/        /*Scope*/ 6, /*->2751*/
/*  2745*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2751*/        /*Scope*/ 6, /*->2758*/
/*  2752*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2758*/        /*Scope*/ 6, /*->2765*/
/*  2759*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2765*/        /*Scope*/ 6, /*->2772*/
/*  2766*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2772*/        /*Scope*/ 6, /*->2779*/
/*  2773*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2779*/        /*Scope*/ 6, /*->2786*/
/*  2780*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  2786*/        0, /*End of Scope*/
/*  2787*/      0, // EndSwitchOpcode
/*  2788*/    /*Scope*/ 14, /*->2803*/
/*  2789*/      OPC_RecordChild1, // #1 = $op0
/*  2790*/      OPC_MoveChild1,
/*  2791*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2793*/      OPC_CheckType, MVT::i32,
/*  2795*/      OPC_MoveParent,
/*  2796*/      OPC_EmitMergeInputChains1_0,
/*  2797*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                    1/*#Ops*/, 1, 
                // Src: (TailCall regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_jump_reg_alias__regs__TAILCALL_CLONE_ regs:{ *:[i32] }:$op0)
/*  2803*/    0, /*End of Scope*/
/*  2804*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::INTRINSIC_W_CHAIN),// ->2829
/*  2807*/    OPC_RecordNode, // #0 = 'intrinsic_w_chain' chained node
/*  2808*/    OPC_CheckChild1Integer, 17|128,1/*145*/, 
/*  2811*/    OPC_RecordChild2, // #1 = $op1
/*  2812*/    OPC_RecordChild3, // #2 = $op2
/*  2813*/    OPC_MoveChild3,
/*  2814*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2817*/    OPC_MoveParent,
/*  2818*/    OPC_EmitMergeInputChains1_0,
/*  2819*/    OPC_EmitConvertToTarget, 2,
/*  2821*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::hwloop_loop_decrement_reg), 0|OPFL_Chain,
                  MVT::i32, 2/*#Ops*/, 1, 3, 
              // Src: (intrinsic_w_chain:{ *:[i32] } 145:{ *:[iPTR] }, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2) - Complexity = 11
              // Dst: (hwloop_loop_decrement_reg:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2829*/  /*SwitchOpcode*/ 89, TARGET_VAL(CodasipISD::Call),// ->2921
/*  2832*/    OPC_RecordNode, // #0 = 'Call' chained node
/*  2833*/    OPC_CaptureGlueInput,
/*  2834*/    OPC_Scope, 68, /*->2904*/ // 2 children in Scope
/*  2836*/      OPC_MoveChild1,
/*  2837*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2840*/      OPC_RecordChild0, // #1 = $op0
/*  2841*/      OPC_MoveChild0,
/*  2842*/      OPC_SwitchOpcode /*4 cases */, 12, TARGET_VAL(ISD::TargetGlobalAddress),// ->2858
/*  2846*/        OPC_MoveParent,
/*  2847*/        OPC_CheckType, MVT::i32,
/*  2849*/        OPC_MoveParent,
/*  2850*/        OPC_EmitMergeInputChains1_0,
/*  2851*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)
/*  2858*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetExternalSymbol),// ->2873
/*  2861*/        OPC_MoveParent,
/*  2862*/        OPC_CheckType, MVT::i32,
/*  2864*/        OPC_MoveParent,
/*  2865*/        OPC_EmitMergeInputChains1_0,
/*  2866*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)
/*  2873*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::MCSymbol),// ->2888
/*  2876*/        OPC_MoveParent,
/*  2877*/        OPC_CheckType, MVT::i32,
/*  2879*/        OPC_MoveParent,
/*  2880*/        OPC_EmitMergeInputChains1_0,
/*  2881*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)
/*  2888*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetBlockAddress),// ->2903
/*  2891*/        OPC_MoveParent,
/*  2892*/        OPC_CheckType, MVT::i32,
/*  2894*/        OPC_MoveParent,
/*  2895*/        OPC_EmitMergeInputChains1_0,
/*  2896*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)
/*  2903*/      0, // EndSwitchOpcode
/*  2904*/    /*Scope*/ 15, /*->2920*/
/*  2905*/      OPC_RecordChild1, // #1 = $op0
/*  2906*/      OPC_MoveChild1,
/*  2907*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2909*/      OPC_CheckType, MVT::i32,
/*  2911*/      OPC_MoveParent,
/*  2912*/      OPC_EmitMergeInputChains1_0,
/*  2913*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__regs__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    MVT::i32, 1/*#Ops*/, 1, 
                // Src: (Call regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_call_reg_alias__regs__:{ *:[i32] } regs:{ *:[i32] }:$op0)
/*  2920*/    0, /*End of Scope*/
/*  2921*/  /*SwitchOpcode*/ 47, TARGET_VAL(ISD::SUB),// ->2971
/*  2924*/    OPC_Scope, 25, /*->2951*/ // 2 children in Scope
/*  2926*/      OPC_CheckChild0Integer, 0, 
/*  2928*/      OPC_RecordChild1, // #0 = $op1
/*  2929*/      OPC_MoveChild1,
/*  2930*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2932*/      OPC_MoveParent,
/*  2933*/      OPC_Scope, 7, /*->2942*/ // 2 children in Scope
/*  2935*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2942*/      /*Scope*/ 7, /*->2950*/
/*  2943*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_neg_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2950*/      0, /*End of Scope*/
/*  2951*/    /*Scope*/ 18, /*->2970*/
/*  2952*/      OPC_RecordChild0, // #0 = $op1
/*  2953*/      OPC_MoveChild0,
/*  2954*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2956*/      OPC_MoveParent,
/*  2957*/      OPC_RecordChild1, // #1 = $op2
/*  2958*/      OPC_MoveChild1,
/*  2959*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2961*/      OPC_MoveParent,
/*  2962*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sub:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_sub__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2970*/    0, /*End of Scope*/
/*  2971*/  /*SwitchOpcode*/ 53|128,2/*309*/, TARGET_VAL(ISD::SELECT),// ->3284
/*  2975*/    OPC_Scope, 22|128,2/*278*/, /*->3256*/ // 2 children in Scope
/*  2978*/      OPC_MoveChild0,
/*  2979*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  2982*/      OPC_RecordChild0, // #0 = $op0
/*  2983*/      OPC_MoveChild0,
/*  2984*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2986*/      OPC_CheckType, MVT::i32,
/*  2988*/      OPC_MoveParent,
/*  2989*/      OPC_RecordChild1, // #1 = $op1
/*  2990*/      OPC_MoveChild1,
/*  2991*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2993*/      OPC_MoveParent,
/*  2994*/      OPC_Scope, 25, /*->3021*/ // 10 children in Scope
/*  2996*/        OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2998*/        OPC_MoveParent,
/*  2999*/        OPC_RecordChild1, // #2 = $op2
/*  3000*/        OPC_MoveChild1,
/*  3001*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3003*/        OPC_MoveParent,
/*  3004*/        OPC_RecordChild2, // #3 = $op3
/*  3005*/        OPC_MoveChild2,
/*  3006*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3008*/        OPC_MoveParent,
/*  3009*/        OPC_CheckType, MVT::i32,
/*  3011*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_7), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_7:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3021*/      /*Scope*/ 25, /*->3047*/
/*  3022*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  3024*/        OPC_MoveParent,
/*  3025*/        OPC_RecordChild1, // #2 = $op2
/*  3026*/        OPC_MoveChild1,
/*  3027*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3029*/        OPC_MoveParent,
/*  3030*/        OPC_RecordChild2, // #3 = $op3
/*  3031*/        OPC_MoveChild2,
/*  3032*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3034*/        OPC_MoveParent,
/*  3035*/        OPC_CheckType, MVT::i32,
/*  3037*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_8), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_8:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3047*/      /*Scope*/ 25, /*->3073*/
/*  3048*/        OPC_CheckChild2CondCode, ISD::SETGE,
/*  3050*/        OPC_MoveParent,
/*  3051*/        OPC_RecordChild1, // #2 = $op2
/*  3052*/        OPC_MoveChild1,
/*  3053*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3055*/        OPC_MoveParent,
/*  3056*/        OPC_RecordChild2, // #3 = $op3
/*  3057*/        OPC_MoveChild2,
/*  3058*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3060*/        OPC_MoveParent,
/*  3061*/        OPC_CheckType, MVT::i32,
/*  3063*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_9), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_9:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3073*/      /*Scope*/ 25, /*->3099*/
/*  3074*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  3076*/        OPC_MoveParent,
/*  3077*/        OPC_RecordChild1, // #2 = $op2
/*  3078*/        OPC_MoveChild1,
/*  3079*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3081*/        OPC_MoveParent,
/*  3082*/        OPC_RecordChild2, // #3 = $op3
/*  3083*/        OPC_MoveChild2,
/*  3084*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3086*/        OPC_MoveParent,
/*  3087*/        OPC_CheckType, MVT::i32,
/*  3089*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_10), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_10:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3099*/      /*Scope*/ 25, /*->3125*/
/*  3100*/        OPC_CheckChild2CondCode, ISD::SETLE,
/*  3102*/        OPC_MoveParent,
/*  3103*/        OPC_RecordChild1, // #2 = $op2
/*  3104*/        OPC_MoveChild1,
/*  3105*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3107*/        OPC_MoveParent,
/*  3108*/        OPC_RecordChild2, // #3 = $op3
/*  3109*/        OPC_MoveChild2,
/*  3110*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3112*/        OPC_MoveParent,
/*  3113*/        OPC_CheckType, MVT::i32,
/*  3115*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_11), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_11:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3125*/      /*Scope*/ 25, /*->3151*/
/*  3126*/        OPC_CheckChild2CondCode, ISD::SETLT,
/*  3128*/        OPC_MoveParent,
/*  3129*/        OPC_RecordChild1, // #2 = $op2
/*  3130*/        OPC_MoveChild1,
/*  3131*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3133*/        OPC_MoveParent,
/*  3134*/        OPC_RecordChild2, // #3 = $op3
/*  3135*/        OPC_MoveChild2,
/*  3136*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3138*/        OPC_MoveParent,
/*  3139*/        OPC_CheckType, MVT::i32,
/*  3141*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_12), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_12:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3151*/      /*Scope*/ 25, /*->3177*/
/*  3152*/        OPC_CheckChild2CondCode, ISD::SETUGE,
/*  3154*/        OPC_MoveParent,
/*  3155*/        OPC_RecordChild1, // #2 = $op2
/*  3156*/        OPC_MoveChild1,
/*  3157*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3159*/        OPC_MoveParent,
/*  3160*/        OPC_RecordChild2, // #3 = $op3
/*  3161*/        OPC_MoveChild2,
/*  3162*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3164*/        OPC_MoveParent,
/*  3165*/        OPC_CheckType, MVT::i32,
/*  3167*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_13), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_13:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3177*/      /*Scope*/ 25, /*->3203*/
/*  3178*/        OPC_CheckChild2CondCode, ISD::SETUGT,
/*  3180*/        OPC_MoveParent,
/*  3181*/        OPC_RecordChild1, // #2 = $op2
/*  3182*/        OPC_MoveChild1,
/*  3183*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3185*/        OPC_MoveParent,
/*  3186*/        OPC_RecordChild2, // #3 = $op3
/*  3187*/        OPC_MoveChild2,
/*  3188*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3190*/        OPC_MoveParent,
/*  3191*/        OPC_CheckType, MVT::i32,
/*  3193*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_14), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_14:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3203*/      /*Scope*/ 25, /*->3229*/
/*  3204*/        OPC_CheckChild2CondCode, ISD::SETULE,
/*  3206*/        OPC_MoveParent,
/*  3207*/        OPC_RecordChild1, // #2 = $op2
/*  3208*/        OPC_MoveChild1,
/*  3209*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3211*/        OPC_MoveParent,
/*  3212*/        OPC_RecordChild2, // #3 = $op3
/*  3213*/        OPC_MoveChild2,
/*  3214*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3216*/        OPC_MoveParent,
/*  3217*/        OPC_CheckType, MVT::i32,
/*  3219*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_15), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_15:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3229*/      /*Scope*/ 25, /*->3255*/
/*  3230*/        OPC_CheckChild2CondCode, ISD::SETULT,
/*  3232*/        OPC_MoveParent,
/*  3233*/        OPC_RecordChild1, // #2 = $op2
/*  3234*/        OPC_MoveChild1,
/*  3235*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3237*/        OPC_MoveParent,
/*  3238*/        OPC_RecordChild2, // #3 = $op3
/*  3239*/        OPC_MoveChild2,
/*  3240*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3242*/        OPC_MoveParent,
/*  3243*/        OPC_CheckType, MVT::i32,
/*  3245*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_16), 0,
                      MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                  // Dst: (rule_SELECT_16:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  3255*/      0, /*End of Scope*/
/*  3256*/    /*Scope*/ 26, /*->3283*/
/*  3257*/      OPC_RecordChild0, // #0 = $op0
/*  3258*/      OPC_MoveChild0,
/*  3259*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3261*/      OPC_MoveParent,
/*  3262*/      OPC_RecordChild1, // #1 = $op1
/*  3263*/      OPC_MoveChild1,
/*  3264*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3266*/      OPC_MoveParent,
/*  3267*/      OPC_RecordChild2, // #2 = $op2
/*  3268*/      OPC_MoveChild2,
/*  3269*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3271*/      OPC_MoveParent,
/*  3272*/      OPC_CheckType, MVT::i32,
/*  3274*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_17), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (rule_SELECT_17:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3283*/    0, /*End of Scope*/
/*  3284*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::AND),// ->3325
/*  3287*/    OPC_RecordChild0, // #0 = $op1
/*  3288*/    OPC_MoveChild0,
/*  3289*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3291*/    OPC_MoveParent,
/*  3292*/    OPC_RecordChild1, // #1 = $op2
/*  3293*/    OPC_MoveChild1,
/*  3294*/    OPC_Scope, 16, /*->3312*/ // 2 children in Scope
/*  3296*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3299*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3301*/      OPC_MoveParent,
/*  3302*/      OPC_EmitConvertToTarget, 1,
/*  3304*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3312*/    /*Scope*/ 11, /*->3324*/
/*  3313*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3315*/      OPC_MoveParent,
/*  3316*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_and__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3324*/    0, /*End of Scope*/
/*  3325*/  /*SwitchOpcode*/ 50, TARGET_VAL(ISD::OR),// ->3378
/*  3328*/    OPC_RecordChild0, // #0 = $op1
/*  3329*/    OPC_MoveChild0,
/*  3330*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3332*/    OPC_MoveParent,
/*  3333*/    OPC_RecordChild1, // #1 = $op2
/*  3334*/    OPC_MoveChild1,
/*  3335*/    OPC_Scope, 28, /*->3365*/ // 2 children in Scope
/*  3337*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3340*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3342*/      OPC_MoveParent,
/*  3343*/      OPC_EmitConvertToTarget, 1,
/*  3345*/      OPC_Scope, 8, /*->3355*/ // 2 children in Scope
/*  3347*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3355*/      /*Scope*/ 8, /*->3364*/
/*  3356*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_ori_emulation_alias__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3364*/      0, /*End of Scope*/
/*  3365*/    /*Scope*/ 11, /*->3377*/
/*  3366*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3368*/      OPC_MoveParent,
/*  3369*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_or__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3377*/    0, /*End of Scope*/
/*  3378*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::XOR),// ->3419
/*  3381*/    OPC_RecordChild0, // #0 = $op1
/*  3382*/    OPC_MoveChild0,
/*  3383*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3385*/    OPC_MoveParent,
/*  3386*/    OPC_RecordChild1, // #1 = $op2
/*  3387*/    OPC_MoveChild1,
/*  3388*/    OPC_Scope, 16, /*->3406*/ // 2 children in Scope
/*  3390*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3393*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3395*/      OPC_MoveParent,
/*  3396*/      OPC_EmitConvertToTarget, 1,
/*  3398*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3406*/    /*Scope*/ 11, /*->3418*/
/*  3407*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3409*/      OPC_MoveParent,
/*  3410*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3418*/    0, /*End of Scope*/
/*  3419*/  /*SwitchOpcode*/ 21, TARGET_VAL(ISD::CALLSEQ_START),// ->3443
/*  3422*/    OPC_RecordNode, // #0 = 'callseq_start' chained node
/*  3423*/    OPC_RecordChild1, // #1 = $InSize
/*  3424*/    OPC_MoveChild1,
/*  3425*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3428*/    OPC_MoveParent,
/*  3429*/    OPC_RecordChild2, // #2 = $OutSize
/*  3430*/    OPC_MoveChild2,
/*  3431*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3434*/    OPC_MoveParent,
/*  3435*/    OPC_EmitMergeInputChains1_0,
/*  3436*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLSTART), 0|OPFL_Chain|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_start (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLSTART (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3443*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::CALLSEQ_END),// ->3468
/*  3446*/    OPC_RecordNode, // #0 = 'callseq_end' chained node
/*  3447*/    OPC_CaptureGlueInput,
/*  3448*/    OPC_RecordChild1, // #1 = $InSize
/*  3449*/    OPC_MoveChild1,
/*  3450*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3453*/    OPC_MoveParent,
/*  3454*/    OPC_RecordChild2, // #2 = $OutSize
/*  3455*/    OPC_MoveChild2,
/*  3456*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3459*/    OPC_MoveParent,
/*  3460*/    OPC_EmitMergeInputChains1_0,
/*  3461*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLEND), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_end (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLEND (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3468*/  /*SwitchOpcode*/ 12, TARGET_VAL(ISD::INTRINSIC_VOID),// ->3483
/*  3471*/    OPC_RecordNode, // #0 = 'intrinsic_void' chained node
/*  3472*/    OPC_CheckChild1Integer, 101|128,1/*229*/, 
/*  3475*/    OPC_RecordChild2, // #1 = $op0
/*  3476*/    OPC_EmitMergeInputChains1_0,
/*  3477*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::hwloop_set_loop_iterations), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (intrinsic_void 229:{ *:[iPTR] }, regs:{ *:[i32] }:$op0) - Complexity = 8
              // Dst: (hwloop_set_loop_iterations regs:{ *:[i32] }:$op0)
/*  3483*/  /*SwitchOpcode*/ 79|128,1/*207*/, TARGET_VAL(ISD::Constant),// ->3694
/*  3487*/    OPC_Scope, 109, /*->3598*/ // 3 children in Scope
/*  3489*/      OPC_CheckInteger, 0, 
/*  3491*/      OPC_Scope, 6, /*->3499*/ // 15 children in Scope
/*  3493*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_mv_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_mv_alias__regs__reg0__:{ *:[i32] })
/*  3499*/      /*Scope*/ 6, /*->3506*/
/*  3500*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_snez_alias__regs__reg0__:{ *:[i32] })
/*  3506*/      /*Scope*/ 6, /*->3513*/
/*  3507*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_add__regs__reg0__reg0__:{ *:[i32] })
/*  3513*/      /*Scope*/ 6, /*->3520*/
/*  3514*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_and__regs__reg0__reg0__:{ *:[i32] })
/*  3520*/      /*Scope*/ 6, /*->3527*/
/*  3521*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_or__regs__reg0__reg0__:{ *:[i32] })
/*  3527*/      /*Scope*/ 6, /*->3534*/
/*  3528*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__reg0__reg0__:{ *:[i32] })
/*  3534*/      /*Scope*/ 6, /*->3541*/
/*  3535*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_slt__regs__reg0__reg0__:{ *:[i32] })
/*  3541*/      /*Scope*/ 6, /*->3548*/
/*  3542*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sltu__regs__reg0__reg0__:{ *:[i32] })
/*  3548*/      /*Scope*/ 6, /*->3555*/
/*  3549*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__reg0__reg0__:{ *:[i32] })
/*  3555*/      /*Scope*/ 6, /*->3562*/
/*  3556*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__reg0__reg0__:{ *:[i32] })
/*  3562*/      /*Scope*/ 6, /*->3569*/
/*  3563*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__reg0__:{ *:[i32] })
/*  3569*/      /*Scope*/ 6, /*->3576*/
/*  3570*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_xor__regs__reg0__reg0__:{ *:[i32] })
/*  3576*/      /*Scope*/ 6, /*->3583*/
/*  3577*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_neg_alias__regs__reg0__:{ *:[i32] })
/*  3583*/      /*Scope*/ 6, /*->3590*/
/*  3584*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3590*/      /*Scope*/ 6, /*->3597*/
/*  3591*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3597*/      0, /*End of Scope*/
/*  3598*/    /*Scope*/ 25, /*->3624*/
/*  3599*/      OPC_CheckInteger, 1, 
/*  3601*/      OPC_Scope, 6, /*->3609*/ // 3 children in Scope
/*  3603*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 7
                  // Dst: (i_seqz_alias__regs__reg0__:{ *:[i32] })
/*  3609*/      /*Scope*/ 6, /*->3616*/
/*  3610*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3616*/      /*Scope*/ 6, /*->3623*/
/*  3617*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3623*/      0, /*End of Scope*/
/*  3624*/    /*Scope*/ 68, /*->3693*/
/*  3625*/      OPC_RecordNode, // #0 = $op1
/*  3626*/      OPC_Scope, 30, /*->3658*/ // 4 children in Scope
/*  3628*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3630*/        OPC_EmitConvertToTarget, 0,
/*  3632*/        OPC_Scope, 7, /*->3641*/ // 3 children in Scope
/*  3634*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3641*/        /*Scope*/ 7, /*->3649*/
/*  3642*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3649*/        /*Scope*/ 7, /*->3657*/
/*  3650*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3657*/        0, /*End of Scope*/
/*  3658*/      /*Scope*/ 11, /*->3670*/
/*  3659*/        OPC_CheckPredicate, 15, // Predicate_Trunc12_i32imm
/*  3661*/        OPC_EmitConvertToTarget, 0,
/*  3663*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_lui__opc_lui__regs__imm20_s12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_Trunc12_i32imm>>:$op1 - Complexity = 5
                  // Dst: (i_lui__opc_lui__regs__imm20_s12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3670*/      /*Scope*/ 11, /*->3682*/
/*  3671*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3673*/        OPC_EmitConvertToTarget, 0,
/*  3675*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                  // Dst: (i_ori_emulation_alias__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3682*/      /*Scope*/ 9, /*->3692*/
/*  3683*/        OPC_EmitConvertToTarget, 0,
/*  3685*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] }):$op1 - Complexity = 3
                  // Dst: (e_movi32__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3692*/      0, /*End of Scope*/
/*  3693*/    0, /*End of Scope*/
/*  3694*/  /*SwitchOpcode*/ 15, TARGET_VAL(ISD::BRIND),// ->3712
/*  3697*/    OPC_RecordNode, // #0 = 'brind' chained node
/*  3698*/    OPC_RecordChild1, // #1 = $op0
/*  3699*/    OPC_MoveChild1,
/*  3700*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3702*/    OPC_CheckType, MVT::i32,
/*  3704*/    OPC_MoveParent,
/*  3705*/    OPC_EmitMergeInputChains1_0,
/*  3706*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (brind regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
              // Dst: (i_jump_reg_alias__regs__ regs:{ *:[i32] }:$op0)
/*  3712*/  /*SwitchOpcode*/ 82, TARGET_VAL(CodasipISD::GAWrap),// ->3797
/*  3715*/    OPC_RecordChild0, // #0 = $op1
/*  3716*/    OPC_MoveChild0,
/*  3717*/    OPC_SwitchOpcode /*6 cases */, 10, TARGET_VAL(ISD::TargetGlobalAddress),// ->3731
/*  3721*/      OPC_MoveParent,
/*  3722*/      OPC_CheckType, MVT::i32,
/*  3724*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__GA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__GA:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1)
/*  3731*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetExternalSymbol),// ->3744
/*  3734*/      OPC_MoveParent,
/*  3735*/      OPC_CheckType, MVT::i32,
/*  3737*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__ES), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1)
/*  3744*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::MCSymbol),// ->3757
/*  3747*/      OPC_MoveParent,
/*  3748*/      OPC_CheckType, MVT::i32,
/*  3750*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__MC), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op1)
/*  3757*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetBlockAddress),// ->3770
/*  3760*/      OPC_MoveParent,
/*  3761*/      OPC_CheckType, MVT::i32,
/*  3763*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__BA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1)
/*  3770*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetJumpTable),// ->3783
/*  3773*/      OPC_MoveParent,
/*  3774*/      OPC_CheckType, MVT::i32,
/*  3776*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__JT), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__JT:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1)
/*  3783*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetConstantPool),// ->3796
/*  3786*/      OPC_MoveParent,
/*  3787*/      OPC_CheckType, MVT::i32,
/*  3789*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__CP), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__CP:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1)
/*  3796*/    0, // EndSwitchOpcode
/*  3797*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::BR),// ->3859
/*  3800*/    OPC_RecordNode, // #0 = 'br' chained node
/*  3801*/    OPC_RecordChild1, // #1 = $op0
/*  3802*/    OPC_MoveChild1,
/*  3803*/    OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3806*/    OPC_MoveParent,
/*  3807*/    OPC_EmitMergeInputChains1_0,
/*  3808*/    OPC_Scope, 6, /*->3816*/ // 7 children in Scope
/*  3810*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 5
                // Dst: (i_jmp_rel_alias__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3816*/    /*Scope*/ 6, /*->3823*/
/*  3817*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3823*/    /*Scope*/ 6, /*->3830*/
/*  3824*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3830*/    /*Scope*/ 6, /*->3837*/
/*  3831*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3837*/    /*Scope*/ 6, /*->3844*/
/*  3838*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3844*/    /*Scope*/ 6, /*->3851*/
/*  3845*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__ (bb:{ *:[Other] }):$op0)
/*  3851*/    /*Scope*/ 6, /*->3858*/
/*  3852*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_jal__opc_jal__reg0__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3858*/    0, /*End of Scope*/
/*  3859*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::Ret),// ->3870
/*  3862*/    OPC_RecordNode, // #0 = 'Return' chained node
/*  3863*/    OPC_CaptureGlueInput,
/*  3864*/    OPC_EmitMergeInputChains1_0,
/*  3865*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs___RET_EMUL_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (Return) - Complexity = 5
              // Dst: (i_jump_reg_alias__regs___RET_EMUL_)
/*  3870*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::MRET),// ->3881
/*  3873*/    OPC_RecordNode, // #0 = 'MRet' chained node
/*  3874*/    OPC_CaptureGlueInput,
/*  3875*/    OPC_EmitMergeInputChains1_0,
/*  3876*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_xret__opc_mret__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (MRet) - Complexity = 3
              // Dst: (i_xret__opc_mret__)
/*  3881*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_LONGJMP),// ->3895
/*  3884*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_longjmp' chained node
/*  3885*/    OPC_RecordChild1, // #1 = $op0
/*  3886*/    OPC_CheckChild1Type, MVT::i32,
/*  3888*/    OPC_EmitMergeInputChains1_0,
/*  3889*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SjLj_LongJmp), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_longjmp regs:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SjLj_LongJmp regs:{ *:[i32] }:$op0)
/*  3895*/  /*SwitchOpcode*/ 12, TARGET_VAL(CodasipISD::EH_SJLJ_SETJMP),// ->3910
/*  3898*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setjmp' chained node
/*  3899*/    OPC_RecordChild1, // #1 = $op1
/*  3900*/    OPC_CheckChild1Type, MVT::i32,
/*  3902*/    OPC_EmitMergeInputChains1_0,
/*  3903*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::EH_SjLj_SetJmp), 0|OPFL_Chain,
                  MVT::i32, 1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setjmp:{ *:[i32] } regs:{ *:[i32] }:$op1) - Complexity = 3
              // Dst: (EH_SjLj_SetJmp:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  3910*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_SETUP_DISPATCH),// ->3924
/*  3913*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setup_dispatch' chained node
/*  3914*/    OPC_RecordChild1, // #1 = $op0
/*  3915*/    OPC_CheckChild1Type, MVT::i32,
/*  3917*/    OPC_EmitMergeInputChains1_0,
/*  3918*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SJLJ_SETUP_DISPATCH), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setup_dispatch regs:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SJLJ_SETUP_DISPATCH regs:{ *:[i32] }:$op0)
/*  3924*/  0, // EndSwitchOpcode
    0
  }; // Total Array size is 3926 bytes

  // Opcode Histogram:
  // #OPC_Scope                                = 70
  // #OPC_RecordNode                           = 17
  // #OPC_RecordChild                          = 131
  // #OPC_RecordMemRef                         = 2
  // #OPC_CaptureGlueInput                     = 5
  // #OPC_MoveChild                            = 147
  // #OPC_MoveParent                           = 209
  // #OPC_CheckSame                            = 0
  // #OPC_CheckChildSame                       = 0
  // #OPC_CheckPatternPredicate                = 0
  // #OPC_CheckPredicate                       = 246
  // #OPC_CheckOpcode                          = 70
  // #OPC_SwitchOpcode                         = 4
  // #OPC_CheckType                            = 43
  // #OPC_SwitchType                           = 0
  // #OPC_CheckChildType                       = 9
  // #OPC_CheckInteger                         = 2
  // #OPC_CheckChildInteger                    = 18
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
    // Predicate_NotFI_i32_regs
    SDNode *N = Node;
    (void)N;
return !FrameIndexSDNode::classof(N);
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
