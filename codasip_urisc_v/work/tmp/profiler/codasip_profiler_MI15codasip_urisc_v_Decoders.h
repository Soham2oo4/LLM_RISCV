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
 * \date    2025-04-12
 * \author  Codasip (c) Decoders analyzer
 * \version 9.4.2
 * \brief   Source files for profiler
 * \project codasip_urisc_v
 */
#ifndef CODASIP_PROFILER_MI15CODASIP_URISC_V_DECODERS_1_H_
#define CODASIP_PROFILER_MI15CODASIP_URISC_V_DECODERS_1_H_

#include "simulator/profilerl/profiler_interface.h"
#include "codasip_profiler_decoder_0.h"
#include "utility/codasip_log.h"

namespace codasip {
namespace profiler {
namespace MI15codasip_urisc_v {

/**
 *  \class  Decoders
 */
class Decoders : public DecodersInterface
 {
private:
    MI3isaIH5_3isa3isa m_MI3isaIH5_3isa3isa;
    InstructionWithOperands output;
public:
    /**
     *  \brief  GetInstructions
     */
    const DecodersInterface::Instructions& GetInstructions(const std::string& decoder) const ;
    /**
     *  \brief  GetOperands
     */
    const DecodersInterface::Operands& GetOperands(const std::string& decoder) const ;
    /**
     *  \brief  Decode
     */
    const InstructionWithOperands& Decode(const std::string& decoder, const codasip::MaxInt& input,const bool decodeOperands);
};
} // namespace MI15codasip_urisc_v
} // namespace profiler
} // namespace codasip

#endif
