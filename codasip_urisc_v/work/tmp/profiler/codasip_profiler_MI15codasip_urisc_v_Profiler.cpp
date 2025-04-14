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
 * \author  Codasip (c) source generator
 * \version 9.4.2
 */
#include "codasip_profiler_MI15codasip_urisc_v_Profiler.h"

#include "getopt_common/interface/basicoptions.h"
static const codasip::getopt::ToolInfoSetter g_ToolInfo(codasip::getopt::ToolInfo("Codasip  (C49_2265_2231)", 
"codasip_urisc_v", 
"7513e87dd6fc96cf64412388e8fb8c7aa15ba9833658336d6bf6189dbfd9723d", 
"2025-04-14 12:53:17", 
""
));

namespace codasip {
namespace profiler {
namespace MI15codasip_urisc_v {

const std::string& Profiler::GetModelHash() const 
{
    return getopt::GetToolInfo().GetHash();
}
DecodersInterface* Profiler::GetDecoders(const std::string& asip)
{
    if (asip == "MI15codasip_urisc_v") {
        return &m_Decoders_MI15codasip_urisc_v;
    }
    return NULL;
}
disassembler::Disassembler* Profiler::GetDisassembler(const std::string& asip)
{
    if (asip == "MI15codasip_urisc_v") {
        return &m_Dsm_MI15codasip_urisc_v;
    }
    return NULL;
}
} // namespace MI15codasip_urisc_v
} // namespace profiler
} // namespace codasip
