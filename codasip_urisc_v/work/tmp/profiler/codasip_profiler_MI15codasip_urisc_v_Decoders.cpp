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
 * \author  Codasip (c) Decoders analyzer
 * \version 9.4.2
 * \brief   Source files for profiler
 * \project codasip_urisc_v
 */
#include "codasip_profiler_MI15codasip_urisc_v_Decoders.h"

namespace codasip {
namespace profiler {
namespace MI15codasip_urisc_v {

const DecodersInterface::Instructions& Decoders::GetInstructions(const std::string& decoder) const 
{
    if (decoder == "MI3isaIH5_3isa3isa") {
        return  m_MI3isaIH5_3isa3isa.GetInstructions();
        }
    static DecodersInterface::Instructions defaultInstructions;
    return defaultInstructions;
}
const DecodersInterface::Operands& Decoders::GetOperands(const std::string& decoder) const 
{
    if (decoder == "MI3isaIH5_3isa3isa") {
        return  m_MI3isaIH5_3isa3isa.GetOperands();
        }
    static DecodersInterface::Operands defaultOperands;
    return defaultOperands;
}
const InstructionWithOperands& Decoders::Decode(const std::string& decoder, const codasip::MaxInt& input,const bool decodeOperands)
{
    output.Clear();
    if (decoder == "MI3isaIH5_3isa3isa") {
         m_MI3isaIH5_3isa3isa.Decode(output, input, decodeOperands);
        return output;
    }
    LOG_ERROR() << "Unknown Decoder" << std::endl;
    return output;
}
} // namespace MI15codasip_urisc_v
} // namespace profiler
} // namespace codasip
