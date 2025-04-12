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
 * \author  Codasip (c) source generator
 * \version 9.4.2
 */
#ifndef CODASIP_PROFILER_MI15CODASIP_URISC_V_PROFILER_2_H_
#define CODASIP_PROFILER_MI15CODASIP_URISC_V_PROFILER_2_H_

#include "simulator/profilerl/profiler_interface.h"
#include "instrset/disassembler/disassembler.h"
#include "codasip_profiler_MI15codasip_urisc_v_Decoders.h"

namespace codasip {
namespace profiler {
namespace MI15codasip_urisc_v {

/**
 *  \class  Profiler
 */
class Profiler : public ProfilerInterface
 {
private:
    codasip::profiler::MI15codasip_urisc_v::Decoders m_Decoders_MI15codasip_urisc_v;
    codasip::disassembler::Disassembler m_Dsm_MI15codasip_urisc_v;
public:
    /**
     *  \brief  GetModelHash
     */
    const std::string& GetModelHash() const ;
    /**
     *  \brief  GetDecoders
     */
    DecodersInterface* GetDecoders(const std::string& asip);
    /**
     *  \brief  GetDisassembler
     */
    disassembler::Disassembler* GetDisassembler(const std::string& asip);
    /**
     *  \brief  GetAddressSpace
     */
    std::string GetAddressSpace(const int interfaceUid) const ;
    /**
     *  \brief  DumpInfo
     */
    void DumpInfo(std::ostream& out) const ;
};
FORCE_INLINE std::string Profiler::GetAddressSpace(const int interfaceUid) const 
{
    if (interfaceUid == 37) {
        return "as_all";
    }
    if (interfaceUid == 38) {
        return "as_all";
    }
    return "";
}
FORCE_INLINE void Profiler::DumpInfo(std::ostream& out) const 
{
    out << "<?xml version=\"1.0\"?><asip name=\"codasip_urisc_v\" model_type=\"ia\" version=\"9.4.2\"/>" << std::endl;
}
} // namespace MI15codasip_urisc_v
} // namespace profiler
} // namespace codasip

#endif
