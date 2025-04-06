/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Subtarget Enumeration Source Fragment                                      *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_SUBTARGETINFO_ENUM
#undef GET_SUBTARGETINFO_ENUM

namespace llvm {
namespace Codasip {
enum {
  FeatureRelax = 0,
  FeatureStdExtC = 1,
  NumSubtargetFeatures = 2
};
} // end namespace Codasip
} // end namespace llvm

#endif // GET_SUBTARGETINFO_ENUM


#ifdef GET_SUBTARGETINFO_MC_DESC
#undef GET_SUBTARGETINFO_MC_DESC

namespace llvm {
// Sorted (by key) array of values for CPU features.
extern const llvm::SubtargetFeatureKV CodasipFeatureKV[] = {
  { "c", "'C' (Compressed Instructions)", Codasip::FeatureStdExtC, { { { 0x0ULL, 0x0ULL, 0x0ULL, } } } },
  { "relax", "Enable Linker relaxation.", Codasip::FeatureRelax, { { { 0x0ULL, 0x0ULL, 0x0ULL, } } } },
};

#ifdef DBGFIELD
#error "<target>GenSubtargetInfo.inc requires a DBGFIELD macro"
#endif
#if !defined(NDEBUG) || defined(LLVM_ENABLE_DUMP)
#define DBGFIELD(x) x,
#else
#define DBGFIELD(x)
#endif

// Functional units for "CodasipItineraries"
namespace CodasipItinerariesFU {
  const unsigned long long FU0_S0 = 1ULL << 0;
  const unsigned long long FU1_S0 = 1ULL << 1;
  const unsigned long long FU2_S0 = 1ULL << 2;
  const unsigned long long FU3_S0 = 1ULL << 3;
  const unsigned long long FU4_S0 = 1ULL << 4;
  const unsigned long long FU5_S0 = 1ULL << 5;
  const unsigned long long FU6_S0 = 1ULL << 6;
  const unsigned long long FU7_S0 = 1ULL << 7;
  const unsigned long long FU8_S0 = 1ULL << 8;
  const unsigned long long FU9_S0 = 1ULL << 9;
  const unsigned long long FU10_S0 = 1ULL << 10;
  const unsigned long long FU11_S0 = 1ULL << 11;
  const unsigned long long FU12_S0 = 1ULL << 12;
  const unsigned long long FU13_S0 = 1ULL << 13;
  const unsigned long long FU14_S0 = 1ULL << 14;
  const unsigned long long FU15_S0 = 1ULL << 15;
  const unsigned long long FU16_S0 = 1ULL << 16;
  const unsigned long long FU17_S0 = 1ULL << 17;
  const unsigned long long FU18_S0 = 1ULL << 18;
  const unsigned long long FU19_S0 = 1ULL << 19;
  const unsigned long long FU20_S0 = 1ULL << 20;
  const unsigned long long FU21_S0 = 1ULL << 21;
  const unsigned long long FU22_S0 = 1ULL << 22;
  const unsigned long long FU23_S0 = 1ULL << 23;
  const unsigned long long FU24_S0 = 1ULL << 24;
  const unsigned long long FU25_S0 = 1ULL << 25;
  const unsigned long long FU26_S0 = 1ULL << 26;
  const unsigned long long FU27_S0 = 1ULL << 27;
  const unsigned long long FU28_S0 = 1ULL << 28;
  const unsigned long long FU29_S0 = 1ULL << 29;
  const unsigned long long FU30_S0 = 1ULL << 30;
  const unsigned long long FU31_S0 = 1ULL << 31;
  const unsigned long long FU32_S0 = 1ULL << 32;
  const unsigned long long FU33_S0 = 1ULL << 33;
  const unsigned long long W_r_csr_marchid_S0 = 1ULL << 34;
  const unsigned long long W_r_csr_mcause_S0 = 1ULL << 35;
  const unsigned long long W_r_csr_mcountinhibit_S0 = 1ULL << 36;
  const unsigned long long W_r_csr_mcycle_S0 = 1ULL << 37;
  const unsigned long long W_r_csr_mepc_S0 = 1ULL << 38;
  const unsigned long long W_r_csr_mhartid_S0 = 1ULL << 39;
  const unsigned long long W_r_csr_mie_S0 = 1ULL << 40;
  const unsigned long long W_r_csr_minstret_S0 = 1ULL << 41;
  const unsigned long long W_r_csr_mip_S0 = 1ULL << 42;
  const unsigned long long W_r_csr_misa_S0 = 1ULL << 43;
  const unsigned long long W_r_csr_mscratch_S0 = 1ULL << 44;
  const unsigned long long W_r_csr_mstatus_S0 = 1ULL << 45;
  const unsigned long long W_r_csr_mtval_S0 = 1ULL << 46;
  const unsigned long long W_r_csr_mtvec_S0 = 1ULL << 47;
  const unsigned long long W_r_csr_nmi_S0 = 1ULL << 48;
  const unsigned long long W_r_csr_nmi_mtval_S0 = 1ULL << 49;
  const unsigned long long W_r_nmi_handler_S0 = 1ULL << 50;
  const unsigned long long W_rf_gpr_S0 = 1ULL << 51;
  const unsigned long long W_codasip_physical_regs_csr_S0 = 1ULL << 52;
} // end namespace CodasipItinerariesFU

extern const llvm::InstrStage CodasipStages[] = {
  { 0, 0, 0, llvm::InstrStage::Required }, // No itinerary
  { 1, CodasipItinerariesFU::FU0_S0, -1, (llvm::InstrStage::ReservationKinds)0 },   { 0, CodasipItinerariesFU::W_rf_gpr_S0, 0, (llvm::InstrStage::ReservationKinds)0 },   { 1, CodasipItinerariesFU::FU1_S0, -1, (llvm::InstrStage::ReservationKinds)0 }, // 1-3
  { 1, CodasipItinerariesFU::FU0_S0, -1, (llvm::InstrStage::ReservationKinds)0 }, // 4
  { 0, 0, 0, llvm::InstrStage::Required } // End stages
};
extern const unsigned CodasipOperandCycles[] = {
  0, // No itinerary
  0 // End operand cycles
};
extern const unsigned CodasipForwardingPaths[] = {
 0, // No itinerary
 0 // End bypass tables
};

static const llvm::InstrItinerary CodasipItineraries[] = {
  { 0, 0, 0, 0, 0 }, // 0 NoInstrModel
  { 1, 1, 4, 0, 0 }, // 1 Itin_sc_loads
  { 1, 4, 5, 0, 0 }, // 2 Itin_sc_stores
  { 0, uint16_t(~0U), uint16_t(~0U), uint16_t(~0U), uint16_t(~0U) }// end marker
};

// ===============================================================
// Data tables for the new per-operand machine model.

// {ProcResourceIdx, Cycles}
extern const llvm::MCWriteProcResEntry CodasipWriteProcResTable[] = {
  { 0,  0}, // Invalid
}; // CodasipWriteProcResTable

// {Cycles, WriteResourceID}
extern const llvm::MCWriteLatencyEntry CodasipWriteLatencyTable[] = {
  { 0,  0}, // Invalid
}; // CodasipWriteLatencyTable

// {UseIdx, WriteResourceID, Cycles}
extern const llvm::MCReadAdvanceEntry CodasipReadAdvanceTable[] = {
  {0,  0,  0}, // Invalid
}; // CodasipReadAdvanceTable

#undef DBGFIELD

static const llvm::MCSchedModel NoSchedModel = {
  MCSchedModel::DefaultIssueWidth,
  MCSchedModel::DefaultMicroOpBufferSize,
  MCSchedModel::DefaultLoopMicroOpBufferSize,
  MCSchedModel::DefaultLoadLatency,
  MCSchedModel::DefaultHighLatency,
  MCSchedModel::DefaultMispredictPenalty,
  false, // PostRAScheduler
  false, // CompleteModel
  0, // Processor ID
  nullptr, nullptr, 0, 0, // No instruction-level machine model.
  nullptr, // No Itinerary
  nullptr // No extra processor descriptor
};

static const llvm::MCSchedModel CodasipItinerariesModel = {
  MCSchedModel::DefaultIssueWidth,
  MCSchedModel::DefaultMicroOpBufferSize,
  MCSchedModel::DefaultLoopMicroOpBufferSize,
  MCSchedModel::DefaultLoadLatency,
  MCSchedModel::DefaultHighLatency,
  MCSchedModel::DefaultMispredictPenalty,
  false, // PostRAScheduler
  false, // CompleteModel
  1, // Processor ID
  nullptr, nullptr, 0, 0, // No instruction-level machine model.
  CodasipItineraries,
  nullptr // No extra processor descriptor
};

// Sorted (by key) array of values for CPU subtype.
extern const llvm::SubtargetSubTypeKV CodasipSubTypeKV[] = {
 { "codasip", { { { 0x0ULL, 0x0ULL, 0x0ULL, } } }, &CodasipItinerariesModel },
};

namespace Codasip_MC {
unsigned resolveVariantSchedClassImpl(unsigned SchedClass,
    const MCInst *MI, unsigned CPUID) {
  // Don't know how to resolve this scheduling class.
  return 0;
}
} // end of namespace Codasip_MC

struct CodasipGenMCSubtargetInfo : public MCSubtargetInfo {
  CodasipGenMCSubtargetInfo(const Triple &TT, 
    StringRef CPU, StringRef FS, ArrayRef<SubtargetFeatureKV> PF,
    ArrayRef<SubtargetSubTypeKV> PD,
    const MCWriteProcResEntry *WPR,
    const MCWriteLatencyEntry *WL,
    const MCReadAdvanceEntry *RA, const InstrStage *IS,
    const unsigned *OC, const unsigned *FP) :
      MCSubtargetInfo(TT, CPU, FS, PF, PD,
                      WPR, WL, RA, IS, OC, FP) { }

  unsigned resolveVariantSchedClass(unsigned SchedClass,
      const MCInst *MI, unsigned CPUID) const override {
    return Codasip_MC::resolveVariantSchedClassImpl(SchedClass, MI, CPUID); 
  }
};

static inline MCSubtargetInfo *createCodasipMCSubtargetInfoImpl(const Triple &TT, StringRef CPU, StringRef FS) {
  return new CodasipGenMCSubtargetInfo(TT, CPU, FS, CodasipFeatureKV, CodasipSubTypeKV, 
                      CodasipWriteProcResTable, CodasipWriteLatencyTable, CodasipReadAdvanceTable, 
                      CodasipStages, CodasipOperandCycles, CodasipForwardingPaths);
}

} // end namespace llvm

#endif // GET_SUBTARGETINFO_MC_DESC


#ifdef GET_SUBTARGETINFO_TARGET_DESC
#undef GET_SUBTARGETINFO_TARGET_DESC

#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"

// ParseSubtargetFeatures - Parses features string setting specified
// subtarget options.
void llvm::CodasipSubtarget::ParseSubtargetFeatures(StringRef CPU, StringRef FS) {
  LLVM_DEBUG(dbgs() << "\nFeatures:" << FS);
  LLVM_DEBUG(dbgs() << "\nCPU:" << CPU << "\n\n");
  InitMCProcessorInfo(CPU, FS);
  const FeatureBitset& Bits = getFeatureBits();
  if (Bits[Codasip::FeatureRelax]) EnableLinkerRelax = true;
  if (Bits[Codasip::FeatureStdExtC]) HasStdExtC = true;
}
#endif // GET_SUBTARGETINFO_TARGET_DESC


#ifdef GET_SUBTARGETINFO_HEADER
#undef GET_SUBTARGETINFO_HEADER

namespace llvm {
class DFAPacketizer;
namespace Codasip_MC {
unsigned resolveVariantSchedClassImpl(unsigned SchedClass, const MCInst *MI, unsigned CPUID);
}

struct CodasipGenSubtargetInfo : public TargetSubtargetInfo {
  explicit CodasipGenSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS);
public:
  unsigned resolveSchedClass(unsigned SchedClass,  const MachineInstr *DefMI, const TargetSchedModel *SchedModel) const override;
  unsigned resolveVariantSchedClass(unsigned SchedClass, const MCInst *MI, unsigned CPUID) const override;
  DFAPacketizer *createDFAPacketizer(const InstrItineraryData *IID) const;
};
} // end namespace llvm

#endif // GET_SUBTARGETINFO_HEADER


#ifdef GET_SUBTARGETINFO_CTOR
#undef GET_SUBTARGETINFO_CTOR

#include "llvm/CodeGen/TargetSchedule.h"

namespace llvm {
extern const llvm::SubtargetFeatureKV CodasipFeatureKV[];
extern const llvm::SubtargetSubTypeKV CodasipSubTypeKV[];
extern const llvm::MCWriteProcResEntry CodasipWriteProcResTable[];
extern const llvm::MCWriteLatencyEntry CodasipWriteLatencyTable[];
extern const llvm::MCReadAdvanceEntry CodasipReadAdvanceTable[];
extern const llvm::InstrStage CodasipStages[];
extern const unsigned CodasipOperandCycles[];
extern const unsigned CodasipForwardingPaths[];
CodasipGenSubtargetInfo::CodasipGenSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS)
  : TargetSubtargetInfo(TT, CPU, FS, makeArrayRef(CodasipFeatureKV, 2), makeArrayRef(CodasipSubTypeKV, 1), 
                        CodasipWriteProcResTable, CodasipWriteLatencyTable, CodasipReadAdvanceTable, 
                        CodasipStages, CodasipOperandCycles, CodasipForwardingPaths) {}

unsigned CodasipGenSubtargetInfo
::resolveSchedClass(unsigned SchedClass, const MachineInstr *MI, const TargetSchedModel *SchedModel) const {
  report_fatal_error("Expected a variant SchedClass");
} // CodasipGenSubtargetInfo::resolveSchedClass

unsigned CodasipGenSubtargetInfo
::resolveVariantSchedClass(unsigned SchedClass, const MCInst *MI, unsigned CPUID) const {
  return Codasip_MC::resolveVariantSchedClassImpl(SchedClass, MI, CPUID);
} // CodasipGenSubtargetInfo::resolveVariantSchedClass

} // end namespace llvm

#endif // GET_SUBTARGETINFO_CTOR


#ifdef GET_STIPREDICATE_DECLS_FOR_MC_ANALYSIS
#undef GET_STIPREDICATE_DECLS_FOR_MC_ANALYSIS

#endif // GET_STIPREDICATE_DECLS_FOR_MC_ANALYSIS


#ifdef GET_STIPREDICATE_DEFS_FOR_MC_ANALYSIS
#undef GET_STIPREDICATE_DEFS_FOR_MC_ANALYSIS

#endif // GET_STIPREDICATE_DEFS_FOR_MC_ANALYSIS

