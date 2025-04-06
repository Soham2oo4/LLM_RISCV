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
 * \author  Codasip (c) source generator
 * \version 9.4.2
 */
#include "codasip_resources_MemoryCore_codasip_memory_m_memory_t.h"

#include "simulator/simbase/codasip_interface.h"

namespace codasip {
namespace resources {

MemoryCore_codasip_memory_m_memory_t::MemoryCore_codasip_memory_m_memory_t()
 :  if_ldst("if_ldst", 48, (codasip_memory_m_memory_t*)this),
    if_fetch("if_fetch", 49, (codasip_memory_m_memory_t*)this)
{
    if_ldst.set_address_alignment(4);
    if_ldst.set_data_alignment({1, 2, 4});
    if_fetch.set_address_alignment(4);
    if_fetch.set_data_alignment({1, 2, 4});
}
int MemoryCore_codasip_memory_m_memory_t::Reset()
{
    if_ldst.reset();
    if_fetch.reset();
    return simulator::SIM_OK;
}
simulator::BinaryStream& MemoryCore_codasip_memory_m_memory_t::Serialize(simulator::BinaryStream& stream) const 
{
    stream << if_ldst;
    stream << if_fetch;
    return stream;
}
simulator::BinaryStream& MemoryCore_codasip_memory_m_memory_t::Deserialize(simulator::BinaryStream& stream)
{
    stream >> if_ldst;
    stream >> if_fetch;
    return stream;
}
} // namespace resources
} // namespace codasip
