/**
 * Codasip Ltd
 *
 * Copyright 2016 Codasip Ltd
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio
 * product, including this file, may be use, copied, modified, or distributed
 * except in accordance with the terms contained in Codasip license agreement
 * under which you obtained this file.
 *
 * \file    CodasipBaseMoiLowerer.h
 * \date    26. 1. 2016
 * \author  Stanislav Melo
 * \version 5.5.0.
 * \brief   Base class for MoiLowerer
 */

#ifndef INCLUDE_CODASIP_TARGET_CODASIPBASEMOILOWERER_H_
#define INCLUDE_CODASIP_TARGET_CODASIPBASEMOILOWERER_H_

#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/CodeGen/SelectionDAGISel.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/CodeGen/TargetRegisterInfo.h"
#include "llvm/MC/MCInstrDesc.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Target/TargetMachine.h"
#include <list>
#include <map>
#include <vector>

namespace llvm {

/// A map of opcodes and their count in pattern
typedef std::map<unsigned, unsigned> OpcodeCountMap;
/// A list of nodes
typedef std::list<SDNode *> NodeList;
/// A map of opcodes and found possible root nodes in CurDAG
typedef std::map<unsigned, NodeList> RootMap;
/// A list of nodelists
typedef std::list<NodeList> Node2List;
/// A map of opcodes and all possible mappings of corresponding model roots
typedef std::map<unsigned, Node2List> Mappingmap;
/// Group -> "has all operands covered by regs"
typedef std::pair<int, bool> GroupInfo;
typedef std::map<SDValue, SDValue> Map2Val;
typedef std::vector<SDValue> ValueVec;

// Immediate operand info.
// Bad naming, can't be changed easily.
struct ImmInfo {
  int width;
  bool sign;
  int trunc;
};

/// Represents a multi-root pattern.
class BaseDagPattern {
  bool RootIsOp;
  const MCInstrDesc &InsDesc;
  const TargetRegisterInfo *RegInfo;
  /// map of pattern roots opcodes of and their count
  OpcodeCountMap RootOpcodes;
  /// successfuly matched DAG roots that will be replaced
  NodeList FoundRoots;
  /// Opcode of a resulting instruction, if successfully matched.
  unsigned ICode;
  /// Selection dag representing the semantics
  SelectionDAG *Pattern;
  // roots of pattern
  ValueVec PatternRoots;
  // map of pattern nodes matched to real nodes
  Map2Val GlobalPattToReal;
  // map of real nodes matched to pattern nodes
  Map2Val GlobalRealToPatt;
  /// Encountered operands.
  ValueVec FoundOperands;

  bool IsInOutIn(SDNode *Nu);
  // check if nodes of trees, that overlap in pattern, overlap in real dag
  bool CheckRequiredDuplicities(Map2Val &patToReal);
  // check that nodes of trees, that don't overlap in pattern, don't overlap in
  // real dag
  bool CheckBadDuplicities(Map2Val patToReal);
  // update m_globalPattToReal and m_globalRealToPatt maps according to found
  // nodes
  void AddFoundNodes(Map2Val patToReal);
  // add new found operands to m_FoundOperands
  void AddOperands(ValueVec operands);
  // check if operands of found pattern satisfy conditions for operands of moi
  bool CheckOperands();
  /// clears data in pattern so pattern can be reused
  void ReusePattern();
  /// Gets a map of "bijections" from the DAG.
  /// Actually, it's a bijection minus R-totalness.
  /// For each opcode - generates possible combinations of nodes that may be
  /// roots
  Mappingmap GetMappings(SelectionDAG *DAG);
  /// checks if node is matched
  bool IsMatched(SDNode *N);
  /// checks if matched nodes generate convex set
  bool FoundIllegalDataMemDep();
  /// checks if node has any uses outside of matched nodes (it is root)
  bool IsRoot(SDNode *root);
  /// check if node is operand of new matched instruction
  bool IsOperand(SDNode *N);
  /// check if node is used outside of already matched pattern
  /// operands of pattern are considered to be outside of pattern
  bool IsUsedOutside(SDNode *root);
  /// returns vector of return types of new node
  void GetReturnType(std::vector<EVT> &returnVec);
  /// reshuffle return values accordingly
  void SortReturnNodes();
  /// replaces all uses of matched nodes with new node
  void PlaceNewValue(SDValue newVal, SelectionDAG *DAG);
  /// function for replacing matched nodes with one new node
  void ReplaceNN(SelectionDAG *DAG);
  // return true if node is operand of root
  bool IsOperandOfRoot(SDNode *N);
  // change operands of commutative root to see if it matches pattern then
  bool TryCommutativityWrapper(Map2Val &patToReal, ValueVec &operands,
                               SelectionDAG *DAG);
  // check if node can be found multiple times as operand of a pattern
  bool isUsedMultipleTimesInPatt(SDNode *pattOp);
  // check if const operands of pattern satisfy conditions for imm operands of
  // moi
  bool CheckImmProperties(SDValue operand, int opIndex);
  // check if register operands of pattern satisfy conditions for register
  // operands of moi
  bool CheckRegProperties(SDValue operand, int opIndex);
  bool TryComutativity(Map2Val &patToReal, bool isInStruct, SDValue patParent,
                       SDValue patFixOp, ValueVec &operands);
  bool HasType(const TargetRegisterClass *TRC, MVT nodeType) const;
  bool IsOnlyMemOp(SDNode *root);
  /** Match shapes of two subtrees.
   * This does not care about instruction operands. */
  static bool MatchTreeShape(SDValue rootPatt, SDValue rootReal,
                             Map2Val &patToReal, ValueVec &operands);
  /// Attempts to use the candidate on the given range of nodes.
  bool FindMatch(NodeList nodelist, unsigned opcode, SelectionDAG *DAG);
  /// Fill rootOpcodes map for use in TryMatch and GetMappings
  void PrepareMeta();
  /// program continued to next group, push all group element on stack
  void PushAllVariationsOfGroupOnStack(Node2List &stack, Node2List *group);
  /// program backtracked one level, it updates structures of matched nodes
  /// accordingly
  void UpdateMatchedNodes(std::vector<ValueVec> &operandsStack,
                          std::vector<Map2Val> &nodesRTPStack,
                          std::vector<Map2Val> &nodesPTRStack,
                          Node2List &rootsStack);
  /// Remove unnecessary nodes from roots of pattern
  static void GetRoots(ValueVec &roots);
  /// Compute the correct debug location for the MOI instruction
  SDLoc ComputeSDLoc();

protected:
  BaseDagPattern(SelectionDAG *DAG, int *pattInfo, const TargetMachine &TM,
                 ValueVec &roots);
  // get various info from specific target
  virtual bool CheckImmWidth(int64_t val, int width, bool sign, int trunc) = 0;
  virtual const TargetRegisterClass *GetRegClass(int rc) = 0;
  virtual ImmInfo GetImmInfo(unsigned opcode, unsigned opNum) = 0;

public:
  /** Convenience method for CheckIndexedOffsetLegal.
   * Checks the tree shape and matches the instruction's operands on leaves. */
  bool MatchTreeWithOperands(SDValue rootPatt, SDValue rootReal,
                             SelectionDAG &DAG);
  /** Convenience method for FindMatch and CheckIndexedOffsetLegal.
   * Works as a wrapper for CheckTree and leaf pre-checking.
   * \param DAG The real dag, not the pattern one. */
  bool MatchTree(SDValue rootPatt, SDValue rootReal, SelectionDAG *DAG);
  /** Try to find a match.
   * Used by MOI lowering. */
  bool BaseTryMatch(SelectionDAG *DAG);
};

} // namespace llvm

#endif /* INCLUDE_CODASIP_TARGET_CODASIPBASEMOILOWERER_H_ */
