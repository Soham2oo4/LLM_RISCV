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
 * \author  Codasip (c) source generator
 * \version 9.4.2
 */
#ifndef CODASIP_RESOURCES_MEMORYCORE_CODASIP_MEMORY_M_MEMORY_T_0_H_
#define CODASIP_RESOURCES_MEMORYCORE_CODASIP_MEMORY_M_MEMORY_T_0_H_

#include "simulator/resources/csr_include.h"
#include "simulator/resources/detail/csr_memory_storage_impl.h"

namespace codasip {
namespace resources {
class MemoryCore_codasip_memory_m_memory_t;
typedef Memory<MemoryCore_codasip_memory_m_memory_t> codasip_memory_m_memory_t;
}
}

namespace codasip {
namespace resources {

/**
 *  \class  MemoryCore_codasip_memory_m_memory_t
 */
class MemoryCore_codasip_memory_m_memory_t  {
private:
    typedef uint32_t DataType;
    typedef detail::SparseMemory<32, DataType> MemoryType;
public:
    typedef MemoryStorage<DataType, 8, 32, codasip::resources::CP_LITTLE_ENDIAN, MemoryType, UnalignedAhb<DataType, 8>, AhbPac> StorageType;
    /**
     *  \class  MI7if_ldstAttributes
     */
    class MI7if_ldstAttributes  {
    public:
        enum {
            IS_READABLE=1,
            IS_WRITABLE=1
        };
    };
    Ahb3LiteTargetInterface<resources::PayloadSentinel<uint32_t, 8, 32, resources::CP_LITTLE_ENDIAN, resources::AhbPac>, codasip_memory_m_memory_t, MI7if_ldstAttributes> if_ldst;
    /**
     *  \class  MI8if_fetchAttributes
     */
    class MI8if_fetchAttributes  {
    public:
        enum {
            IS_READABLE=1,
            IS_WRITABLE=0
        };
    };
    Ahb3LiteTargetInterface<resources::PayloadSentinel<uint32_t, 8, 32, resources::CP_LITTLE_ENDIAN, resources::AhbPac>, codasip_memory_m_memory_t, MI8if_fetchAttributes> if_fetch;
    /**
     *  \brief  MemoryCore_codasip_memory_m_memory_t
     */
    MemoryCore_codasip_memory_m_memory_t();
    /**
     *  \brief  Reset
     */
    int Reset();
    /**
     *  \brief  ClockCycle
     */
    int ClockCycle();
    /**
     *  \brief  GetLatencyWrite
     */
    static Index GetLatencyWrite(const int uid, const Index index = 0);
    /**
     *  \brief  GetLatencySizeWrite
     */
    static Index GetLatencySizeWrite(const int uid);
    /**
     *  \brief  SetInterfaceLatencyWrite
     */
    static void SetInterfaceLatencyWrite(const int uid, const std::vector<size_t>& values);
    /**
     *  \brief  SetLatencyWrite
     */
    static void SetLatencyWrite(const std::vector<size_t>& values);
    /**
     *  \brief  GetLatencyRead
     */
    static Index GetLatencyRead(const int uid, const Index index = 0);
    /**
     *  \brief  GetLatencySizeRead
     */
    static Index GetLatencySizeRead(const int uid);
    /**
     *  \brief  SetInterfaceLatencyRead
     */
    static void SetInterfaceLatencyRead(const int uid, const std::vector<size_t>& values);
    /**
     *  \brief  SetLatencyRead
     */
    static void SetLatencyRead(const std::vector<size_t>& values);
    /**
     *  \brief  Serialize
     */
    simulator::BinaryStream& Serialize(simulator::BinaryStream& stream) const ;
    /**
     *  \brief  Deserialize
     */
    simulator::BinaryStream& Deserialize(simulator::BinaryStream& stream);
};
FORCE_INLINE int MemoryCore_codasip_memory_m_memory_t::ClockCycle()
{
    #ifdef __CA_MODEL__
    if_ldst.clock_cycle();
    #endif // __CA_MODEL__
    #ifdef __CA_MODEL__
    if_fetch.clock_cycle();
    #endif // __CA_MODEL__
    return simulator::SIM_OK;
}
FORCE_INLINE Index MemoryCore_codasip_memory_m_memory_t::GetLatencyWrite(const int uid, const Index index)
{
    return 1;
}
FORCE_INLINE Index MemoryCore_codasip_memory_m_memory_t::GetLatencySizeWrite(const int uid)
{
    return 1;
}
FORCE_INLINE void MemoryCore_codasip_memory_m_memory_t::SetInterfaceLatencyWrite(const int uid, const std::vector<size_t>& values)
{

}
FORCE_INLINE void MemoryCore_codasip_memory_m_memory_t::SetLatencyWrite(const std::vector<size_t>& values)
{

}
FORCE_INLINE Index MemoryCore_codasip_memory_m_memory_t::GetLatencyRead(const int uid, const Index index)
{
    return 1;
}
FORCE_INLINE Index MemoryCore_codasip_memory_m_memory_t::GetLatencySizeRead(const int uid)
{
    return 1;
}
FORCE_INLINE void MemoryCore_codasip_memory_m_memory_t::SetInterfaceLatencyRead(const int uid, const std::vector<size_t>& values)
{

}
FORCE_INLINE void MemoryCore_codasip_memory_m_memory_t::SetLatencyRead(const std::vector<size_t>& values)
{

}
} // namespace resources
} // namespace codasip

#endif
