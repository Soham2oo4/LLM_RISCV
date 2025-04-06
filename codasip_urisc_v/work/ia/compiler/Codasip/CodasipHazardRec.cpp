/**
 * Codasip s.r.o.
 *
 * CONFIDENTIAL
 *
 * Copyright 2025 Codasip s.r.o.
 *
 * All Rights Reserved.
 * This file is part of the Codasip Studio product. No part of the Studio product, including this
 * file, may be use, copied, modified, or distributed except in accordance with the terms contained
 * in Codasip license agreement under which you obtained this file.
 *
 * \file
 * \date    2025-04-06
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-06 06:40:46
 *                Copyright (C) 2025 Codasip s.r.o.
 */


#include "CodasipHazardRec.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include <iostream>

#define DEBUG_TYPE "codasip-hazardrec"

void llvm::RegisterBoard::reset(unsigned depth) {
  clear();
  assign(depth, regList());
}

// Destroys the last, inserts a new first.
void llvm::RegisterBoard::advance() {
  pop_front();
  push_back(regList());
}

void llvm::RegisterBoard::addReg(unsigned n, unsigned r) {
  assert(n < size());
  iterator it;
  for (it = begin(); n--; ++it)
    ;
  it->insert(r);
}

bool llvm::RegisterBoard::isPending(unsigned r, const TargetRegisterInfo &TRI) {
  for (auto reglist : *this) {
    if (reglist.count(r))
      return true;
    // check if any reg is a sub/super of this one: if so, we're still pending:
    auto it =
        std::find_if(reglist.begin(), reglist.end(), [&](const unsigned reg) {
          return TRI.isSubRegister(r, reg) || TRI.isSuperRegister(r, reg);
        });

    if (it != reglist.end()) {
      return true;
    }
  }
  return false;
}

void llvm::RegisterBoard::dump() const {
  /*for (const_iterator it=begin(); it!=end(); ++it)
  {
    for (regList::const_iterator jt=it->begin(); jt!=it->end(); ++jt)
    {
      dbgs() << *jt << " ";
    }
    dbgs() << "\n";
  }*/
}

bool llvm::MachineHazardRecognizer::Empty() {
  for (unsigned i = 0; i < ReservedScoreboard.getDepth(); ++i) {
    if (ReservedScoreboard[i])
      return false;
  }
  for (unsigned i = 0; i < RequiredScoreboard.getDepth(); ++i) {
    if (RequiredScoreboard[i])
      return false;
  }
  for (RegisterBoard::iterator it = Registers.begin(); it != Registers.end();
       ++it) {
    if (!it->empty())
      return false;
  }
  return true;
}

void llvm::MachineHazardRecognizer::Reset() {
  ScoreboardHazardRecognizer::Reset();
  Registers.reset(ReservedScoreboard.getDepth());
}

void llvm::MachineHazardRecognizer::AdvanceCycle() {
  Registers.advance();
  ScoreboardHazardRecognizer::AdvanceCycle();
}

llvm::ScheduleHazardRecognizer::HazardType
llvm::MachineHazardRecognizer::getMachHazardType(const MachineInstr *MI,
                                                 int Stalls) {
  if (!ItinData || ItinData->isEmpty())
    return NoHazard;
  // Note that stalls will be negative for bottom-up scheduling.
  int cycle = Stalls;
  // Use the itinerary for the instruction to check for
  // free FU's in the scoreboard at the appropriate future cycles.
  const MCInstrDesc *MCID = &(MI->getDesc());
  if (MCID == NULL) {
    // Don't check hazards for non-machineinstr Nodes.
    return NoHazard;
  }
  
  return NoHazard;
}

void llvm::MachineHazardRecognizer::EmitMachInstruction(
    const MachineInstr *MI) {
  EmitMachInstruction2(MI);
  AdvanceCycle();
}

void llvm::MachineHazardRecognizer::EmitMachInstruction2(
    const MachineInstr *MI) {
  if (!ItinData || ItinData->isEmpty())
    return;
  // Use the itinerary for the underlying instruction to reserve FU's
  // in the scoreboard at the appropriate future cycles.
  const MCInstrDesc *MCID = &(MI->getDesc());
  assert(MCID && "The scheduler must filter non-machineinstrs");
  if (TII->isZeroCost(MCID->Opcode))
    return;
  ++IssueCount;
  
  LLVM_DEBUG(std::cerr << MCID->Opcode << ":\n");
  LLVM_DEBUG(ReservedScoreboard.dump());
  LLVM_DEBUG(RequiredScoreboard.dump());
  LLVM_DEBUG(Registers.dump());
  LLVM_DEBUG(dbgs() << "-----------------\n");
}
