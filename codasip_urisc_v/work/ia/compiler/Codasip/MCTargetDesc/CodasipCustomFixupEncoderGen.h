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
 * \date    2025-04-14
 * \author  Codasip (c) Assembler generator
 * \version 9.4.2
 * \brief   Source for assembler
 * \project MI15codasip_urisc_v
 */
#ifndef CODASIPCUSTOMFIXUPENCODERGEN_3_H_
#define CODASIPCUSTOMFIXUPENCODERGEN_3_H_

#include "llvm/MC/MCFixup.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCSubtargetInfo.h"

namespace llvm {

/**
 *  \class  CodasipCustomFixupEncoderGen
 *  \brief  This class is automatically generated, editing it is not advisable
 */
class CodasipCustomFixupEncoderGen  {
protected:
    MCContext& Ctx;
public:
    /**
     *  \brief  CodasipCustomFixupEncoderGen
     */
    CodasipCustomFixupEncoderGen(MCContext& Ctx);
    /**
     *  \brief  ~CodasipCustomFixupEncoderGen
     */
    virtual ~CodasipCustomFixupEncoderGen();
    /**
     *  \brief  customEncodeMI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12
     */
    virtual bool customEncodeMI3immIH1_10start_base11_9imm20_s123imm1_9imm20_s12(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3immIH1_10start_base6_4imm53imm1_4imm5
     */
    virtual bool customEncodeMI3immIH1_10start_base6_4imm53imm1_4imm5(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm
     */
    virtual bool customEncodeMI3immIH1_10start_base8_6op_csr3csr1_7csr_imm(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi
     */
    virtual bool customEncodeMI3valIH1_10start_base10_8imm20_hi3imm1_8imm20_hi(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo
     */
    virtual bool customEncodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_11simm12_s_lo(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo
     */
    virtual bool customEncodeMI3valIH1_10start_base10_8simm12_s8simm12_s1_17simm12_s_pcrel_lo(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi
     */
    virtual bool customEncodeMI3valIH1_10start_base14_11imm20_reloc3imm1_14imm20_pcrel_hi(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi
     */
    virtual bool customEncodeMI3valIH1_10start_base14_11imm20_reloc3imm1_8imm20_hi(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo
     */
    virtual bool customEncodeMI3valIH1_10start_base8_6simm126simm121_15simm12_pcrel_lo(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo
     */
    virtual bool customEncodeMI3valIH1_10start_base8_6simm126simm121_9simm12_lo(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12
     */
    virtual bool customEncodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20
     */
    virtual bool customEncodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32
     */
    virtual bool customEncodeMI4addrIH1_10start_base13_10rel_addr324addr1_10rel_addr32(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi
     */
    virtual bool customEncodeMI4addrIH1_10start_base17_14imm32_lui_addi3imm1_14imm32_lui_addi(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple
     */
    virtual bool customEncodeMI4addrIH1_10start_base23_20rel_addr32_call_tail4addr1_27rel_addr32_call_tail_simple(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple
     */
    virtual bool customEncodeMI4simmIH1_10start_base10_8simm12_s8simm12_s1_13simm12_simple(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple
     */
    virtual bool customEncodeMI4simmIH1_10start_base8_6simm126simm121_13simm12_simple(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
    /**
     *  \brief  customEncodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm
     */
    virtual bool customEncodeMI5shiftIH1_10start_base11_9shift_imm3imm1_9shift_imm(const MCInst &MI, const MCOperand &MO, SmallVectorImpl<MCFixup> &Fixups, const MCSubtargetInfo& STI) const ;
};
} // namespace llvm

#endif
