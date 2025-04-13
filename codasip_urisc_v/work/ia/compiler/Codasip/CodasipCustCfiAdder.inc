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
 * \date    2025-04-13
 * \author  Codasip (c) C compiler backend generator
 * \version 9.4.2
 * \brief   Source for compiler backend
 * \project codasip_urisc_v.ia
 * \note          Codasip Studio version: 9.4.2
 *                Project: codasip_urisc_v.ia
 *                Date: 2025-04-13 13:38:41
 *                Copyright (C) 2025 Codasip s.r.o.
 */


// Use this file to override

namespace {

class CustCfiAdder : public CfiAdder {
public:
  CustCfiAdder() : CfiAdder() {}
  CustCfiAdder(CodasipTargetMachine &tm) : CfiAdder(tm) {}

protected:
  bool emitCfi(MachineBasicBlock::iterator II) override;
};

} // end of anonymous namespace

bool CustCfiAdder::emitCfi(MachineBasicBlock::iterator II) {
  return CfiAdder::emitCfi(II);
}
