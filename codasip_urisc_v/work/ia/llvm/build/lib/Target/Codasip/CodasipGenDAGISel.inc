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
/*     0*/  OPC_SwitchOpcode /*33 cases */, 60|128,3/*444*/, TARGET_VAL(ISD::SELECT),// ->449
/*     5*/    OPC_Scope, 29|128,3/*413*/, /*->421*/ // 2 children in Scope
/*     8*/      OPC_MoveChild0,
/*     9*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*    12*/      OPC_Scope, 97, /*->111*/ // 2 children in Scope
/*    14*/        OPC_MoveChild0,
/*    15*/        OPC_CheckOpcode, TARGET_VAL(ISD::SELECT),
/*    18*/        OPC_MoveChild0,
/*    19*/        OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*    22*/        OPC_RecordChild0, // #0 = $op1
/*    23*/        OPC_MoveChild0,
/*    24*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*    26*/        OPC_MoveParent,
/*    27*/        OPC_CheckChild1Integer, 0|128,0|128,126|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709518848*/, 
/*    38*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*    40*/        OPC_MoveParent,
/*    41*/        OPC_CheckChild1Same, 0,
/*    43*/        OPC_CheckChild2Integer, 0|128,0|128,126|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709518848*/, 
/*    54*/        OPC_MoveParent,
/*    55*/        OPC_CheckChild1Integer, 127|128,127|128,1/*32767*/, 
/*    59*/        OPC_CheckChild2CondCode, ISD::SETLT,
/*    61*/        OPC_MoveParent,
/*    62*/        OPC_MoveChild1,
/*    63*/        OPC_CheckOpcode, TARGET_VAL(ISD::SELECT),
/*    66*/        OPC_MoveChild0,
/*    67*/        OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*    70*/        OPC_CheckChild0Same, 0,
/*    72*/        OPC_CheckChild1Integer, 0|128,0|128,126|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709518848*/, 
/*    83*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*    85*/        OPC_MoveParent,
/*    86*/        OPC_CheckChild1Same, 0,
/*    88*/        OPC_CheckChild2Integer, 0|128,0|128,126|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709518848*/, 
/*    99*/        OPC_MoveParent,
/*   100*/        OPC_CheckChild2Integer, 127|128,127|128,1/*32767*/, 
/*   104*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, -32768:{ *:[i32] }, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, -32768:{ *:[i32] }), 32767:{ *:[i32] }, SETLT:{ *:[Other] }), (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, -32768:{ *:[i32] }, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, -32768:{ *:[i32] }), 32767:{ *:[i32] }) - Complexity = 52
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*   111*/      /*Scope*/ 51|128,2/*307*/, /*->420*/
/*   113*/        OPC_RecordChild0, // #0 = $op1
/*   114*/        OPC_MoveChild0,
/*   115*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   117*/        OPC_Scope, 28, /*->147*/ // 2 children in Scope
/*   119*/          OPC_MoveParent,
/*   120*/          OPC_CheckChild1Integer, 0, 
/*   122*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*   124*/          OPC_MoveParent,
/*   125*/          OPC_CheckChild1Integer, 0, 
/*   127*/          OPC_MoveChild2,
/*   128*/          OPC_CheckOpcode, TARGET_VAL(ISD::SDIV),
/*   131*/          OPC_RecordChild0, // #1 = $op2
/*   132*/          OPC_MoveChild0,
/*   133*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   135*/          OPC_MoveParent,
/*   136*/          OPC_CheckChild1Same, 0,
/*   138*/          OPC_MoveParent,
/*   139*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), 0:{ *:[i32] }, (sdiv:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)) - Complexity = 22
                    // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   147*/        /*Scope*/ 14|128,2/*270*/, /*->419*/
/*   149*/          OPC_CheckType, MVT::i32,
/*   151*/          OPC_MoveParent,
/*   152*/          OPC_RecordChild1, // #1 = $op1
/*   153*/          OPC_MoveChild1,
/*   154*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   156*/          OPC_MoveParent,
/*   157*/          OPC_Scope, 25, /*->184*/ // 10 children in Scope
/*   159*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*   161*/            OPC_MoveParent,
/*   162*/            OPC_RecordChild1, // #2 = $op2
/*   163*/            OPC_MoveChild1,
/*   164*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   166*/            OPC_MoveParent,
/*   167*/            OPC_RecordChild2, // #3 = $op3
/*   168*/            OPC_MoveChild2,
/*   169*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   171*/            OPC_MoveParent,
/*   172*/            OPC_CheckType, MVT::i32,
/*   174*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_7), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_7:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   184*/          /*Scope*/ 25, /*->210*/
/*   185*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*   187*/            OPC_MoveParent,
/*   188*/            OPC_RecordChild1, // #2 = $op2
/*   189*/            OPC_MoveChild1,
/*   190*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   192*/            OPC_MoveParent,
/*   193*/            OPC_RecordChild2, // #3 = $op3
/*   194*/            OPC_MoveChild2,
/*   195*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   197*/            OPC_MoveParent,
/*   198*/            OPC_CheckType, MVT::i32,
/*   200*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_8), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_8:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   210*/          /*Scope*/ 25, /*->236*/
/*   211*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*   213*/            OPC_MoveParent,
/*   214*/            OPC_RecordChild1, // #2 = $op2
/*   215*/            OPC_MoveChild1,
/*   216*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   218*/            OPC_MoveParent,
/*   219*/            OPC_RecordChild2, // #3 = $op3
/*   220*/            OPC_MoveChild2,
/*   221*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   223*/            OPC_MoveParent,
/*   224*/            OPC_CheckType, MVT::i32,
/*   226*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_9), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_9:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   236*/          /*Scope*/ 25, /*->262*/
/*   237*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*   239*/            OPC_MoveParent,
/*   240*/            OPC_RecordChild1, // #2 = $op2
/*   241*/            OPC_MoveChild1,
/*   242*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   244*/            OPC_MoveParent,
/*   245*/            OPC_RecordChild2, // #3 = $op3
/*   246*/            OPC_MoveChild2,
/*   247*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   249*/            OPC_MoveParent,
/*   250*/            OPC_CheckType, MVT::i32,
/*   252*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_10), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_10:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   262*/          /*Scope*/ 25, /*->288*/
/*   263*/            OPC_CheckChild2CondCode, ISD::SETLE,
/*   265*/            OPC_MoveParent,
/*   266*/            OPC_RecordChild1, // #2 = $op2
/*   267*/            OPC_MoveChild1,
/*   268*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   270*/            OPC_MoveParent,
/*   271*/            OPC_RecordChild2, // #3 = $op3
/*   272*/            OPC_MoveChild2,
/*   273*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   275*/            OPC_MoveParent,
/*   276*/            OPC_CheckType, MVT::i32,
/*   278*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_11), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_11:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   288*/          /*Scope*/ 25, /*->314*/
/*   289*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*   291*/            OPC_MoveParent,
/*   292*/            OPC_RecordChild1, // #2 = $op2
/*   293*/            OPC_MoveChild1,
/*   294*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   296*/            OPC_MoveParent,
/*   297*/            OPC_RecordChild2, // #3 = $op3
/*   298*/            OPC_MoveChild2,
/*   299*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   301*/            OPC_MoveParent,
/*   302*/            OPC_CheckType, MVT::i32,
/*   304*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_12), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_12:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   314*/          /*Scope*/ 25, /*->340*/
/*   315*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*   317*/            OPC_MoveParent,
/*   318*/            OPC_RecordChild1, // #2 = $op2
/*   319*/            OPC_MoveChild1,
/*   320*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   322*/            OPC_MoveParent,
/*   323*/            OPC_RecordChild2, // #3 = $op3
/*   324*/            OPC_MoveChild2,
/*   325*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   327*/            OPC_MoveParent,
/*   328*/            OPC_CheckType, MVT::i32,
/*   330*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_13), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_13:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   340*/          /*Scope*/ 25, /*->366*/
/*   341*/            OPC_CheckChild2CondCode, ISD::SETUGT,
/*   343*/            OPC_MoveParent,
/*   344*/            OPC_RecordChild1, // #2 = $op2
/*   345*/            OPC_MoveChild1,
/*   346*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   348*/            OPC_MoveParent,
/*   349*/            OPC_RecordChild2, // #3 = $op3
/*   350*/            OPC_MoveChild2,
/*   351*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   353*/            OPC_MoveParent,
/*   354*/            OPC_CheckType, MVT::i32,
/*   356*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_14), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_14:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   366*/          /*Scope*/ 25, /*->392*/
/*   367*/            OPC_CheckChild2CondCode, ISD::SETULE,
/*   369*/            OPC_MoveParent,
/*   370*/            OPC_RecordChild1, // #2 = $op2
/*   371*/            OPC_MoveChild1,
/*   372*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   374*/            OPC_MoveParent,
/*   375*/            OPC_RecordChild2, // #3 = $op3
/*   376*/            OPC_MoveChild2,
/*   377*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   379*/            OPC_MoveParent,
/*   380*/            OPC_CheckType, MVT::i32,
/*   382*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_15), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_15:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   392*/          /*Scope*/ 25, /*->418*/
/*   393*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*   395*/            OPC_MoveParent,
/*   396*/            OPC_RecordChild1, // #2 = $op2
/*   397*/            OPC_MoveChild1,
/*   398*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   400*/            OPC_MoveParent,
/*   401*/            OPC_RecordChild2, // #3 = $op3
/*   402*/            OPC_MoveChild2,
/*   403*/            OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   405*/            OPC_MoveParent,
/*   406*/            OPC_CheckType, MVT::i32,
/*   408*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_16), 0,
                          MVT::i32, 4/*#Ops*/, 0, 1, 2, 3, 
                      // Src: (select:{ *:[i32] } (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op3) - Complexity = 10
                      // Dst: (rule_SELECT_16:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*   418*/          0, /*End of Scope*/
/*   419*/        0, /*End of Scope*/
/*   420*/      0, /*End of Scope*/
/*   421*/    /*Scope*/ 26, /*->448*/
/*   422*/      OPC_RecordChild0, // #0 = $op0
/*   423*/      OPC_MoveChild0,
/*   424*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   426*/      OPC_MoveParent,
/*   427*/      OPC_RecordChild1, // #1 = $op1
/*   428*/      OPC_MoveChild1,
/*   429*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   431*/      OPC_MoveParent,
/*   432*/      OPC_RecordChild2, // #2 = $op2
/*   433*/      OPC_MoveChild2,
/*   434*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   436*/      OPC_MoveParent,
/*   437*/      OPC_CheckType, MVT::i32,
/*   439*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::rule_SELECT_17), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (select:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (rule_SELECT_17:{ *:[i32] } regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*   448*/    0, /*End of Scope*/
/*   449*/  /*SwitchOpcode*/ 5|128,5/*645*/, TARGET_VAL(ISD::STORE),// ->1098
/*   453*/    OPC_RecordMemRef,
/*   454*/    OPC_RecordNode, // #0 = 'st' chained node
/*   455*/    OPC_Scope, 49|128,1/*177*/, /*->635*/ // 8 children in Scope
/*   458*/      OPC_CheckChild1Integer, 0, 
/*   460*/      OPC_Scope, 36, /*->498*/ // 4 children in Scope
/*   462*/        OPC_CheckChild1Type, MVT::i8,
/*   464*/        OPC_MoveChild2,
/*   465*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   468*/        OPC_RecordChild0, // #1 = $op0
/*   469*/        OPC_MoveChild0,
/*   470*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   472*/        OPC_MoveParent,
/*   473*/        OPC_RecordChild1, // #2 = $op1
/*   474*/        OPC_MoveChild1,
/*   475*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   478*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   480*/        OPC_MoveParent,
/*   481*/        OPC_MoveParent,
/*   482*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   484*/        OPC_CheckPredicate, 3, // Predicate_store
/*   486*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   488*/        OPC_EmitMergeInputChains1_0,
/*   489*/        OPC_EmitConvertToTarget, 2,
/*   491*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:{ *:[i8] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   498*/      /*Scope*/ 36, /*->535*/
/*   499*/        OPC_CheckChild1Type, MVT::i16,
/*   501*/        OPC_MoveChild2,
/*   502*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   505*/        OPC_RecordChild0, // #1 = $op0
/*   506*/        OPC_MoveChild0,
/*   507*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   509*/        OPC_MoveParent,
/*   510*/        OPC_RecordChild1, // #2 = $op1
/*   511*/        OPC_MoveChild1,
/*   512*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   515*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   517*/        OPC_MoveParent,
/*   518*/        OPC_MoveParent,
/*   519*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   521*/        OPC_CheckPredicate, 3, // Predicate_store
/*   523*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   525*/        OPC_EmitMergeInputChains1_0,
/*   526*/        OPC_EmitConvertToTarget, 2,
/*   528*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      2/*#Ops*/, 1, 3, 
                  // Src: (st 0:{ *:[i16] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                  // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   535*/      /*Scope*/ 72, /*->608*/
/*   536*/        OPC_MoveChild2,
/*   537*/        OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   540*/        OPC_RecordChild0, // #1 = $op0
/*   541*/        OPC_MoveChild0,
/*   542*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   544*/        OPC_MoveParent,
/*   545*/        OPC_RecordChild1, // #2 = $op1
/*   546*/        OPC_MoveChild1,
/*   547*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   550*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   552*/        OPC_MoveParent,
/*   553*/        OPC_MoveParent,
/*   554*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   556*/        OPC_Scope, 14, /*->572*/ // 2 children in Scope
/*   558*/          OPC_CheckPredicate, 3, // Predicate_store
/*   560*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   562*/          OPC_EmitMergeInputChains1_0,
/*   563*/          OPC_EmitConvertToTarget, 2,
/*   565*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 18
                    // Dst: (i_store__opc_storew__reg0__simm12_simple__regs__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   572*/        /*Scope*/ 34, /*->607*/
/*   573*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   575*/          OPC_Scope, 14, /*->591*/ // 2 children in Scope
/*   577*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   579*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   581*/            OPC_EmitMergeInputChains1_0,
/*   582*/            OPC_EmitConvertToTarget, 2,
/*   584*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 18
                      // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   591*/          /*Scope*/ 14, /*->606*/
/*   592*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   594*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   596*/            OPC_EmitMergeInputChains1_0,
/*   597*/            OPC_EmitConvertToTarget, 2,
/*   599*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st 0:{ *:[i32] }, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 18
                      // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*   606*/          0, /*End of Scope*/
/*   607*/        0, /*End of Scope*/
/*   608*/      /*Scope*/ 25, /*->634*/
/*   609*/        OPC_CheckChild1Type, MVT::i8,
/*   611*/        OPC_RecordChild2, // #1 = $op0
/*   612*/        OPC_MoveChild2,
/*   613*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   616*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   618*/        OPC_MoveParent,
/*   619*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   621*/        OPC_CheckPredicate, 3, // Predicate_store
/*   623*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   625*/        OPC_EmitMergeInputChains1_0,
/*   626*/        OPC_EmitConvertToTarget, 1,
/*   628*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 2, 
                  // Src: (st 0:{ *:[i8] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*   634*/      0, /*End of Scope*/
/*   635*/    /*Scope*/ 44, /*->680*/
/*   636*/      OPC_RecordChild1, // #1 = $op0
/*   637*/      OPC_MoveChild1,
/*   638*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   640*/      OPC_CheckType, MVT::i32,
/*   642*/      OPC_MoveParent,
/*   643*/      OPC_MoveChild2,
/*   644*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   647*/      OPC_RecordChild0, // #2 = $op1
/*   648*/      OPC_MoveChild0,
/*   649*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   651*/      OPC_MoveParent,
/*   652*/      OPC_RecordChild1, // #3 = $op2
/*   653*/      OPC_MoveChild1,
/*   654*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   657*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   659*/      OPC_MoveParent,
/*   660*/      OPC_MoveParent,
/*   661*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   663*/      OPC_CheckPredicate, 5, // Predicate_truncstore
/*   665*/      OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   667*/      OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   669*/      OPC_EmitMergeInputChains1_0,
/*   670*/      OPC_EmitConvertToTarget, 3,
/*   672*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeb__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   680*/    /*Scope*/ 27, /*->708*/
/*   681*/      OPC_CheckChild1Integer, 0, 
/*   683*/      OPC_CheckChild1Type, MVT::i16,
/*   685*/      OPC_RecordChild2, // #1 = $op0
/*   686*/      OPC_MoveChild2,
/*   687*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   690*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   692*/      OPC_MoveParent,
/*   693*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   695*/      OPC_CheckPredicate, 3, // Predicate_store
/*   697*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   699*/      OPC_EmitMergeInputChains1_0,
/*   700*/      OPC_EmitConvertToTarget, 1,
/*   702*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:{ *:[i16] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeh__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*   708*/    /*Scope*/ 44, /*->753*/
/*   709*/      OPC_RecordChild1, // #1 = $op0
/*   710*/      OPC_MoveChild1,
/*   711*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   713*/      OPC_CheckType, MVT::i32,
/*   715*/      OPC_MoveParent,
/*   716*/      OPC_MoveChild2,
/*   717*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   720*/      OPC_RecordChild0, // #2 = $op1
/*   721*/      OPC_MoveChild0,
/*   722*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   724*/      OPC_MoveParent,
/*   725*/      OPC_RecordChild1, // #3 = $op2
/*   726*/      OPC_MoveChild1,
/*   727*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   730*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   732*/      OPC_MoveParent,
/*   733*/      OPC_MoveParent,
/*   734*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   736*/      OPC_CheckPredicate, 5, // Predicate_truncstore
/*   738*/      OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   740*/      OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   742*/      OPC_EmitMergeInputChains1_0,
/*   743*/      OPC_EmitConvertToTarget, 3,
/*   745*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storeh__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   753*/    /*Scope*/ 25, /*->779*/
/*   754*/      OPC_CheckChild1Integer, 0, 
/*   756*/      OPC_RecordChild2, // #1 = $op0
/*   757*/      OPC_MoveChild2,
/*   758*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   761*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   763*/      OPC_MoveParent,
/*   764*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   766*/      OPC_CheckPredicate, 3, // Predicate_store
/*   768*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   770*/      OPC_EmitMergeInputChains1_0,
/*   771*/      OPC_EmitConvertToTarget, 1,
/*   773*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                    1/*#Ops*/, 2, 
                // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storew__reg0__simm12_simple__reg0__ (imm:{ *:[i32] }):$op0)
/*   779*/    /*Scope*/ 42, /*->822*/
/*   780*/      OPC_RecordChild1, // #1 = $op0
/*   781*/      OPC_MoveChild1,
/*   782*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   784*/      OPC_CheckType, MVT::i32,
/*   786*/      OPC_MoveParent,
/*   787*/      OPC_MoveChild2,
/*   788*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*   791*/      OPC_RecordChild0, // #2 = $op1
/*   792*/      OPC_MoveChild0,
/*   793*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   795*/      OPC_MoveParent,
/*   796*/      OPC_RecordChild1, // #3 = $op2
/*   797*/      OPC_MoveChild1,
/*   798*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   801*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   803*/      OPC_MoveParent,
/*   804*/      OPC_MoveParent,
/*   805*/      OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   807*/      OPC_CheckPredicate, 3, // Predicate_store
/*   809*/      OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   811*/      OPC_EmitMergeInputChains1_0,
/*   812*/      OPC_EmitConvertToTarget, 3,
/*   814*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                    3/*#Ops*/, 1, 2, 4, 
                // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 14
                // Dst: (i_store__opc_storew__regs__simm12_simple__regs__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*   822*/    /*Scope*/ 18|128,1/*146*/, /*->970*/
/*   824*/      OPC_CheckChild1Integer, 0, 
/*   826*/      OPC_Scope, 42, /*->870*/ // 4 children in Scope
/*   828*/        OPC_RecordChild2, // #1 = $op0
/*   829*/        OPC_MoveChild2,
/*   830*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   833*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   835*/        OPC_MoveParent,
/*   836*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   838*/        OPC_CheckPredicate, 5, // Predicate_truncstore
/*   840*/        OPC_Scope, 13, /*->855*/ // 2 children in Scope
/*   842*/          OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   844*/          OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   846*/          OPC_EmitMergeInputChains1_0,
/*   847*/          OPC_EmitConvertToTarget, 1,
/*   849*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 2, 
                    // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 14
                    // Dst: (i_store__opc_storeb__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_ (imm:{ *:[i32] }):$op0)
/*   855*/        /*Scope*/ 13, /*->869*/
/*   856*/          OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   858*/          OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   860*/          OPC_EmitMergeInputChains1_0,
/*   861*/          OPC_EmitConvertToTarget, 1,
/*   863*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 2, 
                    // Src: (st 0:{ *:[i32] }, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 14
                    // Dst: (i_store__opc_storeh__reg0__simm12_simple__reg0__i32_TRUNC_CLONE_ (imm:{ *:[i32] }):$op0)
/*   869*/        0, /*End of Scope*/
/*   870*/      /*Scope*/ 22, /*->893*/
/*   871*/        OPC_CheckChild1Type, MVT::i8,
/*   873*/        OPC_RecordChild2, // #1 = $op0
/*   874*/        OPC_MoveChild2,
/*   875*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   877*/        OPC_CheckType, MVT::i32,
/*   879*/        OPC_MoveParent,
/*   880*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   882*/        OPC_CheckPredicate, 3, // Predicate_store
/*   884*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   886*/        OPC_EmitMergeInputChains1_0,
/*   887*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:{ *:[i8] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                  // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*   893*/      /*Scope*/ 22, /*->916*/
/*   894*/        OPC_CheckChild1Type, MVT::i16,
/*   896*/        OPC_RecordChild2, // #1 = $op0
/*   897*/        OPC_MoveChild2,
/*   898*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   900*/        OPC_CheckType, MVT::i32,
/*   902*/        OPC_MoveParent,
/*   903*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   905*/        OPC_CheckPredicate, 3, // Predicate_store
/*   907*/        OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   909*/        OPC_EmitMergeInputChains1_0,
/*   910*/        OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                      1/*#Ops*/, 1, 
                  // Src: (st 0:{ *:[i16] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                  // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*   916*/      /*Scope*/ 52, /*->969*/
/*   917*/        OPC_RecordChild2, // #1 = $op0
/*   918*/        OPC_MoveChild2,
/*   919*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   921*/        OPC_CheckType, MVT::i32,
/*   923*/        OPC_MoveParent,
/*   924*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   926*/        OPC_Scope, 11, /*->939*/ // 2 children in Scope
/*   928*/          OPC_CheckPredicate, 3, // Predicate_store
/*   930*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*   932*/          OPC_EmitMergeInputChains1_0,
/*   933*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        1/*#Ops*/, 1, 
                    // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 11
                    // Dst: (i_store__opc_storew__reg0__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0)
/*   939*/        /*Scope*/ 28, /*->968*/
/*   940*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   942*/          OPC_Scope, 11, /*->955*/ // 2 children in Scope
/*   944*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   946*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*   948*/            OPC_EmitMergeInputChains1_0,
/*   949*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#Ops*/, 1, 
                      // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 11
                      // Dst: (i_store__opc_storeb__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0)
/*   955*/          /*Scope*/ 11, /*->967*/
/*   956*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*   958*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*   960*/            OPC_EmitMergeInputChains1_0,
/*   961*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          1/*#Ops*/, 1, 
                      // Src: (st 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 11
                      // Dst: (i_store__opc_storeh__reg0__simm12_simple__regs__immspec_1_i32_TRUNC_CLONE_ regs:{ *:[i32] }:$op0)
/*   967*/          0, /*End of Scope*/
/*   968*/        0, /*End of Scope*/
/*   969*/      0, /*End of Scope*/
/*   970*/    /*Scope*/ 126, /*->1097*/
/*   971*/      OPC_RecordChild1, // #1 = $op0
/*   972*/      OPC_MoveChild1,
/*   973*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*   975*/      OPC_CheckType, MVT::i32,
/*   977*/      OPC_MoveParent,
/*   978*/      OPC_RecordChild2, // #2 = $op1
/*   979*/      OPC_MoveChild2,
/*   980*/      OPC_Scope, 60, /*->1042*/ // 2 children in Scope
/*   982*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*   985*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*   987*/        OPC_MoveParent,
/*   988*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*   990*/        OPC_Scope, 34, /*->1026*/ // 2 children in Scope
/*   992*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*   994*/          OPC_Scope, 14, /*->1010*/ // 2 children in Scope
/*   996*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*   998*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*  1000*/            OPC_EmitMergeInputChains1_0,
/*  1001*/            OPC_EmitConvertToTarget, 2,
/*  1003*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 10
                      // Dst: (i_store__opc_storeb__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  1010*/          /*Scope*/ 14, /*->1025*/
/*  1011*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*  1013*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*  1015*/            OPC_EmitMergeInputChains1_0,
/*  1016*/            OPC_EmitConvertToTarget, 2,
/*  1018*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 3, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 10
                      // Dst: (i_store__opc_storeh__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  1025*/          0, /*End of Scope*/
/*  1026*/        /*Scope*/ 14, /*->1041*/
/*  1027*/          OPC_CheckPredicate, 3, // Predicate_store
/*  1029*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*  1031*/          OPC_EmitMergeInputChains1_0,
/*  1032*/          OPC_EmitConvertToTarget, 2,
/*  1034*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 3, 
                    // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 10
                    // Dst: (i_store__opc_storew__regs__simm12_simple__reg0__ regs:{ *:[i32] }:$op0, (imm:{ *:[i32] }):$op1)
/*  1041*/        0, /*End of Scope*/
/*  1042*/      /*Scope*/ 53, /*->1096*/
/*  1043*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1045*/        OPC_CheckType, MVT::i32,
/*  1047*/        OPC_MoveParent,
/*  1048*/        OPC_CheckPredicate, 2, // Predicate_unindexedstore
/*  1050*/        OPC_Scope, 30, /*->1082*/ // 2 children in Scope
/*  1052*/          OPC_CheckPredicate, 5, // Predicate_truncstore
/*  1054*/          OPC_Scope, 12, /*->1068*/ // 2 children in Scope
/*  1056*/            OPC_CheckPredicate, 6, // Predicate_truncstorei8
/*  1058*/            OPC_CheckPredicate, 4, // Predicate_truncstorei8_a1_s0
/*  1060*/            OPC_EmitMergeInputChains1_0,
/*  1061*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei8>><<P:Predicate_truncstorei8_a1_s0>> - Complexity = 7
                      // Dst: (i_store__opc_storeb__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*  1068*/          /*Scope*/ 12, /*->1081*/
/*  1069*/            OPC_CheckPredicate, 7, // Predicate_truncstorei16
/*  1071*/            OPC_CheckPredicate, 4, // Predicate_truncstorei16_a1_s0
/*  1073*/            OPC_EmitMergeInputChains1_0,
/*  1074*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                          2/*#Ops*/, 1, 2, 
                      // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_truncstore>><<P:Predicate_truncstorei16>><<P:Predicate_truncstorei16_a1_s0>> - Complexity = 7
                      // Dst: (i_store__opc_storeh__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*  1081*/          0, /*End of Scope*/
/*  1082*/        /*Scope*/ 12, /*->1095*/
/*  1083*/          OPC_CheckPredicate, 3, // Predicate_store
/*  1085*/          OPC_CheckPredicate, 4, // Predicate_store_a1_s0
/*  1087*/          OPC_EmitMergeInputChains1_0,
/*  1088*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_store__opc_storew__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        2/*#Ops*/, 1, 2, 
                    // Src: (st regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedstore>><<P:Predicate_store>><<P:Predicate_store_a1_s0>> - Complexity = 7
                    // Dst: (i_store__opc_storew__regs__simm12_simple__regs__immspec_1_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*  1095*/        0, /*End of Scope*/
/*  1096*/      0, /*End of Scope*/
/*  1097*/    0, /*End of Scope*/
/*  1098*/  /*SwitchOpcode*/ 116, TARGET_VAL(ISD::ADD),// ->1217
/*  1101*/    OPC_Scope, 36, /*->1139*/ // 2 children in Scope
/*  1103*/      OPC_MoveChild0,
/*  1104*/      OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1107*/      OPC_MoveChild0,
/*  1108*/      OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1111*/      OPC_RecordChild0, // #0 = $op1
/*  1112*/      OPC_MoveChild0,
/*  1113*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1115*/      OPC_MoveParent,
/*  1116*/      OPC_RecordChild1, // #1 = $op2
/*  1117*/      OPC_MoveChild1,
/*  1118*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1120*/      OPC_MoveParent,
/*  1121*/      OPC_MoveParent,
/*  1122*/      OPC_CheckChild1Integer, 8, 
/*  1124*/      OPC_MoveParent,
/*  1125*/      OPC_RecordChild1, // #2 = $op3
/*  1126*/      OPC_MoveChild1,
/*  1127*/      OPC_CheckPredicate, 8, // Predicate_NotFI_i32_regs
/*  1129*/      OPC_MoveParent,
/*  1130*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__), 0,
                    MVT::i32, 3/*#Ops*/, 0, 1, 2, 
                // Src: (add:{ *:[i32] } (sra:{ *:[i32] } (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2), 8:{ *:[i32] }), regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3) - Complexity = 17
                // Dst: (i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1139*/    /*Scope*/ 76, /*->1216*/
/*  1140*/      OPC_RecordChild0, // #0 = $op3
/*  1141*/      OPC_MoveChild0,
/*  1142*/      OPC_Scope, 34, /*->1178*/ // 2 children in Scope
/*  1144*/        OPC_CheckPredicate, 8, // Predicate_NotFI_i32_regs
/*  1146*/        OPC_MoveParent,
/*  1147*/        OPC_MoveChild1,
/*  1148*/        OPC_CheckOpcode, TARGET_VAL(ISD::SRA),
/*  1151*/        OPC_MoveChild0,
/*  1152*/        OPC_CheckOpcode, TARGET_VAL(ISD::MUL),
/*  1155*/        OPC_RecordChild0, // #1 = $op1
/*  1156*/        OPC_MoveChild0,
/*  1157*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1159*/        OPC_MoveParent,
/*  1160*/        OPC_RecordChild1, // #2 = $op2
/*  1161*/        OPC_MoveChild1,
/*  1162*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1164*/        OPC_MoveParent,
/*  1165*/        OPC_MoveParent,
/*  1166*/        OPC_CheckChild1Integer, 8, 
/*  1168*/        OPC_MoveParent,
/*  1169*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__), 0,
                      MVT::i32, 3/*#Ops*/, 1, 2, 0, 
                  // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_NotFI_i32_regs>>:$op3, (sra:{ *:[i32] } (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2), 8:{ *:[i32] })) - Complexity = 17
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2, regs:{ *:[i32] }:$op3)
/*  1178*/      /*Scope*/ 36, /*->1215*/
/*  1179*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1181*/        OPC_MoveParent,
/*  1182*/        OPC_RecordChild1, // #1 = $op2
/*  1183*/        OPC_MoveChild1,
/*  1184*/        OPC_Scope, 16, /*->1202*/ // 2 children in Scope
/*  1186*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1189*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1191*/          OPC_MoveParent,
/*  1192*/          OPC_EmitConvertToTarget, 1,
/*  1194*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 2, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                    // Dst: (i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1202*/        /*Scope*/ 11, /*->1214*/
/*  1203*/          OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1205*/          OPC_MoveParent,
/*  1206*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_add__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1214*/        0, /*End of Scope*/
/*  1215*/      0, /*End of Scope*/
/*  1216*/    0, /*End of Scope*/
/*  1217*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::SHL),// ->1279
/*  1220*/    OPC_RecordChild0, // #0 = $op1
/*  1221*/    OPC_MoveChild0,
/*  1222*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1224*/    OPC_MoveParent,
/*  1225*/    OPC_Scope, 17, /*->1244*/ // 2 children in Scope
/*  1227*/      OPC_MoveChild1,
/*  1228*/      OPC_CheckAndImm, 31, 
/*  1230*/      OPC_RecordChild0, // #1 = $op2
/*  1231*/      OPC_MoveChild0,
/*  1232*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1234*/      OPC_MoveParent,
/*  1235*/      OPC_MoveParent,
/*  1236*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_sll__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1244*/    /*Scope*/ 33, /*->1278*/
/*  1245*/      OPC_RecordChild1, // #1 = $op2
/*  1246*/      OPC_MoveChild1,
/*  1247*/      OPC_Scope, 16, /*->1265*/ // 2 children in Scope
/*  1249*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1252*/        OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*  1254*/        OPC_MoveParent,
/*  1255*/        OPC_EmitConvertToTarget, 1,
/*  1257*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1265*/      /*Scope*/ 11, /*->1277*/
/*  1266*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1268*/        OPC_MoveParent,
/*  1269*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (shl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1277*/      0, /*End of Scope*/
/*  1278*/    0, /*End of Scope*/
/*  1279*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::SRA),// ->1341
/*  1282*/    OPC_RecordChild0, // #0 = $op1
/*  1283*/    OPC_MoveChild0,
/*  1284*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1286*/    OPC_MoveParent,
/*  1287*/    OPC_Scope, 17, /*->1306*/ // 2 children in Scope
/*  1289*/      OPC_MoveChild1,
/*  1290*/      OPC_CheckAndImm, 31, 
/*  1292*/      OPC_RecordChild0, // #1 = $op2
/*  1293*/      OPC_MoveChild0,
/*  1294*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1296*/      OPC_MoveParent,
/*  1297*/      OPC_MoveParent,
/*  1298*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1306*/    /*Scope*/ 33, /*->1340*/
/*  1307*/      OPC_RecordChild1, // #1 = $op2
/*  1308*/      OPC_MoveChild1,
/*  1309*/      OPC_Scope, 16, /*->1327*/ // 2 children in Scope
/*  1311*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1314*/        OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*  1316*/        OPC_MoveParent,
/*  1317*/        OPC_EmitConvertToTarget, 1,
/*  1319*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1327*/      /*Scope*/ 11, /*->1339*/
/*  1328*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1330*/        OPC_MoveParent,
/*  1331*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (sra:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1339*/      0, /*End of Scope*/
/*  1340*/    0, /*End of Scope*/
/*  1341*/  /*SwitchOpcode*/ 69, TARGET_VAL(ISD::SRL),// ->1413
/*  1344*/    OPC_RecordChild0, // #0 = $op1
/*  1345*/    OPC_MoveChild0,
/*  1346*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1348*/    OPC_MoveParent,
/*  1349*/    OPC_Scope, 17, /*->1368*/ // 3 children in Scope
/*  1351*/      OPC_MoveChild1,
/*  1352*/      OPC_CheckAndImm, 31, 
/*  1354*/      OPC_RecordChild0, // #1 = $op2
/*  1355*/      OPC_MoveChild0,
/*  1356*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1358*/      OPC_MoveParent,
/*  1359*/      OPC_MoveParent,
/*  1360*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, 31:{ *:[i32] })) - Complexity = 14
                // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__SHIFT_MASK_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1368*/    /*Scope*/ 9, /*->1378*/
/*  1369*/      OPC_CheckChild1Integer, 31, 
/*  1371*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 31:{ *:[i32] }) - Complexity = 10
                // Dst: (i_comp_3reg__opc_slt__regs__regs__reg0__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  1378*/    /*Scope*/ 33, /*->1412*/
/*  1379*/      OPC_RecordChild1, // #1 = $op2
/*  1380*/      OPC_MoveChild1,
/*  1381*/      OPC_Scope, 16, /*->1399*/ // 2 children in Scope
/*  1383*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1386*/        OPC_CheckPredicate, 9, // Predicate_zext5To32imm
/*  1388*/        OPC_MoveParent,
/*  1389*/        OPC_EmitConvertToTarget, 1,
/*  1391*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_zext5To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  1399*/      /*Scope*/ 11, /*->1411*/
/*  1400*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1402*/        OPC_MoveParent,
/*  1403*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__regs__regs__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 1, 
                  // Src: (srl:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  1411*/      0, /*End of Scope*/
/*  1412*/    0, /*End of Scope*/
/*  1413*/  /*SwitchOpcode*/ 74|128,4/*586*/, TARGET_VAL(ISD::BRCOND),// ->2003
/*  1417*/    OPC_RecordNode, // #0 = 'brcond' chained node
/*  1418*/    OPC_Scope, 49|128,4/*561*/, /*->1982*/ // 2 children in Scope
/*  1421*/      OPC_MoveChild1,
/*  1422*/      OPC_CheckOpcode, TARGET_VAL(ISD::SETCC),
/*  1425*/      OPC_RecordChild0, // #1 = $op0
/*  1426*/      OPC_MoveChild0,
/*  1427*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1429*/      OPC_Scope, 91|128,2/*347*/, /*->1779*/ // 2 children in Scope
/*  1432*/        OPC_MoveParent,
/*  1433*/        OPC_Scope, 114, /*->1549*/ // 4 children in Scope
/*  1435*/          OPC_CheckChild1Integer, 0, 
/*  1437*/          OPC_Scope, 36, /*->1475*/ // 4 children in Scope
/*  1439*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1441*/            OPC_MoveParent,
/*  1442*/            OPC_RecordChild2, // #2 = $op1
/*  1443*/            OPC_MoveChild2,
/*  1444*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1447*/            OPC_MoveParent,
/*  1448*/            OPC_EmitMergeInputChains1_0,
/*  1449*/            OPC_Scope, 7, /*->1458*/ // 3 children in Scope
/*  1451*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1458*/            /*Scope*/ 7, /*->1466*/
/*  1459*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_beq__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1466*/            /*Scope*/ 7, /*->1474*/
/*  1467*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1474*/            0, /*End of Scope*/
/*  1475*/          /*Scope*/ 17, /*->1493*/
/*  1476*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  1478*/            OPC_MoveParent,
/*  1479*/            OPC_RecordChild2, // #2 = $op1
/*  1480*/            OPC_MoveChild2,
/*  1481*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1484*/            OPC_MoveParent,
/*  1485*/            OPC_EmitMergeInputChains1_0,
/*  1486*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1493*/          /*Scope*/ 17, /*->1511*/
/*  1494*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1496*/            OPC_MoveParent,
/*  1497*/            OPC_RecordChild2, // #2 = $op1
/*  1498*/            OPC_MoveChild2,
/*  1499*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1502*/            OPC_MoveParent,
/*  1503*/            OPC_EmitMergeInputChains1_0,
/*  1504*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 1, 2, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                      // Dst: (i_control_conditional__opc_blt__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1511*/          /*Scope*/ 36, /*->1548*/
/*  1512*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1514*/            OPC_MoveParent,
/*  1515*/            OPC_RecordChild2, // #2 = $op1
/*  1516*/            OPC_MoveChild2,
/*  1517*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1520*/            OPC_MoveParent,
/*  1521*/            OPC_EmitMergeInputChains1_0,
/*  1522*/            OPC_Scope, 7, /*->1531*/ // 3 children in Scope
/*  1524*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1531*/            /*Scope*/ 7, /*->1539*/
/*  1532*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1539*/            /*Scope*/ 7, /*->1547*/
/*  1540*/              OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                            2/*#Ops*/, 1, 2, 
                        // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 0:{ *:[i32] }, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                        // Dst: (i_control_conditional__opc_bne__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1547*/            0, /*End of Scope*/
/*  1548*/          0, /*End of Scope*/
/*  1549*/        /*Scope*/ 19, /*->1569*/
/*  1550*/          OPC_CheckChild1Integer, 1, 
/*  1552*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1554*/          OPC_MoveParent,
/*  1555*/          OPC_RecordChild2, // #2 = $op1
/*  1556*/          OPC_MoveChild2,
/*  1557*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1560*/          OPC_MoveParent,
/*  1561*/          OPC_EmitMergeInputChains1_0,
/*  1562*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, 1:{ *:[i32] }, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__reg0__regs__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1569*/        /*Scope*/ 28, /*->1598*/
/*  1570*/          OPC_CheckChild1Integer, 127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,127|128,1/*18446744073709551615*/, 
/*  1581*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1583*/          OPC_MoveParent,
/*  1584*/          OPC_RecordChild2, // #2 = $op1
/*  1585*/          OPC_MoveChild2,
/*  1586*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1589*/          OPC_MoveParent,
/*  1590*/          OPC_EmitMergeInputChains1_0,
/*  1591*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__), 0|OPFL_Chain,
                        2/*#Ops*/, 1, 2, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, -1:{ *:[i32] }, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op1) - Complexity = 13
                    // Dst: (i_control_conditional__opc_bge__regs__reg0__rel_addr12__ regs:{ *:[i32] }:$op0, (bb:{ *:[Other] }):$op1)
/*  1598*/        /*Scope*/ 50|128,1/*178*/, /*->1778*/
/*  1600*/          OPC_RecordChild1, // #2 = $op1
/*  1601*/          OPC_MoveChild1,
/*  1602*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  1605*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  1607*/          OPC_MoveParent,
/*  1608*/          OPC_Scope, 27, /*->1637*/ // 6 children in Scope
/*  1610*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1612*/            OPC_MoveParent,
/*  1613*/            OPC_RecordChild2, // #3 = $op2
/*  1614*/            OPC_MoveChild2,
/*  1615*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1618*/            OPC_MoveParent,
/*  1619*/            OPC_EmitMergeInputChains1_0,
/*  1620*/            OPC_EmitConvertToTarget, 2,
/*  1622*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1630*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1637*/          /*Scope*/ 27, /*->1665*/
/*  1638*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  1640*/            OPC_MoveParent,
/*  1641*/            OPC_RecordChild2, // #3 = $op2
/*  1642*/            OPC_MoveChild2,
/*  1643*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1646*/            OPC_MoveParent,
/*  1647*/            OPC_EmitMergeInputChains1_0,
/*  1648*/            OPC_EmitConvertToTarget, 2,
/*  1650*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1658*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1665*/          /*Scope*/ 27, /*->1693*/
/*  1666*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  1668*/            OPC_MoveParent,
/*  1669*/            OPC_RecordChild2, // #3 = $op2
/*  1670*/            OPC_MoveChild2,
/*  1671*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1674*/            OPC_MoveParent,
/*  1675*/            OPC_EmitMergeInputChains1_0,
/*  1676*/            OPC_EmitConvertToTarget, 2,
/*  1678*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1686*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1693*/          /*Scope*/ 27, /*->1721*/
/*  1694*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  1696*/            OPC_MoveParent,
/*  1697*/            OPC_RecordChild2, // #3 = $op2
/*  1698*/            OPC_MoveChild2,
/*  1699*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1702*/            OPC_MoveParent,
/*  1703*/            OPC_EmitMergeInputChains1_0,
/*  1704*/            OPC_EmitConvertToTarget, 2,
/*  1706*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1714*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1721*/          /*Scope*/ 27, /*->1749*/
/*  1722*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1724*/            OPC_MoveParent,
/*  1725*/            OPC_RecordChild2, // #3 = $op2
/*  1726*/            OPC_MoveChild2,
/*  1727*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1730*/            OPC_MoveParent,
/*  1731*/            OPC_EmitMergeInputChains1_0,
/*  1732*/            OPC_EmitConvertToTarget, 2,
/*  1734*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1742*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_beq__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1749*/          /*Scope*/ 27, /*->1777*/
/*  1750*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  1752*/            OPC_MoveParent,
/*  1753*/            OPC_RecordChild2, // #3 = $op2
/*  1754*/            OPC_MoveChild2,
/*  1755*/            OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1758*/            OPC_MoveParent,
/*  1759*/            OPC_EmitMergeInputChains1_0,
/*  1760*/            OPC_EmitConvertToTarget, 2,
/*  1762*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 1, 4,  // Results = #5
/*  1770*/            OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                          2/*#Ops*/, 5, 3, 
                      // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 11
                      // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), (bb:{ *:[Other] }):$op2)
/*  1777*/          0, /*End of Scope*/
/*  1778*/        0, /*End of Scope*/
/*  1779*/      /*Scope*/ 72|128,1/*200*/, /*->1981*/
/*  1781*/        OPC_CheckType, MVT::i32,
/*  1783*/        OPC_MoveParent,
/*  1784*/        OPC_RecordChild1, // #2 = $op1
/*  1785*/        OPC_MoveChild1,
/*  1786*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1788*/        OPC_MoveParent,
/*  1789*/        OPC_Scope, 18, /*->1809*/ // 10 children in Scope
/*  1791*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  1793*/          OPC_MoveParent,
/*  1794*/          OPC_RecordChild2, // #3 = $op2
/*  1795*/          OPC_MoveChild2,
/*  1796*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1799*/          OPC_MoveParent,
/*  1800*/          OPC_EmitMergeInputChains1_0,
/*  1801*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_beq__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1809*/        /*Scope*/ 18, /*->1828*/
/*  1810*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  1812*/          OPC_MoveParent,
/*  1813*/          OPC_RecordChild2, // #3 = $op2
/*  1814*/          OPC_MoveChild2,
/*  1815*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1818*/          OPC_MoveParent,
/*  1819*/          OPC_EmitMergeInputChains1_0,
/*  1820*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1828*/        /*Scope*/ 18, /*->1847*/
/*  1829*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  1831*/          OPC_MoveParent,
/*  1832*/          OPC_RecordChild2, // #3 = $op2
/*  1833*/          OPC_MoveChild2,
/*  1834*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1837*/          OPC_MoveParent,
/*  1838*/          OPC_EmitMergeInputChains1_0,
/*  1839*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1847*/        /*Scope*/ 18, /*->1866*/
/*  1848*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  1850*/          OPC_MoveParent,
/*  1851*/          OPC_RecordChild2, // #3 = $op2
/*  1852*/          OPC_MoveChild2,
/*  1853*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1856*/          OPC_MoveParent,
/*  1857*/          OPC_EmitMergeInputChains1_0,
/*  1858*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1866*/        /*Scope*/ 18, /*->1885*/
/*  1867*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  1869*/          OPC_MoveParent,
/*  1870*/          OPC_RecordChild2, // #3 = $op2
/*  1871*/          OPC_MoveChild2,
/*  1872*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1875*/          OPC_MoveParent,
/*  1876*/          OPC_EmitMergeInputChains1_0,
/*  1877*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1885*/        /*Scope*/ 18, /*->1904*/
/*  1886*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  1888*/          OPC_MoveParent,
/*  1889*/          OPC_RecordChild2, // #3 = $op2
/*  1890*/          OPC_MoveChild2,
/*  1891*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1894*/          OPC_MoveParent,
/*  1895*/          OPC_EmitMergeInputChains1_0,
/*  1896*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bne__regs__regs__rel_addr12__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1904*/        /*Scope*/ 18, /*->1923*/
/*  1905*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  1907*/          OPC_MoveParent,
/*  1908*/          OPC_RecordChild2, // #3 = $op2
/*  1909*/          OPC_MoveChild2,
/*  1910*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1913*/          OPC_MoveParent,
/*  1914*/          OPC_EmitMergeInputChains1_0,
/*  1915*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bge__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1923*/        /*Scope*/ 18, /*->1942*/
/*  1924*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  1926*/          OPC_MoveParent,
/*  1927*/          OPC_RecordChild2, // #3 = $op2
/*  1928*/          OPC_MoveChild2,
/*  1929*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1932*/          OPC_MoveParent,
/*  1933*/          OPC_EmitMergeInputChains1_0,
/*  1934*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bgeu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1942*/        /*Scope*/ 18, /*->1961*/
/*  1943*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  1945*/          OPC_MoveParent,
/*  1946*/          OPC_RecordChild2, // #3 = $op2
/*  1947*/          OPC_MoveChild2,
/*  1948*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1951*/          OPC_MoveParent,
/*  1952*/          OPC_EmitMergeInputChains1_0,
/*  1953*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_blt__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1961*/        /*Scope*/ 18, /*->1980*/
/*  1962*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  1964*/          OPC_MoveParent,
/*  1965*/          OPC_RecordChild2, // #3 = $op2
/*  1966*/          OPC_MoveChild2,
/*  1967*/          OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1970*/          OPC_MoveParent,
/*  1971*/          OPC_EmitMergeInputChains1_0,
/*  1972*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__), 0|OPFL_Chain,
                        3/*#Ops*/, 1, 2, 3, 
                    // Src: (brcond (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGT:{ *:[Other] }), (bb:{ *:[Other] }):$op2) - Complexity = 9
                    // Dst: (i_control_conditional__opc_bltu__regs__regs__rel_addr12__swappedCmpClone0__ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1, (bb:{ *:[Other] }):$op2)
/*  1980*/        0, /*End of Scope*/
/*  1981*/      0, /*End of Scope*/
/*  1982*/    /*Scope*/ 19, /*->2002*/
/*  1983*/      OPC_RecordChild1, // #1 = $op0
/*  1984*/      OPC_MoveChild1,
/*  1985*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  1987*/      OPC_MoveParent,
/*  1988*/      OPC_RecordChild2, // #2 = $op1
/*  1989*/      OPC_MoveChild2,
/*  1990*/      OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  1993*/      OPC_MoveParent,
/*  1994*/      OPC_EmitMergeInputChains1_0,
/*  1995*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__), 0|OPFL_Chain,
                    2/*#Ops*/, 1, 2, 
                // Src: (brcond regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1) - Complexity = 4
                // Dst: (i_control_conditional__opc_bltu__reg0__regs__rel_addr12__ regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (bb:{ *:[Other] }):$op1)
/*  2002*/    0, /*End of Scope*/
/*  2003*/  /*SwitchOpcode*/ 8|128,3/*392*/, TARGET_VAL(ISD::SETCC),// ->2399
/*  2007*/    OPC_RecordChild0, // #0 = $op1
/*  2008*/    OPC_MoveChild0,
/*  2009*/    OPC_Scope, 34, /*->2045*/ // 2 children in Scope
/*  2011*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2014*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  2016*/      OPC_MoveParent,
/*  2017*/      OPC_CheckChild1Integer, 0, 
/*  2019*/      OPC_Scope, 11, /*->2032*/ // 2 children in Scope
/*  2021*/        OPC_CheckChild2CondCode, ISD::SETGT,
/*  2023*/        OPC_EmitConvertToTarget, 0,
/*  2025*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2032*/      /*Scope*/ 11, /*->2044*/
/*  2033*/        OPC_CheckChild2CondCode, ISD::SETNE,
/*  2035*/        OPC_EmitConvertToTarget, 0,
/*  2037*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (setcc:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 13
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2044*/      0, /*End of Scope*/
/*  2045*/    /*Scope*/ 95|128,2/*351*/, /*->2398*/
/*  2047*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2049*/      OPC_Scope, 41|128,1/*169*/, /*->2221*/ // 2 children in Scope
/*  2052*/        OPC_MoveParent,
/*  2053*/        OPC_Scope, 44, /*->2099*/ // 2 children in Scope
/*  2055*/          OPC_CheckChild1Integer, 0, 
/*  2057*/          OPC_Scope, 9, /*->2068*/ // 4 children in Scope
/*  2059*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2061*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETEQ:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2068*/          /*Scope*/ 9, /*->2078*/
/*  2069*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  2071*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 11
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2078*/          /*Scope*/ 9, /*->2088*/
/*  2079*/            OPC_CheckChild2CondCode, ISD::SETGT,
/*  2081*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETGT:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_slt__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2088*/          /*Scope*/ 9, /*->2098*/
/*  2089*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  2091*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 0, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, 0:{ *:[i32] }, SETNE:{ *:[Other] }) - Complexity = 10
                      // Dst: (i_comp_3reg__opc_sltu__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2098*/          0, /*End of Scope*/
/*  2099*/        /*Scope*/ 120, /*->2220*/
/*  2100*/          OPC_RecordChild1, // #1 = $op2
/*  2101*/          OPC_MoveChild1,
/*  2102*/          OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2105*/          OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  2107*/          OPC_MoveParent,
/*  2108*/          OPC_Scope, 12, /*->2122*/ // 6 children in Scope
/*  2110*/            OPC_CheckChild2CondCode, ISD::SETLT,
/*  2112*/            OPC_EmitConvertToTarget, 1,
/*  2114*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETLT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2122*/          /*Scope*/ 12, /*->2135*/
/*  2123*/            OPC_CheckChild2CondCode, ISD::SETULT,
/*  2125*/            OPC_EmitConvertToTarget, 1,
/*  2127*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2, SETULT:{ *:[Other] }) - Complexity = 9
                      // Dst: (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2135*/          /*Scope*/ 19, /*->2155*/
/*  2136*/            OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2138*/            OPC_EmitConvertToTarget, 1,
/*  2140*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  2148*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  2155*/          /*Scope*/ 19, /*->2175*/
/*  2156*/            OPC_CheckChild2CondCode, ISD::SETNE,
/*  2158*/            OPC_EmitConvertToTarget, 1,
/*  2160*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  2168*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETNE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  2175*/          /*Scope*/ 19, /*->2195*/
/*  2176*/            OPC_CheckChild2CondCode, ISD::SETGE,
/*  2178*/            OPC_EmitConvertToTarget, 1,
/*  2180*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  2188*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                          MVT::i32, 1/*#Ops*/, 3, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1))
/*  2195*/          /*Scope*/ 23, /*->2219*/
/*  2196*/            OPC_CheckChild2CondCode, ISD::SETUGE,
/*  2198*/            OPC_EmitConvertToTarget, 1,
/*  2200*/            OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 0, 2,  // Results = #3
/*  2208*/            OPC_EmitInteger, MVT::i32, 1, 
/*  2211*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                          MVT::i32, 2/*#Ops*/, 3, 4, 
                      // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 8
                      // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1), 1:{ *:[i32] })
/*  2219*/          0, /*End of Scope*/
/*  2220*/        0, /*End of Scope*/
/*  2221*/      /*Scope*/ 46|128,1/*174*/, /*->2397*/
/*  2223*/        OPC_CheckType, MVT::i32,
/*  2225*/        OPC_MoveParent,
/*  2226*/        OPC_RecordChild1, // #1 = $op2
/*  2227*/        OPC_MoveChild1,
/*  2228*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2230*/        OPC_MoveParent,
/*  2231*/        OPC_Scope, 10, /*->2243*/ // 10 children in Scope
/*  2233*/          OPC_CheckChild2CondCode, ISD::SETLT,
/*  2235*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETLT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2243*/        /*Scope*/ 10, /*->2254*/
/*  2244*/          OPC_CheckChild2CondCode, ISD::SETULT,
/*  2246*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETULT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2254*/        /*Scope*/ 10, /*->2265*/
/*  2255*/          OPC_CheckChild2CondCode, ISD::SETGT,
/*  2257*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_slt__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2265*/        /*Scope*/ 10, /*->2276*/
/*  2266*/          OPC_CheckChild2CondCode, ISD::SETUGT,
/*  2268*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2, SETUGT:{ *:[Other] }) - Complexity = 6
                    // Dst: (i_comp_3reg__opc_sltu__regs__regs__regs__swappedCmpClone0__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  2276*/        /*Scope*/ 17, /*->2294*/
/*  2277*/          OPC_CheckChild2CondCode, ISD::SETEQ,
/*  2279*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  2287*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETEQ:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  2294*/        /*Scope*/ 17, /*->2312*/
/*  2295*/          OPC_CheckChild2CondCode, ISD::SETNE,
/*  2297*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  2305*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETNE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_snez_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  2312*/        /*Scope*/ 17, /*->2330*/
/*  2313*/          OPC_CheckChild2CondCode, ISD::SETGE,
/*  2315*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  2323*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__regs__), 0,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_seqz_alias__regs__regs__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1))
/*  2330*/        /*Scope*/ 21, /*->2352*/
/*  2331*/          OPC_CheckChild2CondCode, ISD::SETLE,
/*  2333*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  2341*/          OPC_EmitInteger, MVT::i32, 1, 
/*  2344*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETLE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_slt__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  2352*/        /*Scope*/ 21, /*->2374*/
/*  2353*/          OPC_CheckChild2CondCode, ISD::SETUGE,
/*  2355*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 0, 1,  // Results = #2
/*  2363*/          OPC_EmitInteger, MVT::i32, 1, 
/*  2366*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETUGE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1), 1:{ *:[i32] })
/*  2374*/        /*Scope*/ 21, /*->2396*/
/*  2375*/          OPC_CheckChild2CondCode, ISD::SETULE,
/*  2377*/          OPC_EmitNode1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__), 0,
                        MVT::i32, 2/*#Ops*/, 1, 0,  // Results = #2
/*  2385*/          OPC_EmitInteger, MVT::i32, 1, 
/*  2388*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                        MVT::i32, 2/*#Ops*/, 2, 3, 
                    // Src: (setcc:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, SETULE:{ *:[Other] }) - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } (i_comp_3reg__opc_sltu__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0), 1:{ *:[i32] })
/*  2396*/        0, /*End of Scope*/
/*  2397*/      0, /*End of Scope*/
/*  2398*/    0, /*End of Scope*/
/*  2399*/  /*SwitchOpcode*/ 101|128,3/*485*/, TARGET_VAL(ISD::LOAD),// ->2888
/*  2403*/    OPC_RecordMemRef,
/*  2404*/    OPC_RecordNode, // #0 = 'ld' chained node
/*  2405*/    OPC_Scope, 45|128,1/*173*/, /*->2581*/ // 2 children in Scope
/*  2408*/      OPC_MoveChild1,
/*  2409*/      OPC_CheckOpcode, TARGET_VAL(ISD::ADD),
/*  2412*/      OPC_RecordChild0, // #1 = $op1
/*  2413*/      OPC_MoveChild0,
/*  2414*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2416*/      OPC_MoveParent,
/*  2417*/      OPC_RecordChild1, // #2 = $op2
/*  2418*/      OPC_MoveChild1,
/*  2419*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2422*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  2424*/      OPC_MoveParent,
/*  2425*/      OPC_MoveParent,
/*  2426*/      OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  2428*/      OPC_CheckType, MVT::i32,
/*  2430*/      OPC_Scope, 17, /*->2449*/ // 6 children in Scope
/*  2432*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*  2434*/        OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2436*/        OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2438*/        OPC_EmitMergeInputChains1_0,
/*  2439*/        OPC_EmitConvertToTarget, 2,
/*  2441*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2449*/      /*Scope*/ 17, /*->2467*/
/*  2450*/        OPC_CheckPredicate, 12, // Predicate_zextload
/*  2452*/        OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2454*/        OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2456*/        OPC_EmitMergeInputChains1_0,
/*  2457*/        OPC_EmitConvertToTarget, 2,
/*  2459*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2467*/      /*Scope*/ 17, /*->2485*/
/*  2468*/        OPC_CheckPredicate, 11, // Predicate_sextload
/*  2470*/        OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2472*/        OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2474*/        OPC_EmitMergeInputChains1_0,
/*  2475*/        OPC_EmitConvertToTarget, 2,
/*  2477*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2485*/      /*Scope*/ 17, /*->2503*/
/*  2486*/        OPC_CheckPredicate, 12, // Predicate_zextload
/*  2488*/        OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2490*/        OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2492*/        OPC_EmitMergeInputChains1_0,
/*  2493*/        OPC_EmitConvertToTarget, 2,
/*  2495*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2503*/      /*Scope*/ 15, /*->2519*/
/*  2504*/        OPC_CheckPredicate, 13, // Predicate_load
/*  2506*/        OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2508*/        OPC_EmitMergeInputChains1_0,
/*  2509*/        OPC_EmitConvertToTarget, 2,
/*  2511*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__), 0|OPFL_Chain|OPFL_MemRefs,
                      MVT::i32, 2/*#Ops*/, 1, 3, 
                  // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 13
                  // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2519*/      /*Scope*/ 60, /*->2580*/
/*  2520*/        OPC_CheckPredicate, 14, // Predicate_extload
/*  2522*/        OPC_Scope, 27, /*->2551*/ // 2 children in Scope
/*  2524*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2526*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2528*/          OPC_EmitMergeInputChains1_0,
/*  2529*/          OPC_EmitConvertToTarget, 2,
/*  2531*/          OPC_Scope, 8, /*->2541*/ // 2 children in Scope
/*  2533*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2541*/          /*Scope*/ 8, /*->2550*/
/*  2542*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2550*/          0, /*End of Scope*/
/*  2551*/        /*Scope*/ 27, /*->2579*/
/*  2552*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2554*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2556*/          OPC_EmitMergeInputChains1_0,
/*  2557*/          OPC_EmitConvertToTarget, 2,
/*  2559*/          OPC_Scope, 8, /*->2569*/ // 2 children in Scope
/*  2561*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2569*/          /*Scope*/ 8, /*->2578*/
/*  2570*/            OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                          MVT::i32, 2/*#Ops*/, 1, 3, 
                      // Src: (ld:{ *:[i32] } (add:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2))<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 13
                      // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  2578*/          0, /*End of Scope*/
/*  2579*/        0, /*End of Scope*/
/*  2580*/      0, /*End of Scope*/
/*  2581*/    /*Scope*/ 48|128,2/*304*/, /*->2887*/
/*  2583*/      OPC_RecordChild1, // #1 = $op1
/*  2584*/      OPC_MoveChild1,
/*  2585*/      OPC_Scope, 24|128,1/*152*/, /*->2740*/ // 2 children in Scope
/*  2588*/        OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  2591*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  2593*/        OPC_MoveParent,
/*  2594*/        OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  2596*/        OPC_CheckType, MVT::i32,
/*  2598*/        OPC_Scope, 16, /*->2616*/ // 6 children in Scope
/*  2600*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  2602*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2604*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2606*/          OPC_EmitMergeInputChains1_0,
/*  2607*/          OPC_EmitConvertToTarget, 1,
/*  2609*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2616*/        /*Scope*/ 16, /*->2633*/
/*  2617*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  2619*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2621*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2623*/          OPC_EmitMergeInputChains1_0,
/*  2624*/          OPC_EmitConvertToTarget, 1,
/*  2626*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2633*/        /*Scope*/ 16, /*->2650*/
/*  2634*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  2636*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2638*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2640*/          OPC_EmitMergeInputChains1_0,
/*  2641*/          OPC_EmitConvertToTarget, 1,
/*  2643*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2650*/        /*Scope*/ 16, /*->2667*/
/*  2651*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  2653*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2655*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2657*/          OPC_EmitMergeInputChains1_0,
/*  2658*/          OPC_EmitConvertToTarget, 1,
/*  2660*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2667*/        /*Scope*/ 14, /*->2682*/
/*  2668*/          OPC_CheckPredicate, 13, // Predicate_load
/*  2670*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2672*/          OPC_EmitMergeInputChains1_0,
/*  2673*/          OPC_EmitConvertToTarget, 1,
/*  2675*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 2, 
                    // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 9
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__reg0__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2682*/        /*Scope*/ 56, /*->2739*/
/*  2683*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2685*/          OPC_Scope, 25, /*->2712*/ // 2 children in Scope
/*  2687*/            OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2689*/            OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2691*/            OPC_EmitMergeInputChains1_0,
/*  2692*/            OPC_EmitConvertToTarget, 1,
/*  2694*/            OPC_Scope, 7, /*->2703*/ // 2 children in Scope
/*  2696*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadb__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2703*/            /*Scope*/ 7, /*->2711*/
/*  2704*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadbu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2711*/            0, /*End of Scope*/
/*  2712*/          /*Scope*/ 25, /*->2738*/
/*  2713*/            OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2715*/            OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2717*/            OPC_EmitMergeInputChains1_0,
/*  2718*/            OPC_EmitConvertToTarget, 1,
/*  2720*/            OPC_Scope, 7, /*->2729*/ // 2 children in Scope
/*  2722*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadh__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2729*/            /*Scope*/ 7, /*->2737*/
/*  2730*/              OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                            MVT::i32, 1/*#Ops*/, 2, 
                        // Src: (ld:{ *:[i32] } (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 9
                        // Dst: (i_load__opc_loadhu__regs__simm12_simple__reg0__AEXT_CLONE_:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  2737*/            0, /*End of Scope*/
/*  2738*/          0, /*End of Scope*/
/*  2739*/        0, /*End of Scope*/
/*  2740*/      /*Scope*/ 16|128,1/*144*/, /*->2886*/
/*  2742*/        OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  2744*/        OPC_CheckType, MVT::i32,
/*  2746*/        OPC_MoveParent,
/*  2747*/        OPC_CheckPredicate, 10, // Predicate_unindexedload
/*  2749*/        OPC_CheckType, MVT::i32,
/*  2751*/        OPC_Scope, 14, /*->2767*/ // 9 children in Scope
/*  2753*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  2755*/          OPC_CheckPredicate, 6, // Predicate_sextloadi8
/*  2757*/          OPC_CheckPredicate, 4, // Predicate_sextloadi8_a1_s0
/*  2759*/          OPC_EmitMergeInputChains1_0,
/*  2760*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi8>><<P:Predicate_sextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2767*/        /*Scope*/ 14, /*->2782*/
/*  2768*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2770*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2772*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2774*/          OPC_EmitMergeInputChains1_0,
/*  2775*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadb__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2782*/        /*Scope*/ 14, /*->2797*/
/*  2783*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  2785*/          OPC_CheckPredicate, 6, // Predicate_zextloadi8
/*  2787*/          OPC_CheckPredicate, 4, // Predicate_zextloadi8_a1_s0
/*  2789*/          OPC_EmitMergeInputChains1_0,
/*  2790*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi8>><<P:Predicate_zextloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2797*/        /*Scope*/ 14, /*->2812*/
/*  2798*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2800*/          OPC_CheckPredicate, 6, // Predicate_extloadi8
/*  2802*/          OPC_CheckPredicate, 4, // Predicate_extloadi8_a1_s0
/*  2804*/          OPC_EmitMergeInputChains1_0,
/*  2805*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi8>><<P:Predicate_extloadi8_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadbu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2812*/        /*Scope*/ 14, /*->2827*/
/*  2813*/          OPC_CheckPredicate, 11, // Predicate_sextload
/*  2815*/          OPC_CheckPredicate, 7, // Predicate_sextloadi16
/*  2817*/          OPC_CheckPredicate, 4, // Predicate_sextloadi16_a1_s0
/*  2819*/          OPC_EmitMergeInputChains1_0,
/*  2820*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_sextload>><<P:Predicate_sextloadi16>><<P:Predicate_sextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2827*/        /*Scope*/ 14, /*->2842*/
/*  2828*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2830*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2832*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2834*/          OPC_EmitMergeInputChains1_0,
/*  2835*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadh__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2842*/        /*Scope*/ 14, /*->2857*/
/*  2843*/          OPC_CheckPredicate, 12, // Predicate_zextload
/*  2845*/          OPC_CheckPredicate, 7, // Predicate_zextloadi16
/*  2847*/          OPC_CheckPredicate, 4, // Predicate_zextloadi16_a1_s0
/*  2849*/          OPC_EmitMergeInputChains1_0,
/*  2850*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_zextload>><<P:Predicate_zextloadi16>><<P:Predicate_zextloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2857*/        /*Scope*/ 14, /*->2872*/
/*  2858*/          OPC_CheckPredicate, 14, // Predicate_extload
/*  2860*/          OPC_CheckPredicate, 7, // Predicate_extloadi16
/*  2862*/          OPC_CheckPredicate, 4, // Predicate_extloadi16_a1_s0
/*  2864*/          OPC_EmitMergeInputChains1_0,
/*  2865*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_extload>><<P:Predicate_extloadi16>><<P:Predicate_extloadi16_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadhu__regs__simm12_simple__regs__immspec_1_AEXT_CLONE_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2872*/        /*Scope*/ 12, /*->2885*/
/*  2873*/          OPC_CheckPredicate, 13, // Predicate_load
/*  2875*/          OPC_CheckPredicate, 4, // Predicate_load_a1_s0
/*  2877*/          OPC_EmitMergeInputChains1_0,
/*  2878*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_), 0|OPFL_Chain|OPFL_MemRefs,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (ld:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1)<<P:Predicate_unindexedload>><<P:Predicate_load>><<P:Predicate_load_a1_s0>> - Complexity = 6
                    // Dst: (i_load__opc_loadw__regs__simm12_simple__regs__immspec_1_:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  2885*/        0, /*End of Scope*/
/*  2886*/      0, /*End of Scope*/
/*  2887*/    0, /*End of Scope*/
/*  2888*/  /*SwitchOpcode*/ 9|128,2/*265*/, TARGET_VAL(CodasipISD::TailCall),// ->3157
/*  2892*/    OPC_RecordNode, // #0 = 'TailCall' chained node
/*  2893*/    OPC_CaptureGlueInput,
/*  2894*/    OPC_Scope, 116|128,1/*244*/, /*->3141*/ // 2 children in Scope
/*  2897*/      OPC_MoveChild1,
/*  2898*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  2901*/      OPC_RecordChild0, // #1 = $op0
/*  2902*/      OPC_MoveChild0,
/*  2903*/      OPC_SwitchOpcode /*4 cases */, 56, TARGET_VAL(ISD::TargetGlobalAddress),// ->2963
/*  2907*/        OPC_MoveParent,
/*  2908*/        OPC_CheckType, MVT::i32,
/*  2910*/        OPC_MoveParent,
/*  2911*/        OPC_EmitMergeInputChains1_0,
/*  2912*/        OPC_Scope, 6, /*->2920*/ // 7 children in Scope
/*  2914*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2920*/        /*Scope*/ 6, /*->2927*/
/*  2921*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2927*/        /*Scope*/ 6, /*->2934*/
/*  2928*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2934*/        /*Scope*/ 6, /*->2941*/
/*  2935*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2941*/        /*Scope*/ 6, /*->2948*/
/*  2942*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2948*/        /*Scope*/ 6, /*->2955*/
/*  2949*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2955*/        /*Scope*/ 6, /*->2962*/
/*  2956*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ (tglobaladdr:{ *:[i32] }):$op0)
/*  2962*/        0, /*End of Scope*/
/*  2963*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetExternalSymbol),// ->3022
/*  2966*/        OPC_MoveParent,
/*  2967*/        OPC_CheckType, MVT::i32,
/*  2969*/        OPC_MoveParent,
/*  2970*/        OPC_EmitMergeInputChains1_0,
/*  2971*/        OPC_Scope, 6, /*->2979*/ // 7 children in Scope
/*  2973*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2979*/        /*Scope*/ 6, /*->2986*/
/*  2980*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2986*/        /*Scope*/ 6, /*->2993*/
/*  2987*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  2993*/        /*Scope*/ 6, /*->3000*/
/*  2994*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  3000*/        /*Scope*/ 6, /*->3007*/
/*  3001*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  3007*/        /*Scope*/ 6, /*->3014*/
/*  3008*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  3014*/        /*Scope*/ 6, /*->3021*/
/*  3015*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_ES (texternalsym:{ *:[i32] }):$op0)
/*  3021*/        0, /*End of Scope*/
/*  3022*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::MCSymbol),// ->3081
/*  3025*/        OPC_MoveParent,
/*  3026*/        OPC_CheckType, MVT::i32,
/*  3028*/        OPC_MoveParent,
/*  3029*/        OPC_EmitMergeInputChains1_0,
/*  3030*/        OPC_Scope, 6, /*->3038*/ // 7 children in Scope
/*  3032*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  3038*/        /*Scope*/ 6, /*->3045*/
/*  3039*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  3045*/        /*Scope*/ 6, /*->3052*/
/*  3046*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  3052*/        /*Scope*/ 6, /*->3059*/
/*  3053*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  3059*/        /*Scope*/ 6, /*->3066*/
/*  3060*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  3066*/        /*Scope*/ 6, /*->3073*/
/*  3067*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  3073*/        /*Scope*/ 6, /*->3080*/
/*  3074*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_MC (mcsym:{ *:[i32] }):$op0)
/*  3080*/        0, /*End of Scope*/
/*  3081*/      /*SwitchOpcode*/ 56, TARGET_VAL(ISD::TargetBlockAddress),// ->3140
/*  3084*/        OPC_MoveParent,
/*  3085*/        OPC_CheckType, MVT::i32,
/*  3087*/        OPC_MoveParent,
/*  3088*/        OPC_EmitMergeInputChains1_0,
/*  3089*/        OPC_Scope, 6, /*->3097*/ // 7 children in Scope
/*  3091*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 11
                    // Dst: (i_jmp_rel_alias__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  3097*/        /*Scope*/ 6, /*->3104*/
/*  3098*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  3104*/        /*Scope*/ 6, /*->3111*/
/*  3105*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  3111*/        /*Scope*/ 6, /*->3118*/
/*  3112*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  3118*/        /*Scope*/ 6, /*->3125*/
/*  3119*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  3125*/        /*Scope*/ 6, /*->3132*/
/*  3126*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                    // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  3132*/        /*Scope*/ 6, /*->3139*/
/*  3133*/          OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                        1/*#Ops*/, 1, 
                    // Src: (TailCall (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 9
                    // Dst: (i_jal__opc_jal__reg0__rel_addr20__TAILCALL_CLONE_BA (tblockaddress:{ *:[i32] }):$op0)
/*  3139*/        0, /*End of Scope*/
/*  3140*/      0, // EndSwitchOpcode
/*  3141*/    /*Scope*/ 14, /*->3156*/
/*  3142*/      OPC_RecordChild1, // #1 = $op0
/*  3143*/      OPC_MoveChild1,
/*  3144*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3146*/      OPC_CheckType, MVT::i32,
/*  3148*/      OPC_MoveParent,
/*  3149*/      OPC_EmitMergeInputChains1_0,
/*  3150*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__TAILCALL_CLONE_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic1,
                    1/*#Ops*/, 1, 
                // Src: (TailCall regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_jump_reg_alias__regs__TAILCALL_CLONE_ regs:{ *:[i32] }:$op0)
/*  3156*/    0, /*End of Scope*/
/*  3157*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::INTRINSIC_W_CHAIN),// ->3182
/*  3160*/    OPC_RecordNode, // #0 = 'intrinsic_w_chain' chained node
/*  3161*/    OPC_CheckChild1Integer, 17|128,1/*145*/, 
/*  3164*/    OPC_RecordChild2, // #1 = $op1
/*  3165*/    OPC_RecordChild3, // #2 = $op2
/*  3166*/    OPC_MoveChild3,
/*  3167*/    OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3170*/    OPC_MoveParent,
/*  3171*/    OPC_EmitMergeInputChains1_0,
/*  3172*/    OPC_EmitConvertToTarget, 2,
/*  3174*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::hwloop_loop_decrement_reg), 0|OPFL_Chain,
                  MVT::i32, 2/*#Ops*/, 1, 3, 
              // Src: (intrinsic_w_chain:{ *:[i32] } 145:{ *:[iPTR] }, regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2) - Complexity = 11
              // Dst: (hwloop_loop_decrement_reg:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3182*/  /*SwitchOpcode*/ 89, TARGET_VAL(CodasipISD::Call),// ->3274
/*  3185*/    OPC_RecordNode, // #0 = 'Call' chained node
/*  3186*/    OPC_CaptureGlueInput,
/*  3187*/    OPC_Scope, 68, /*->3257*/ // 2 children in Scope
/*  3189*/      OPC_MoveChild1,
/*  3190*/      OPC_CheckOpcode, TARGET_VAL(CodasipISD::GAWrap),
/*  3193*/      OPC_RecordChild0, // #1 = $op0
/*  3194*/      OPC_MoveChild0,
/*  3195*/      OPC_SwitchOpcode /*4 cases */, 12, TARGET_VAL(ISD::TargetGlobalAddress),// ->3211
/*  3199*/        OPC_MoveParent,
/*  3200*/        OPC_CheckType, MVT::i32,
/*  3202*/        OPC_MoveParent,
/*  3203*/        OPC_EmitMergeInputChains1_0,
/*  3204*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op0)
/*  3211*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetExternalSymbol),// ->3226
/*  3214*/        OPC_MoveParent,
/*  3215*/        OPC_CheckType, MVT::i32,
/*  3217*/        OPC_MoveParent,
/*  3218*/        OPC_EmitMergeInputChains1_0,
/*  3219*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__ES), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op0)
/*  3226*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::MCSymbol),// ->3241
/*  3229*/        OPC_MoveParent,
/*  3230*/        OPC_CheckType, MVT::i32,
/*  3232*/        OPC_MoveParent,
/*  3233*/        OPC_EmitMergeInputChains1_0,
/*  3234*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__MC), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op0)
/*  3241*/      /*SwitchOpcode*/ 12, TARGET_VAL(ISD::TargetBlockAddress),// ->3256
/*  3244*/        OPC_MoveParent,
/*  3245*/        OPC_CheckType, MVT::i32,
/*  3247*/        OPC_MoveParent,
/*  3248*/        OPC_EmitMergeInputChains1_0,
/*  3249*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_rel_alias__rel_addr20__BA), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (Call (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)) - Complexity = 10
                  // Dst: (i_call_rel_alias__rel_addr20__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op0)
/*  3256*/      0, // EndSwitchOpcode
/*  3257*/    /*Scope*/ 15, /*->3273*/
/*  3258*/      OPC_RecordChild1, // #1 = $op0
/*  3259*/      OPC_MoveChild1,
/*  3260*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3262*/      OPC_CheckType, MVT::i32,
/*  3264*/      OPC_MoveParent,
/*  3265*/      OPC_EmitMergeInputChains1_0,
/*  3266*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_call_reg_alias__regs__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput|OPFL_Variadic1,
                    MVT::i32, 1/*#Ops*/, 1, 
                // Src: (Call regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
                // Dst: (i_call_reg_alias__regs__:{ *:[i32] } regs:{ *:[i32] }:$op0)
/*  3273*/    0, /*End of Scope*/
/*  3274*/  /*SwitchOpcode*/ 47, TARGET_VAL(ISD::SUB),// ->3324
/*  3277*/    OPC_Scope, 25, /*->3304*/ // 2 children in Scope
/*  3279*/      OPC_CheckChild0Integer, 0, 
/*  3281*/      OPC_RecordChild1, // #0 = $op1
/*  3282*/      OPC_MoveChild1,
/*  3283*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3285*/      OPC_MoveParent,
/*  3286*/      OPC_Scope, 7, /*->3295*/ // 2 children in Scope
/*  3288*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  3295*/      /*Scope*/ 7, /*->3303*/
/*  3296*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__regs__), 0,
                      MVT::i32, 1/*#Ops*/, 0, 
                  // Src: (sub:{ *:[i32] } 0:{ *:[i32] }, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 10
                  // Dst: (i_neg_alias__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  3303*/      0, /*End of Scope*/
/*  3304*/    /*Scope*/ 18, /*->3323*/
/*  3305*/      OPC_RecordChild0, // #0 = $op1
/*  3306*/      OPC_MoveChild0,
/*  3307*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3309*/      OPC_MoveParent,
/*  3310*/      OPC_RecordChild1, // #1 = $op2
/*  3311*/      OPC_MoveChild1,
/*  3312*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3314*/      OPC_MoveParent,
/*  3315*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (sub:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_sub__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3323*/    0, /*End of Scope*/
/*  3324*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::AND),// ->3365
/*  3327*/    OPC_RecordChild0, // #0 = $op1
/*  3328*/    OPC_MoveChild0,
/*  3329*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3331*/    OPC_MoveParent,
/*  3332*/    OPC_RecordChild1, // #1 = $op2
/*  3333*/    OPC_MoveChild1,
/*  3334*/    OPC_Scope, 16, /*->3352*/ // 2 children in Scope
/*  3336*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3339*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3341*/      OPC_MoveParent,
/*  3342*/      OPC_EmitConvertToTarget, 1,
/*  3344*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3352*/    /*Scope*/ 11, /*->3364*/
/*  3353*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3355*/      OPC_MoveParent,
/*  3356*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (and:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_and__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3364*/    0, /*End of Scope*/
/*  3365*/  /*SwitchOpcode*/ 50, TARGET_VAL(ISD::OR),// ->3418
/*  3368*/    OPC_RecordChild0, // #0 = $op1
/*  3369*/    OPC_MoveChild0,
/*  3370*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3372*/    OPC_MoveParent,
/*  3373*/    OPC_RecordChild1, // #1 = $op2
/*  3374*/    OPC_MoveChild1,
/*  3375*/    OPC_Scope, 28, /*->3405*/ // 2 children in Scope
/*  3377*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3380*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3382*/      OPC_MoveParent,
/*  3383*/      OPC_EmitConvertToTarget, 1,
/*  3385*/      OPC_Scope, 8, /*->3395*/ // 2 children in Scope
/*  3387*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                  // Dst: (i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3395*/      /*Scope*/ 8, /*->3404*/
/*  3396*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__regs__simm12_simple__), 0,
                      MVT::i32, 2/*#Ops*/, 0, 2, 
                  // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 8
                  // Dst: (i_ori_emulation_alias__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3404*/      0, /*End of Scope*/
/*  3405*/    /*Scope*/ 11, /*->3417*/
/*  3406*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3408*/      OPC_MoveParent,
/*  3409*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (or:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_or__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3417*/    0, /*End of Scope*/
/*  3418*/  /*SwitchOpcode*/ 38, TARGET_VAL(ISD::XOR),// ->3459
/*  3421*/    OPC_RecordChild0, // #0 = $op1
/*  3422*/    OPC_MoveChild0,
/*  3423*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3425*/    OPC_MoveParent,
/*  3426*/    OPC_RecordChild1, // #1 = $op2
/*  3427*/    OPC_MoveChild1,
/*  3428*/    OPC_Scope, 16, /*->3446*/ // 2 children in Scope
/*  3430*/      OPC_CheckOpcode, TARGET_VAL(ISD::Constant),
/*  3433*/      OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3435*/      OPC_MoveParent,
/*  3436*/      OPC_EmitConvertToTarget, 1,
/*  3438*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 2, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op2) - Complexity = 9
                // Dst: (i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__:{ *:[i32] } regs:{ *:[i32] }:$op1, (imm:{ *:[i32] }):$op2)
/*  3446*/    /*Scope*/ 11, /*->3458*/
/*  3447*/      OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3449*/      OPC_MoveParent,
/*  3450*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__regs__regs__), 0,
                    MVT::i32, 2/*#Ops*/, 0, 1, 
                // Src: (xor:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 6
                // Dst: (i_comp_3reg__opc_xor__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3458*/    0, /*End of Scope*/
/*  3459*/  /*SwitchOpcode*/ 21, TARGET_VAL(ISD::CALLSEQ_START),// ->3483
/*  3462*/    OPC_RecordNode, // #0 = 'callseq_start' chained node
/*  3463*/    OPC_RecordChild1, // #1 = $InSize
/*  3464*/    OPC_MoveChild1,
/*  3465*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3468*/    OPC_MoveParent,
/*  3469*/    OPC_RecordChild2, // #2 = $OutSize
/*  3470*/    OPC_MoveChild2,
/*  3471*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3474*/    OPC_MoveParent,
/*  3475*/    OPC_EmitMergeInputChains1_0,
/*  3476*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLSTART), 0|OPFL_Chain|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_start (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLSTART (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3483*/  /*SwitchOpcode*/ 22, TARGET_VAL(ISD::CALLSEQ_END),// ->3508
/*  3486*/    OPC_RecordNode, // #0 = 'callseq_end' chained node
/*  3487*/    OPC_CaptureGlueInput,
/*  3488*/    OPC_RecordChild1, // #1 = $InSize
/*  3489*/    OPC_MoveChild1,
/*  3490*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3493*/    OPC_MoveParent,
/*  3494*/    OPC_RecordChild2, // #2 = $OutSize
/*  3495*/    OPC_MoveChild2,
/*  3496*/    OPC_CheckOpcode, TARGET_VAL(ISD::TargetConstant),
/*  3499*/    OPC_MoveParent,
/*  3500*/    OPC_EmitMergeInputChains1_0,
/*  3501*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::CALLEND), 0|OPFL_Chain|OPFL_GlueInput|OPFL_GlueOutput,
                  2/*#Ops*/, 1, 2, 
              // Src: (callseq_end (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize) - Complexity = 9
              // Dst: (CALLEND (timm:{ *:[i32] }):$InSize, (timm:{ *:[i32] }):$OutSize)
/*  3508*/  /*SwitchOpcode*/ 12, TARGET_VAL(ISD::INTRINSIC_VOID),// ->3523
/*  3511*/    OPC_RecordNode, // #0 = 'intrinsic_void' chained node
/*  3512*/    OPC_CheckChild1Integer, 101|128,1/*229*/, 
/*  3515*/    OPC_RecordChild2, // #1 = $op0
/*  3516*/    OPC_EmitMergeInputChains1_0,
/*  3517*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::hwloop_set_loop_iterations), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (intrinsic_void 229:{ *:[iPTR] }, regs:{ *:[i32] }:$op0) - Complexity = 8
              // Dst: (hwloop_set_loop_iterations regs:{ *:[i32] }:$op0)
/*  3523*/  /*SwitchOpcode*/ 109|128,1/*237*/, TARGET_VAL(ISD::Constant),// ->3764
/*  3527*/    OPC_Scope, 109, /*->3638*/ // 5 children in Scope
/*  3529*/      OPC_CheckInteger, 0, 
/*  3531*/      OPC_Scope, 6, /*->3539*/ // 15 children in Scope
/*  3533*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_mv_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_mv_alias__regs__reg0__:{ *:[i32] })
/*  3539*/      /*Scope*/ 6, /*->3546*/
/*  3540*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_snez_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 7
                  // Dst: (i_snez_alias__regs__reg0__:{ *:[i32] })
/*  3546*/      /*Scope*/ 6, /*->3553*/
/*  3547*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_add__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_add__regs__reg0__reg0__:{ *:[i32] })
/*  3553*/      /*Scope*/ 6, /*->3560*/
/*  3554*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_and__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_and__regs__reg0__reg0__:{ *:[i32] })
/*  3560*/      /*Scope*/ 6, /*->3567*/
/*  3561*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_or__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_or__regs__reg0__reg0__:{ *:[i32] })
/*  3567*/      /*Scope*/ 6, /*->3574*/
/*  3568*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sll__regs__reg0__reg0__:{ *:[i32] })
/*  3574*/      /*Scope*/ 6, /*->3581*/
/*  3575*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_slt__regs__reg0__reg0__:{ *:[i32] })
/*  3581*/      /*Scope*/ 6, /*->3588*/
/*  3582*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sltu__regs__reg0__reg0__:{ *:[i32] })
/*  3588*/      /*Scope*/ 6, /*->3595*/
/*  3589*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sra__regs__reg0__reg0__:{ *:[i32] })
/*  3595*/      /*Scope*/ 6, /*->3602*/
/*  3596*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_srl__regs__reg0__reg0__:{ *:[i32] })
/*  3602*/      /*Scope*/ 6, /*->3609*/
/*  3603*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_sub__regs__reg0__reg0__:{ *:[i32] })
/*  3609*/      /*Scope*/ 6, /*->3616*/
/*  3610*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_3reg__opc_xor__regs__reg0__reg0__:{ *:[i32] })
/*  3616*/      /*Scope*/ 6, /*->3623*/
/*  3617*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_neg_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_neg_alias__regs__reg0__:{ *:[i32] })
/*  3623*/      /*Scope*/ 6, /*->3630*/
/*  3624*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3630*/      /*Scope*/ 6, /*->3637*/
/*  3631*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__0__:{ *:[i32] })
/*  3637*/      0, /*End of Scope*/
/*  3638*/    /*Scope*/ 25, /*->3664*/
/*  3639*/      OPC_CheckInteger, 1, 
/*  3641*/      OPC_Scope, 6, /*->3649*/ // 3 children in Scope
/*  3643*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_seqz_alias__regs__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 7
                  // Dst: (i_seqz_alias__regs__reg0__:{ *:[i32] })
/*  3649*/      /*Scope*/ 6, /*->3656*/
/*  3650*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3656*/      /*Scope*/ 6, /*->3663*/
/*  3657*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 1:{ *:[i32] } - Complexity = 6
                  // Dst: (i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__immSpecClone__imm_1__1__:{ *:[i32] })
/*  3663*/      0, /*End of Scope*/
/*  3664*/    /*Scope*/ 46, /*->3711*/
/*  3665*/      OPC_RecordNode, // #0 = $op1
/*  3666*/      OPC_Scope, 30, /*->3698*/ // 2 children in Scope
/*  3668*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3670*/        OPC_EmitConvertToTarget, 0,
/*  3672*/        OPC_Scope, 7, /*->3681*/ // 3 children in Scope
/*  3674*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3681*/        /*Scope*/ 7, /*->3689*/
/*  3682*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3689*/        /*Scope*/ 7, /*->3697*/
/*  3690*/          OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__), 0,
                        MVT::i32, 1/*#Ops*/, 1, 
                    // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 5
                    // Dst: (i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3697*/        0, /*End of Scope*/
/*  3698*/      /*Scope*/ 11, /*->3710*/
/*  3699*/        OPC_CheckPredicate, 15, // Predicate_Trunc12_i32imm
/*  3701*/        OPC_EmitConvertToTarget, 0,
/*  3703*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_lui__opc_lui__regs__imm20_s12__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_Trunc12_i32imm>>:$op1 - Complexity = 5
                  // Dst: (i_lui__opc_lui__regs__imm20_s12__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3710*/      0, /*End of Scope*/
/*  3711*/    /*Scope*/ 25, /*->3737*/
/*  3712*/      OPC_CheckInteger, 0, 
/*  3714*/      OPC_Scope, 6, /*->3722*/ // 3 children in Scope
/*  3716*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__:{ *:[i32] })
/*  3722*/      /*Scope*/ 6, /*->3729*/
/*  3723*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__:{ *:[i32] })
/*  3729*/      /*Scope*/ 6, /*->3736*/
/*  3730*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__), 0,
                      MVT::i32, 0/*#Ops*/, 
                  // Src: 0:{ *:[i32] } - Complexity = 5
                  // Dst: (i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__:{ *:[i32] })
/*  3736*/      0, /*End of Scope*/
/*  3737*/    /*Scope*/ 25, /*->3763*/
/*  3738*/      OPC_RecordNode, // #0 = $op1
/*  3739*/      OPC_Scope, 11, /*->3752*/ // 2 children in Scope
/*  3741*/        OPC_CheckPredicate, 1, // Predicate_sext12To32imm
/*  3743*/        OPC_EmitConvertToTarget, 0,
/*  3745*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ori_emulation_alias__regs__reg0__simm12_simple__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] })<<P:Predicate_sext12To32imm>>:$op1 - Complexity = 4
                  // Dst: (i_ori_emulation_alias__regs__reg0__simm12_simple__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3752*/      /*Scope*/ 9, /*->3762*/
/*  3753*/        OPC_EmitConvertToTarget, 0,
/*  3755*/        OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__), 0,
                      MVT::i32, 1/*#Ops*/, 1, 
                  // Src: (imm:{ *:[i32] }):$op1 - Complexity = 3
                  // Dst: (e_movi32__:{ *:[i32] } (imm:{ *:[i32] }):$op1)
/*  3762*/      0, /*End of Scope*/
/*  3763*/    0, /*End of Scope*/
/*  3764*/  /*SwitchOpcode*/ 15, TARGET_VAL(ISD::BRIND),// ->3782
/*  3767*/    OPC_RecordNode, // #0 = 'brind' chained node
/*  3768*/    OPC_RecordChild1, // #1 = $op0
/*  3769*/    OPC_MoveChild1,
/*  3770*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3772*/    OPC_CheckType, MVT::i32,
/*  3774*/    OPC_MoveParent,
/*  3775*/    OPC_EmitMergeInputChains1_0,
/*  3776*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs__), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (brind regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 6
              // Dst: (i_jump_reg_alias__regs__ regs:{ *:[i32] }:$op0)
/*  3782*/  /*SwitchOpcode*/ 82, TARGET_VAL(CodasipISD::GAWrap),// ->3867
/*  3785*/    OPC_RecordChild0, // #0 = $op1
/*  3786*/    OPC_MoveChild0,
/*  3787*/    OPC_SwitchOpcode /*6 cases */, 10, TARGET_VAL(ISD::TargetGlobalAddress),// ->3801
/*  3791*/      OPC_MoveParent,
/*  3792*/      OPC_CheckType, MVT::i32,
/*  3794*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__GA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__GA:{ *:[i32] } (tglobaladdr:{ *:[i32] }):$op1)
/*  3801*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetExternalSymbol),// ->3814
/*  3804*/      OPC_MoveParent,
/*  3805*/      OPC_CheckType, MVT::i32,
/*  3807*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__ES), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__ES:{ *:[i32] } (texternalsym:{ *:[i32] }):$op1)
/*  3814*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::MCSymbol),// ->3827
/*  3817*/      OPC_MoveParent,
/*  3818*/      OPC_CheckType, MVT::i32,
/*  3820*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__MC), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (mcsym:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__MC:{ *:[i32] } (mcsym:{ *:[i32] }):$op1)
/*  3827*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetBlockAddress),// ->3840
/*  3830*/      OPC_MoveParent,
/*  3831*/      OPC_CheckType, MVT::i32,
/*  3833*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__BA), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__BA:{ *:[i32] } (tblockaddress:{ *:[i32] }):$op1)
/*  3840*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetJumpTable),// ->3853
/*  3843*/      OPC_MoveParent,
/*  3844*/      OPC_CheckType, MVT::i32,
/*  3846*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__JT), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__JT:{ *:[i32] } (tjumptable:{ *:[i32] }):$op1)
/*  3853*/    /*SwitchOpcode*/ 10, TARGET_VAL(ISD::TargetConstantPool),// ->3866
/*  3856*/      OPC_MoveParent,
/*  3857*/      OPC_CheckType, MVT::i32,
/*  3859*/      OPC_MorphNodeTo1, TARGET_VAL(Codasip::e_movi32__CP), 0,
                    MVT::i32, 1/*#Ops*/, 0, 
                // Src: (GAWrap:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1) - Complexity = 6
                // Dst: (e_movi32__CP:{ *:[i32] } (tconstpool:{ *:[i32] }):$op1)
/*  3866*/    0, // EndSwitchOpcode
/*  3867*/  /*SwitchOpcode*/ 59, TARGET_VAL(ISD::BR),// ->3929
/*  3870*/    OPC_RecordNode, // #0 = 'br' chained node
/*  3871*/    OPC_RecordChild1, // #1 = $op0
/*  3872*/    OPC_MoveChild1,
/*  3873*/    OPC_CheckOpcode, TARGET_VAL(ISD::BasicBlock),
/*  3876*/    OPC_MoveParent,
/*  3877*/    OPC_EmitMergeInputChains1_0,
/*  3878*/    OPC_Scope, 6, /*->3886*/ // 7 children in Scope
/*  3880*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jmp_rel_alias__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 5
                // Dst: (i_jmp_rel_alias__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3886*/    /*Scope*/ 6, /*->3893*/
/*  3887*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal_abs__opc_jal__reg0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_jal_abs__opc_jal__reg0__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3893*/    /*Scope*/ 6, /*->3900*/
/*  3894*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_beq__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3900*/    /*Scope*/ 6, /*->3907*/
/*  3901*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_bge__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3907*/    /*Scope*/ 6, /*->3914*/
/*  3908*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__ (bb:{ *:[Other] }):$op0)
/*  3914*/    /*Scope*/ 6, /*->3921*/
/*  3915*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 4
                // Dst: (i_jalr__opc_jalr__reg0__reg0__simm12_simple__ (bb:{ *:[Other] }):$op0)
/*  3921*/    /*Scope*/ 6, /*->3928*/
/*  3922*/      OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jal__opc_jal__reg0__rel_addr20__), 0|OPFL_Chain,
                    1/*#Ops*/, 1, 
                // Src: (br (bb:{ *:[Other] }):$op0) - Complexity = 3
                // Dst: (i_jal__opc_jal__reg0__rel_addr20__ (bb:{ *:[Other] }):$op0)
/*  3928*/    0, /*End of Scope*/
/*  3929*/  /*SwitchOpcode*/ 18, TARGET_VAL(ISD::MUL),// ->3950
/*  3932*/    OPC_RecordChild0, // #0 = $op1
/*  3933*/    OPC_MoveChild0,
/*  3934*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3936*/    OPC_MoveParent,
/*  3937*/    OPC_RecordChild1, // #1 = $op2
/*  3938*/    OPC_MoveChild1,
/*  3939*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3941*/    OPC_MoveParent,
/*  3942*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__), 0,
                  MVT::i32, 2/*#Ops*/, 0, 1, 
              // Src: (mul:{ *:[i32] } regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op2) - Complexity = 5
              // Dst: (i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__:{ *:[i32] } regs:{ *:[i32] }:$op1, regs:{ *:[i32] }:$op2)
/*  3950*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::Ret),// ->3961
/*  3953*/    OPC_RecordNode, // #0 = 'Return' chained node
/*  3954*/    OPC_CaptureGlueInput,
/*  3955*/    OPC_EmitMergeInputChains1_0,
/*  3956*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_jump_reg_alias__regs___RET_EMUL_), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (Return) - Complexity = 5
              // Dst: (i_jump_reg_alias__regs___RET_EMUL_)
/*  3961*/  /*SwitchOpcode*/ 24, TARGET_VAL(CodasipISD::MOI_GROUP_3),// ->3988
/*  3964*/    OPC_RecordMemRef,
/*  3965*/    OPC_RecordNode, // #0 = 'i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_MOI_node' chained node
/*  3966*/    OPC_RecordChild1, // #1 = $op0
/*  3967*/    OPC_MoveChild1,
/*  3968*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3970*/    OPC_CheckType, MVT::i32,
/*  3972*/    OPC_MoveParent,
/*  3973*/    OPC_RecordChild2, // #2 = $op1
/*  3974*/    OPC_MoveChild2,
/*  3975*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3977*/    OPC_CheckType, MVT::i32,
/*  3979*/    OPC_MoveParent,
/*  3980*/    OPC_EmitMergeInputChains1_0,
/*  3981*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_), 0|OPFL_Chain|OPFL_MemRefs,
                  2/*#Ops*/, 1, 2, 
              // Src: (i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_MOI_node regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0, regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op1) - Complexity = 5
              // Dst: (i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__MOI_CLONE_ regs:{ *:[i32] }:$op0, regs:{ *:[i32] }:$op1)
/*  3988*/  /*SwitchOpcode*/ 15, TARGET_VAL(CodasipISD::MOI_GROUP_1),// ->4006
/*  3991*/    OPC_RecordNode, // #0 = 'i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_MOI_node' chained node
/*  3992*/    OPC_RecordChild1, // #1 = $op0
/*  3993*/    OPC_MoveChild1,
/*  3994*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  3996*/    OPC_CheckType, MVT::i32,
/*  3998*/    OPC_MoveParent,
/*  3999*/    OPC_EmitMergeInputChains1_0,
/*  4000*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_MOI_node regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 4
              // Dst: (i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__MOI_CLONE_ regs:{ *:[i32] }:$op0)
/*  4006*/  /*SwitchOpcode*/ 15, TARGET_VAL(CodasipISD::MOI_GROUP_2),// ->4024
/*  4009*/    OPC_RecordNode, // #0 = 'i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_MOI_node' chained node
/*  4010*/    OPC_RecordChild1, // #1 = $op0
/*  4011*/    OPC_MoveChild1,
/*  4012*/    OPC_CheckPredicate, 0, // Predicate_CheckFI_i32_regs
/*  4014*/    OPC_CheckType, MVT::i32,
/*  4016*/    OPC_MoveParent,
/*  4017*/    OPC_EmitMergeInputChains1_0,
/*  4018*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_MOI_node regs:{ *:[i32] }<<P:Predicate_CheckFI_i32_regs>>:$op0) - Complexity = 4
              // Dst: (i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__MOI_CLONE_ regs:{ *:[i32] }:$op0)
/*  4024*/  /*SwitchOpcode*/ 8, TARGET_VAL(CodasipISD::MRET),// ->4035
/*  4027*/    OPC_RecordNode, // #0 = 'MRet' chained node
/*  4028*/    OPC_CaptureGlueInput,
/*  4029*/    OPC_EmitMergeInputChains1_0,
/*  4030*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_xret__opc_mret__), 0|OPFL_Chain|OPFL_GlueInput|OPFL_Variadic0,
                  0/*#Ops*/, 
              // Src: (MRet) - Complexity = 3
              // Dst: (i_xret__opc_mret__)
/*  4035*/  /*SwitchOpcode*/ 7, TARGET_VAL(CodasipISD::MOI_GROUP_0),// ->4045
/*  4038*/    OPC_RecordNode, // #0 = 'i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_MOI_node' chained node
/*  4039*/    OPC_EmitMergeInputChains1_0,
/*  4040*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_), 0|OPFL_Chain,
                  0/*#Ops*/, 
              // Src: (i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_MOI_node) - Complexity = 3
              // Dst: (i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__MOI_CLONE_)
/*  4045*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_LONGJMP),// ->4059
/*  4048*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_longjmp' chained node
/*  4049*/    OPC_RecordChild1, // #1 = $op0
/*  4050*/    OPC_CheckChild1Type, MVT::i32,
/*  4052*/    OPC_EmitMergeInputChains1_0,
/*  4053*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SjLj_LongJmp), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_longjmp regs:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SjLj_LongJmp regs:{ *:[i32] }:$op0)
/*  4059*/  /*SwitchOpcode*/ 12, TARGET_VAL(CodasipISD::EH_SJLJ_SETJMP),// ->4074
/*  4062*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setjmp' chained node
/*  4063*/    OPC_RecordChild1, // #1 = $op1
/*  4064*/    OPC_CheckChild1Type, MVT::i32,
/*  4066*/    OPC_EmitMergeInputChains1_0,
/*  4067*/    OPC_MorphNodeTo1, TARGET_VAL(Codasip::EH_SjLj_SetJmp), 0|OPFL_Chain,
                  MVT::i32, 1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setjmp:{ *:[i32] } regs:{ *:[i32] }:$op1) - Complexity = 3
              // Dst: (EH_SjLj_SetJmp:{ *:[i32] } regs:{ *:[i32] }:$op1)
/*  4074*/  /*SwitchOpcode*/ 11, TARGET_VAL(CodasipISD::EH_SJLJ_SETUP_DISPATCH),// ->4088
/*  4077*/    OPC_RecordNode, // #0 = 'CDSPeh_sjlj_setup_dispatch' chained node
/*  4078*/    OPC_RecordChild1, // #1 = $op0
/*  4079*/    OPC_CheckChild1Type, MVT::i32,
/*  4081*/    OPC_EmitMergeInputChains1_0,
/*  4082*/    OPC_MorphNodeTo0, TARGET_VAL(Codasip::EH_SJLJ_SETUP_DISPATCH), 0|OPFL_Chain,
                  1/*#Ops*/, 1, 
              // Src: (CDSPeh_sjlj_setup_dispatch regs:{ *:[i32] }:$op0) - Complexity = 3
              // Dst: (EH_SJLJ_SETUP_DISPATCH regs:{ *:[i32] }:$op0)
/*  4088*/  0, // EndSwitchOpcode
    0
  }; // Total Array size is 4090 bytes

  // Opcode Histogram:
  // #OPC_Scope                                = 72
  // #OPC_RecordNode                           = 22
  // #OPC_RecordChild                          = 132
  // #OPC_RecordMemRef                         = 3
  // #OPC_CaptureGlueInput                     = 5
  // #OPC_MoveChild                            = 150
  // #OPC_MoveParent                           = 213
  // #OPC_CheckSame                            = 0
  // #OPC_CheckChildSame                       = 4
  // #OPC_CheckPatternPredicate                = 0
  // #OPC_CheckPredicate                       = 246
  // #OPC_CheckOpcode                          = 72
  // #OPC_SwitchOpcode                         = 4
  // #OPC_CheckType                            = 47
  // #OPC_SwitchType                           = 0
  // #OPC_CheckChildType                       = 9
  // #OPC_CheckInteger                         = 3
  // #OPC_CheckChildInteger                    = 23
  // #OPC_CheckCondCode                        = 0
  // #OPC_CheckChild2CondCode                  = 58
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
  // #OPC_EmitMergeInputChains                 = 95
  // #OPC_EmitCopyToReg                        = 0
  // #OPC_EmitNode                             = 16
  // #OPC_EmitNodeXForm                        = 0
  // #OPC_CompleteMatch                        = 0
  // #OPC_MorphNodeTo                          = 226

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
