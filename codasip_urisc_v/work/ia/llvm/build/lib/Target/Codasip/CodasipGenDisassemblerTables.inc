/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|*  * Codasip Disassembler                                                    *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#include "llvm/MC/MCInst.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/DataTypes.h"
#include "llvm/Support/LEB128.h"
#include "llvm/Support/raw_ostream.h"
#include <assert.h>

namespace llvm {

// Helper functions for extracting fields from encoded instructions.
// InsnType must either be integral or an APInt-like object that must:
// * Have a static const max_size_in_bits equal to the number of bits in the
//   encoding.
// * be default-constructible and copy-constructible
// * be constructible from a uint64_t
// * be constructible from an APInt (this can be private)
// * Support getBitsSet(loBit, hiBit)
// * be convertible to uint64_t
// * Support the ~, &, ==, !=, and |= operators with other objects of the same type
// * Support shift (<<, >>) with signed and unsigned integers on the RHS
// * Support put (<<) to raw_ostream&
template<typename InsnType>
#if defined(_MSC_VER) && !defined(__clang__)
__declspec(noinline)
#endif
static InsnType fieldFromInstruction(InsnType insn, unsigned startBit,
                                     unsigned numBits, std::true_type) {
  assert(startBit + numBits <= 64 && "Cannot support >64-bit extractions!");
  assert(startBit + numBits <= (sizeof(InsnType) * 8) &&
         "Instruction field out of bounds!");
  InsnType fieldMask;
  if (numBits == sizeof(InsnType) * 8)
    fieldMask = (InsnType)(-1LL);
  else
    fieldMask = (((InsnType)1 << numBits) - 1) << startBit;
  return (insn & fieldMask) >> startBit;
}

template<typename InsnType>
static InsnType fieldFromInstruction(InsnType insn, unsigned startBit,
                                     unsigned numBits, std::false_type) {
  assert(startBit + numBits <= InsnType::max_size_in_bits && "Instruction field out of bounds!");
  InsnType fieldMask = InsnType::getBitsSet(0, numBits);
  return (insn >> startBit) & fieldMask;
}

template<typename InsnType>
static InsnType fieldFromInstruction(InsnType insn, unsigned startBit,
                                     unsigned numBits) {
  return fieldFromInstruction(insn, startBit, numBits, std::is_integral<InsnType>());
}

static const uint8_t DecoderTable32[] = {
/* 0 */       MCD::OPC_ExtractField, 0, 7,  // Inst{6-0} ...
/* 3 */       MCD::OPC_FilterValue, 3, 218, 0, 0, // Skip to: 226
/* 8 */       MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 11 */      MCD::OPC_FilterValue, 0, 38, 0, 0, // Skip to: 54
/* 16 */      MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 19 */      MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 39
/* 24 */      MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 35
/* 31 */      MCD::OPC_Decode, 189, 12, 0, // Opcode: i_load__opc_loadb__reg0__simm12_simple__reg0__
/* 35 */      MCD::OPC_Decode, 191, 12, 1, // Opcode: i_load__opc_loadb__reg0__simm12_simple__regs__
/* 39 */      MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 50
/* 46 */      MCD::OPC_Decode, 207, 12, 2, // Opcode: i_load__opc_loadb__regs__simm12_simple__reg0__
/* 50 */      MCD::OPC_Decode, 209, 12, 3, // Opcode: i_load__opc_loadb__regs__simm12_simple__regs__
/* 54 */      MCD::OPC_FilterValue, 1, 38, 0, 0, // Skip to: 97
/* 59 */      MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 62 */      MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 82
/* 67 */      MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 78
/* 74 */      MCD::OPC_Decode, 243, 12, 0, // Opcode: i_load__opc_loadh__reg0__simm12_simple__reg0__
/* 78 */      MCD::OPC_Decode, 245, 12, 1, // Opcode: i_load__opc_loadh__reg0__simm12_simple__regs__
/* 82 */      MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 93
/* 89 */      MCD::OPC_Decode, 133, 13, 2, // Opcode: i_load__opc_loadh__regs__simm12_simple__reg0__
/* 93 */      MCD::OPC_Decode, 135, 13, 3, // Opcode: i_load__opc_loadh__regs__simm12_simple__regs__
/* 97 */      MCD::OPC_FilterValue, 2, 38, 0, 0, // Skip to: 140
/* 102 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 105 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 125
/* 110 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 121
/* 117 */     MCD::OPC_Decode, 169, 13, 0, // Opcode: i_load__opc_loadw__reg0__simm12_simple__reg0__
/* 121 */     MCD::OPC_Decode, 171, 13, 1, // Opcode: i_load__opc_loadw__reg0__simm12_simple__regs__
/* 125 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 136
/* 132 */     MCD::OPC_Decode, 187, 13, 2, // Opcode: i_load__opc_loadw__regs__simm12_simple__reg0__
/* 136 */     MCD::OPC_Decode, 189, 13, 3, // Opcode: i_load__opc_loadw__regs__simm12_simple__regs__
/* 140 */     MCD::OPC_FilterValue, 4, 38, 0, 0, // Skip to: 183
/* 145 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 148 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 168
/* 153 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 164
/* 160 */     MCD::OPC_Decode, 216, 12, 0, // Opcode: i_load__opc_loadbu__reg0__simm12_simple__reg0__
/* 164 */     MCD::OPC_Decode, 218, 12, 1, // Opcode: i_load__opc_loadbu__reg0__simm12_simple__regs__
/* 168 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 179
/* 175 */     MCD::OPC_Decode, 234, 12, 2, // Opcode: i_load__opc_loadbu__regs__simm12_simple__reg0__
/* 179 */     MCD::OPC_Decode, 236, 12, 3, // Opcode: i_load__opc_loadbu__regs__simm12_simple__regs__
/* 183 */     MCD::OPC_FilterValue, 5, 58, 22, 0, // Skip to: 5878
/* 188 */     MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 191 */     MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 211
/* 196 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 207
/* 203 */     MCD::OPC_Decode, 142, 13, 0, // Opcode: i_load__opc_loadhu__reg0__simm12_simple__reg0__
/* 207 */     MCD::OPC_Decode, 144, 13, 1, // Opcode: i_load__opc_loadhu__reg0__simm12_simple__regs__
/* 211 */     MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 222
/* 218 */     MCD::OPC_Decode, 160, 13, 2, // Opcode: i_load__opc_loadhu__regs__simm12_simple__reg0__
/* 222 */     MCD::OPC_Decode, 162, 13, 3, // Opcode: i_load__opc_loadhu__regs__simm12_simple__regs__
/* 226 */     MCD::OPC_FilterValue, 15, 9, 11, 0, // Skip to: 3056
/* 231 */     MCD::OPC_ExtractField, 7, 25,  // Inst{31-7} ...
/* 234 */     MCD::OPC_FilterValue, 0, 4, 0, 0, // Skip to: 243
/* 239 */     MCD::OPC_Decode, 233, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_hint_fence__
/* 243 */     MCD::OPC_FilterValue, 32, 4, 0, 0, // Skip to: 252
/* 248 */     MCD::OPC_Decode, 234, 11, 4, // Opcode: i_fencei__opc_fencei__
/* 252 */     MCD::OPC_FilterValue, 128, 64, 4, 0, 0, // Skip to: 262
/* 258 */     MCD::OPC_Decode, 217, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_hint_fence__
/* 262 */     MCD::OPC_FilterValue, 128, 128, 1, 4, 0, 0, // Skip to: 273
/* 269 */     MCD::OPC_Decode, 185, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_hint_fence__
/* 273 */     MCD::OPC_FilterValue, 128, 192, 1, 4, 0, 0, // Skip to: 284
/* 280 */     MCD::OPC_Decode, 201, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_hint_fence__
/* 284 */     MCD::OPC_FilterValue, 128, 128, 2, 4, 0, 0, // Skip to: 295
/* 291 */     MCD::OPC_Decode, 249, 10, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_hint_fence__
/* 295 */     MCD::OPC_FilterValue, 128, 192, 2, 4, 0, 0, // Skip to: 306
/* 302 */     MCD::OPC_Decode, 169, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_hint_fence__
/* 306 */     MCD::OPC_FilterValue, 128, 128, 3, 4, 0, 0, // Skip to: 317
/* 313 */     MCD::OPC_Decode, 137, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_hint_fence__
/* 317 */     MCD::OPC_FilterValue, 128, 192, 3, 4, 0, 0, // Skip to: 328
/* 324 */     MCD::OPC_Decode, 153, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_hint_fence__
/* 328 */     MCD::OPC_FilterValue, 128, 128, 4, 4, 0, 0, // Skip to: 339
/* 335 */     MCD::OPC_Decode, 249, 9, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_hint_fence__
/* 339 */     MCD::OPC_FilterValue, 128, 192, 4, 4, 0, 0, // Skip to: 350
/* 346 */     MCD::OPC_Decode, 233, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_hint_fence__
/* 350 */     MCD::OPC_FilterValue, 128, 128, 5, 4, 0, 0, // Skip to: 361
/* 357 */     MCD::OPC_Decode, 201, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_hint_fence__
/* 361 */     MCD::OPC_FilterValue, 128, 192, 5, 4, 0, 0, // Skip to: 372
/* 368 */     MCD::OPC_Decode, 217, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_hint_fence__
/* 372 */     MCD::OPC_FilterValue, 128, 128, 6, 4, 0, 0, // Skip to: 383
/* 379 */     MCD::OPC_Decode, 137, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_hint_fence__
/* 383 */     MCD::OPC_FilterValue, 128, 192, 6, 4, 0, 0, // Skip to: 394
/* 390 */     MCD::OPC_Decode, 185, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_hint_fence__
/* 394 */     MCD::OPC_FilterValue, 128, 128, 7, 4, 0, 0, // Skip to: 405
/* 401 */     MCD::OPC_Decode, 153, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_hint_fence__
/* 405 */     MCD::OPC_FilterValue, 128, 192, 7, 4, 0, 0, // Skip to: 416
/* 412 */     MCD::OPC_Decode, 169, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__
/* 416 */     MCD::OPC_FilterValue, 128, 128, 8, 4, 0, 0, // Skip to: 427
/* 423 */     MCD::OPC_Decode, 248, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_w_fence__
/* 427 */     MCD::OPC_FilterValue, 128, 192, 8, 4, 0, 0, // Skip to: 438
/* 434 */     MCD::OPC_Decode, 232, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_w_fence__
/* 438 */     MCD::OPC_FilterValue, 128, 128, 9, 4, 0, 0, // Skip to: 449
/* 445 */     MCD::OPC_Decode, 200, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_w_fence__
/* 449 */     MCD::OPC_FilterValue, 128, 192, 9, 4, 0, 0, // Skip to: 460
/* 456 */     MCD::OPC_Decode, 216, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_w_fence__
/* 460 */     MCD::OPC_FilterValue, 128, 128, 10, 4, 0, 0, // Skip to: 471
/* 467 */     MCD::OPC_Decode, 136, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_w_fence__
/* 471 */     MCD::OPC_FilterValue, 128, 192, 10, 4, 0, 0, // Skip to: 482
/* 478 */     MCD::OPC_Decode, 184, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_w_fence__
/* 482 */     MCD::OPC_FilterValue, 128, 128, 11, 4, 0, 0, // Skip to: 493
/* 489 */     MCD::OPC_Decode, 152, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_w_fence__
/* 493 */     MCD::OPC_FilterValue, 128, 192, 11, 4, 0, 0, // Skip to: 504
/* 500 */     MCD::OPC_Decode, 168, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_w_fence__
/* 504 */     MCD::OPC_FilterValue, 128, 128, 12, 4, 0, 0, // Skip to: 515
/* 511 */     MCD::OPC_Decode, 136, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_w_fence__
/* 515 */     MCD::OPC_FilterValue, 128, 192, 12, 4, 0, 0, // Skip to: 526
/* 522 */     MCD::OPC_Decode, 248, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_w_fence__
/* 526 */     MCD::OPC_FilterValue, 128, 128, 13, 4, 0, 0, // Skip to: 537
/* 533 */     MCD::OPC_Decode, 216, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_w_fence__
/* 537 */     MCD::OPC_FilterValue, 128, 192, 13, 4, 0, 0, // Skip to: 548
/* 544 */     MCD::OPC_Decode, 232, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_w_fence__
/* 548 */     MCD::OPC_FilterValue, 128, 128, 14, 4, 0, 0, // Skip to: 559
/* 555 */     MCD::OPC_Decode, 152, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_w_fence__
/* 559 */     MCD::OPC_FilterValue, 128, 192, 14, 4, 0, 0, // Skip to: 570
/* 566 */     MCD::OPC_Decode, 200, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_w_fence__
/* 570 */     MCD::OPC_FilterValue, 128, 128, 15, 4, 0, 0, // Skip to: 581
/* 577 */     MCD::OPC_Decode, 168, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_w_fence__
/* 581 */     MCD::OPC_FilterValue, 128, 192, 15, 4, 0, 0, // Skip to: 592
/* 588 */     MCD::OPC_Decode, 184, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_w_fence__
/* 592 */     MCD::OPC_FilterValue, 128, 128, 16, 4, 0, 0, // Skip to: 603
/* 599 */     MCD::OPC_Decode, 246, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_r_fence__
/* 603 */     MCD::OPC_FilterValue, 128, 192, 16, 4, 0, 0, // Skip to: 614
/* 610 */     MCD::OPC_Decode, 230, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_r_fence__
/* 614 */     MCD::OPC_FilterValue, 128, 128, 17, 4, 0, 0, // Skip to: 625
/* 621 */     MCD::OPC_Decode, 198, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_r_fence__
/* 625 */     MCD::OPC_FilterValue, 128, 192, 17, 4, 0, 0, // Skip to: 636
/* 632 */     MCD::OPC_Decode, 214, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_r_fence__
/* 636 */     MCD::OPC_FilterValue, 128, 128, 18, 4, 0, 0, // Skip to: 647
/* 643 */     MCD::OPC_Decode, 134, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_r_fence__
/* 647 */     MCD::OPC_FilterValue, 128, 192, 18, 4, 0, 0, // Skip to: 658
/* 654 */     MCD::OPC_Decode, 182, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_r_fence__
/* 658 */     MCD::OPC_FilterValue, 128, 128, 19, 4, 0, 0, // Skip to: 669
/* 665 */     MCD::OPC_Decode, 150, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_r_fence__
/* 669 */     MCD::OPC_FilterValue, 128, 192, 19, 4, 0, 0, // Skip to: 680
/* 676 */     MCD::OPC_Decode, 166, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_r_fence__
/* 680 */     MCD::OPC_FilterValue, 128, 128, 20, 4, 0, 0, // Skip to: 691
/* 687 */     MCD::OPC_Decode, 134, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_r_fence__
/* 691 */     MCD::OPC_FilterValue, 128, 192, 20, 4, 0, 0, // Skip to: 702
/* 698 */     MCD::OPC_Decode, 246, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_r_fence__
/* 702 */     MCD::OPC_FilterValue, 128, 128, 21, 4, 0, 0, // Skip to: 713
/* 709 */     MCD::OPC_Decode, 214, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_r_fence__
/* 713 */     MCD::OPC_FilterValue, 128, 192, 21, 4, 0, 0, // Skip to: 724
/* 720 */     MCD::OPC_Decode, 230, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_r_fence__
/* 724 */     MCD::OPC_FilterValue, 128, 128, 22, 4, 0, 0, // Skip to: 735
/* 731 */     MCD::OPC_Decode, 150, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_r_fence__
/* 735 */     MCD::OPC_FilterValue, 128, 192, 22, 4, 0, 0, // Skip to: 746
/* 742 */     MCD::OPC_Decode, 198, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_r_fence__
/* 746 */     MCD::OPC_FilterValue, 128, 128, 23, 4, 0, 0, // Skip to: 757
/* 753 */     MCD::OPC_Decode, 166, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_r_fence__
/* 757 */     MCD::OPC_FilterValue, 128, 192, 23, 4, 0, 0, // Skip to: 768
/* 764 */     MCD::OPC_Decode, 182, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_r_fence__
/* 768 */     MCD::OPC_FilterValue, 128, 128, 24, 4, 0, 0, // Skip to: 779
/* 775 */     MCD::OPC_Decode, 247, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_rw_fence__
/* 779 */     MCD::OPC_FilterValue, 128, 192, 24, 4, 0, 0, // Skip to: 790
/* 786 */     MCD::OPC_Decode, 231, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_rw_fence__
/* 790 */     MCD::OPC_FilterValue, 128, 128, 25, 4, 0, 0, // Skip to: 801
/* 797 */     MCD::OPC_Decode, 199, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_rw_fence__
/* 801 */     MCD::OPC_FilterValue, 128, 192, 25, 4, 0, 0, // Skip to: 812
/* 808 */     MCD::OPC_Decode, 215, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_rw_fence__
/* 812 */     MCD::OPC_FilterValue, 128, 128, 26, 4, 0, 0, // Skip to: 823
/* 819 */     MCD::OPC_Decode, 135, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_rw_fence__
/* 823 */     MCD::OPC_FilterValue, 128, 192, 26, 4, 0, 0, // Skip to: 834
/* 830 */     MCD::OPC_Decode, 183, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_rw_fence__
/* 834 */     MCD::OPC_FilterValue, 128, 128, 27, 4, 0, 0, // Skip to: 845
/* 841 */     MCD::OPC_Decode, 151, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_rw_fence__
/* 845 */     MCD::OPC_FilterValue, 128, 192, 27, 4, 0, 0, // Skip to: 856
/* 852 */     MCD::OPC_Decode, 167, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_rw_fence__
/* 856 */     MCD::OPC_FilterValue, 128, 128, 28, 4, 0, 0, // Skip to: 867
/* 863 */     MCD::OPC_Decode, 135, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_rw_fence__
/* 867 */     MCD::OPC_FilterValue, 128, 192, 28, 4, 0, 0, // Skip to: 878
/* 874 */     MCD::OPC_Decode, 247, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_rw_fence__
/* 878 */     MCD::OPC_FilterValue, 128, 128, 29, 4, 0, 0, // Skip to: 889
/* 885 */     MCD::OPC_Decode, 215, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_rw_fence__
/* 889 */     MCD::OPC_FilterValue, 128, 192, 29, 4, 0, 0, // Skip to: 900
/* 896 */     MCD::OPC_Decode, 231, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_rw_fence__
/* 900 */     MCD::OPC_FilterValue, 128, 128, 30, 4, 0, 0, // Skip to: 911
/* 907 */     MCD::OPC_Decode, 151, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_rw_fence__
/* 911 */     MCD::OPC_FilterValue, 128, 192, 30, 4, 0, 0, // Skip to: 922
/* 918 */     MCD::OPC_Decode, 199, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_rw_fence__
/* 922 */     MCD::OPC_FilterValue, 128, 128, 31, 4, 0, 0, // Skip to: 933
/* 929 */     MCD::OPC_Decode, 167, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_rw_fence__
/* 933 */     MCD::OPC_FilterValue, 128, 192, 31, 4, 0, 0, // Skip to: 944
/* 940 */     MCD::OPC_Decode, 183, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__
/* 944 */     MCD::OPC_FilterValue, 128, 128, 32, 4, 0, 0, // Skip to: 955
/* 951 */     MCD::OPC_Decode, 242, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_o_fence__
/* 955 */     MCD::OPC_FilterValue, 128, 192, 32, 4, 0, 0, // Skip to: 966
/* 962 */     MCD::OPC_Decode, 226, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_o_fence__
/* 966 */     MCD::OPC_FilterValue, 128, 128, 33, 4, 0, 0, // Skip to: 977
/* 973 */     MCD::OPC_Decode, 194, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_o_fence__
/* 977 */     MCD::OPC_FilterValue, 128, 192, 33, 4, 0, 0, // Skip to: 988
/* 984 */     MCD::OPC_Decode, 210, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_o_fence__
/* 988 */     MCD::OPC_FilterValue, 128, 128, 34, 4, 0, 0, // Skip to: 999
/* 995 */     MCD::OPC_Decode, 130, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_o_fence__
/* 999 */     MCD::OPC_FilterValue, 128, 192, 34, 4, 0, 0, // Skip to: 1010
/* 1006 */    MCD::OPC_Decode, 178, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_o_fence__
/* 1010 */    MCD::OPC_FilterValue, 128, 128, 35, 4, 0, 0, // Skip to: 1021
/* 1017 */    MCD::OPC_Decode, 146, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_o_fence__
/* 1021 */    MCD::OPC_FilterValue, 128, 192, 35, 4, 0, 0, // Skip to: 1032
/* 1028 */    MCD::OPC_Decode, 162, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_o_fence__
/* 1032 */    MCD::OPC_FilterValue, 128, 128, 36, 4, 0, 0, // Skip to: 1043
/* 1039 */    MCD::OPC_Decode, 130, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_o_fence__
/* 1043 */    MCD::OPC_FilterValue, 128, 192, 36, 4, 0, 0, // Skip to: 1054
/* 1050 */    MCD::OPC_Decode, 242, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_o_fence__
/* 1054 */    MCD::OPC_FilterValue, 128, 128, 37, 4, 0, 0, // Skip to: 1065
/* 1061 */    MCD::OPC_Decode, 210, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_o_fence__
/* 1065 */    MCD::OPC_FilterValue, 128, 192, 37, 4, 0, 0, // Skip to: 1076
/* 1072 */    MCD::OPC_Decode, 226, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_o_fence__
/* 1076 */    MCD::OPC_FilterValue, 128, 128, 38, 4, 0, 0, // Skip to: 1087
/* 1083 */    MCD::OPC_Decode, 146, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_o_fence__
/* 1087 */    MCD::OPC_FilterValue, 128, 192, 38, 4, 0, 0, // Skip to: 1098
/* 1094 */    MCD::OPC_Decode, 194, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_o_fence__
/* 1098 */    MCD::OPC_FilterValue, 128, 128, 39, 4, 0, 0, // Skip to: 1109
/* 1105 */    MCD::OPC_Decode, 162, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_o_fence__
/* 1109 */    MCD::OPC_FilterValue, 128, 192, 39, 4, 0, 0, // Skip to: 1120
/* 1116 */    MCD::OPC_Decode, 178, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_o_fence__
/* 1120 */    MCD::OPC_FilterValue, 128, 128, 40, 4, 0, 0, // Skip to: 1131
/* 1127 */    MCD::OPC_Decode, 245, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_ow_fence__
/* 1131 */    MCD::OPC_FilterValue, 128, 192, 40, 4, 0, 0, // Skip to: 1142
/* 1138 */    MCD::OPC_Decode, 229, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_ow_fence__
/* 1142 */    MCD::OPC_FilterValue, 128, 128, 41, 4, 0, 0, // Skip to: 1153
/* 1149 */    MCD::OPC_Decode, 197, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_ow_fence__
/* 1153 */    MCD::OPC_FilterValue, 128, 192, 41, 4, 0, 0, // Skip to: 1164
/* 1160 */    MCD::OPC_Decode, 213, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_ow_fence__
/* 1164 */    MCD::OPC_FilterValue, 128, 128, 42, 4, 0, 0, // Skip to: 1175
/* 1171 */    MCD::OPC_Decode, 133, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_ow_fence__
/* 1175 */    MCD::OPC_FilterValue, 128, 192, 42, 4, 0, 0, // Skip to: 1186
/* 1182 */    MCD::OPC_Decode, 181, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_ow_fence__
/* 1186 */    MCD::OPC_FilterValue, 128, 128, 43, 4, 0, 0, // Skip to: 1197
/* 1193 */    MCD::OPC_Decode, 149, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_ow_fence__
/* 1197 */    MCD::OPC_FilterValue, 128, 192, 43, 4, 0, 0, // Skip to: 1208
/* 1204 */    MCD::OPC_Decode, 165, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_ow_fence__
/* 1208 */    MCD::OPC_FilterValue, 128, 128, 44, 4, 0, 0, // Skip to: 1219
/* 1215 */    MCD::OPC_Decode, 133, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_ow_fence__
/* 1219 */    MCD::OPC_FilterValue, 128, 192, 44, 4, 0, 0, // Skip to: 1230
/* 1226 */    MCD::OPC_Decode, 245, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_ow_fence__
/* 1230 */    MCD::OPC_FilterValue, 128, 128, 45, 4, 0, 0, // Skip to: 1241
/* 1237 */    MCD::OPC_Decode, 213, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_ow_fence__
/* 1241 */    MCD::OPC_FilterValue, 128, 192, 45, 4, 0, 0, // Skip to: 1252
/* 1248 */    MCD::OPC_Decode, 229, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_ow_fence__
/* 1252 */    MCD::OPC_FilterValue, 128, 128, 46, 4, 0, 0, // Skip to: 1263
/* 1259 */    MCD::OPC_Decode, 149, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_ow_fence__
/* 1263 */    MCD::OPC_FilterValue, 128, 192, 46, 4, 0, 0, // Skip to: 1274
/* 1270 */    MCD::OPC_Decode, 197, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_ow_fence__
/* 1274 */    MCD::OPC_FilterValue, 128, 128, 47, 4, 0, 0, // Skip to: 1285
/* 1281 */    MCD::OPC_Decode, 165, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_ow_fence__
/* 1285 */    MCD::OPC_FilterValue, 128, 192, 47, 4, 0, 0, // Skip to: 1296
/* 1292 */    MCD::OPC_Decode, 181, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__
/* 1296 */    MCD::OPC_FilterValue, 128, 128, 48, 4, 0, 0, // Skip to: 1307
/* 1303 */    MCD::OPC_Decode, 243, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_or_fence__
/* 1307 */    MCD::OPC_FilterValue, 128, 192, 48, 4, 0, 0, // Skip to: 1318
/* 1314 */    MCD::OPC_Decode, 227, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_or_fence__
/* 1318 */    MCD::OPC_FilterValue, 128, 128, 49, 4, 0, 0, // Skip to: 1329
/* 1325 */    MCD::OPC_Decode, 195, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_or_fence__
/* 1329 */    MCD::OPC_FilterValue, 128, 192, 49, 4, 0, 0, // Skip to: 1340
/* 1336 */    MCD::OPC_Decode, 211, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_or_fence__
/* 1340 */    MCD::OPC_FilterValue, 128, 128, 50, 4, 0, 0, // Skip to: 1351
/* 1347 */    MCD::OPC_Decode, 131, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_or_fence__
/* 1351 */    MCD::OPC_FilterValue, 128, 192, 50, 4, 0, 0, // Skip to: 1362
/* 1358 */    MCD::OPC_Decode, 179, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_or_fence__
/* 1362 */    MCD::OPC_FilterValue, 128, 128, 51, 4, 0, 0, // Skip to: 1373
/* 1369 */    MCD::OPC_Decode, 147, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_or_fence__
/* 1373 */    MCD::OPC_FilterValue, 128, 192, 51, 4, 0, 0, // Skip to: 1384
/* 1380 */    MCD::OPC_Decode, 163, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_or_fence__
/* 1384 */    MCD::OPC_FilterValue, 128, 128, 52, 4, 0, 0, // Skip to: 1395
/* 1391 */    MCD::OPC_Decode, 131, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_or_fence__
/* 1395 */    MCD::OPC_FilterValue, 128, 192, 52, 4, 0, 0, // Skip to: 1406
/* 1402 */    MCD::OPC_Decode, 243, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_or_fence__
/* 1406 */    MCD::OPC_FilterValue, 128, 128, 53, 4, 0, 0, // Skip to: 1417
/* 1413 */    MCD::OPC_Decode, 211, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_or_fence__
/* 1417 */    MCD::OPC_FilterValue, 128, 192, 53, 4, 0, 0, // Skip to: 1428
/* 1424 */    MCD::OPC_Decode, 227, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_or_fence__
/* 1428 */    MCD::OPC_FilterValue, 128, 128, 54, 4, 0, 0, // Skip to: 1439
/* 1435 */    MCD::OPC_Decode, 147, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_or_fence__
/* 1439 */    MCD::OPC_FilterValue, 128, 192, 54, 4, 0, 0, // Skip to: 1450
/* 1446 */    MCD::OPC_Decode, 195, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_or_fence__
/* 1450 */    MCD::OPC_FilterValue, 128, 128, 55, 4, 0, 0, // Skip to: 1461
/* 1457 */    MCD::OPC_Decode, 163, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_or_fence__
/* 1461 */    MCD::OPC_FilterValue, 128, 192, 55, 4, 0, 0, // Skip to: 1472
/* 1468 */    MCD::OPC_Decode, 179, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_or_fence__
/* 1472 */    MCD::OPC_FilterValue, 128, 128, 56, 4, 0, 0, // Skip to: 1483
/* 1479 */    MCD::OPC_Decode, 244, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_orw_fence__
/* 1483 */    MCD::OPC_FilterValue, 128, 192, 56, 4, 0, 0, // Skip to: 1494
/* 1490 */    MCD::OPC_Decode, 228, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_orw_fence__
/* 1494 */    MCD::OPC_FilterValue, 128, 128, 57, 4, 0, 0, // Skip to: 1505
/* 1501 */    MCD::OPC_Decode, 196, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_orw_fence__
/* 1505 */    MCD::OPC_FilterValue, 128, 192, 57, 4, 0, 0, // Skip to: 1516
/* 1512 */    MCD::OPC_Decode, 212, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_orw_fence__
/* 1516 */    MCD::OPC_FilterValue, 128, 128, 58, 4, 0, 0, // Skip to: 1527
/* 1523 */    MCD::OPC_Decode, 132, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_orw_fence__
/* 1527 */    MCD::OPC_FilterValue, 128, 192, 58, 4, 0, 0, // Skip to: 1538
/* 1534 */    MCD::OPC_Decode, 180, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_orw_fence__
/* 1538 */    MCD::OPC_FilterValue, 128, 128, 59, 4, 0, 0, // Skip to: 1549
/* 1545 */    MCD::OPC_Decode, 148, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_orw_fence__
/* 1549 */    MCD::OPC_FilterValue, 128, 192, 59, 4, 0, 0, // Skip to: 1560
/* 1556 */    MCD::OPC_Decode, 164, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_orw_fence__
/* 1560 */    MCD::OPC_FilterValue, 128, 128, 60, 4, 0, 0, // Skip to: 1571
/* 1567 */    MCD::OPC_Decode, 132, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_orw_fence__
/* 1571 */    MCD::OPC_FilterValue, 128, 192, 60, 4, 0, 0, // Skip to: 1582
/* 1578 */    MCD::OPC_Decode, 244, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_orw_fence__
/* 1582 */    MCD::OPC_FilterValue, 128, 128, 61, 4, 0, 0, // Skip to: 1593
/* 1589 */    MCD::OPC_Decode, 212, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_orw_fence__
/* 1593 */    MCD::OPC_FilterValue, 128, 192, 61, 4, 0, 0, // Skip to: 1604
/* 1600 */    MCD::OPC_Decode, 228, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_orw_fence__
/* 1604 */    MCD::OPC_FilterValue, 128, 128, 62, 4, 0, 0, // Skip to: 1615
/* 1611 */    MCD::OPC_Decode, 148, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_orw_fence__
/* 1615 */    MCD::OPC_FilterValue, 128, 192, 62, 4, 0, 0, // Skip to: 1626
/* 1622 */    MCD::OPC_Decode, 196, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_orw_fence__
/* 1626 */    MCD::OPC_FilterValue, 128, 128, 63, 4, 0, 0, // Skip to: 1637
/* 1633 */    MCD::OPC_Decode, 164, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_orw_fence__
/* 1637 */    MCD::OPC_FilterValue, 128, 192, 63, 4, 0, 0, // Skip to: 1648
/* 1644 */    MCD::OPC_Decode, 180, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__
/* 1648 */    MCD::OPC_FilterValue, 128, 128, 64, 4, 0, 0, // Skip to: 1659
/* 1655 */    MCD::OPC_Decode, 234, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_i_fence__
/* 1659 */    MCD::OPC_FilterValue, 128, 192, 64, 4, 0, 0, // Skip to: 1670
/* 1666 */    MCD::OPC_Decode, 218, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_i_fence__
/* 1670 */    MCD::OPC_FilterValue, 128, 128, 65, 4, 0, 0, // Skip to: 1681
/* 1677 */    MCD::OPC_Decode, 186, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_i_fence__
/* 1681 */    MCD::OPC_FilterValue, 128, 192, 65, 4, 0, 0, // Skip to: 1692
/* 1688 */    MCD::OPC_Decode, 202, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_i_fence__
/* 1692 */    MCD::OPC_FilterValue, 128, 128, 66, 4, 0, 0, // Skip to: 1703
/* 1699 */    MCD::OPC_Decode, 250, 10, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_i_fence__
/* 1703 */    MCD::OPC_FilterValue, 128, 192, 66, 4, 0, 0, // Skip to: 1714
/* 1710 */    MCD::OPC_Decode, 170, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_i_fence__
/* 1714 */    MCD::OPC_FilterValue, 128, 128, 67, 4, 0, 0, // Skip to: 1725
/* 1721 */    MCD::OPC_Decode, 138, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_i_fence__
/* 1725 */    MCD::OPC_FilterValue, 128, 192, 67, 4, 0, 0, // Skip to: 1736
/* 1732 */    MCD::OPC_Decode, 154, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_i_fence__
/* 1736 */    MCD::OPC_FilterValue, 128, 128, 68, 4, 0, 0, // Skip to: 1747
/* 1743 */    MCD::OPC_Decode, 250, 9, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_i_fence__
/* 1747 */    MCD::OPC_FilterValue, 128, 192, 68, 4, 0, 0, // Skip to: 1758
/* 1754 */    MCD::OPC_Decode, 234, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_i_fence__
/* 1758 */    MCD::OPC_FilterValue, 128, 128, 69, 4, 0, 0, // Skip to: 1769
/* 1765 */    MCD::OPC_Decode, 202, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_i_fence__
/* 1769 */    MCD::OPC_FilterValue, 128, 192, 69, 4, 0, 0, // Skip to: 1780
/* 1776 */    MCD::OPC_Decode, 218, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_i_fence__
/* 1780 */    MCD::OPC_FilterValue, 128, 128, 70, 4, 0, 0, // Skip to: 1791
/* 1787 */    MCD::OPC_Decode, 138, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_i_fence__
/* 1791 */    MCD::OPC_FilterValue, 128, 192, 70, 4, 0, 0, // Skip to: 1802
/* 1798 */    MCD::OPC_Decode, 186, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_i_fence__
/* 1802 */    MCD::OPC_FilterValue, 128, 128, 71, 4, 0, 0, // Skip to: 1813
/* 1809 */    MCD::OPC_Decode, 154, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_i_fence__
/* 1813 */    MCD::OPC_FilterValue, 128, 192, 71, 4, 0, 0, // Skip to: 1824
/* 1820 */    MCD::OPC_Decode, 170, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_i_fence__
/* 1824 */    MCD::OPC_FilterValue, 128, 128, 72, 4, 0, 0, // Skip to: 1835
/* 1831 */    MCD::OPC_Decode, 241, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_iw_fence__
/* 1835 */    MCD::OPC_FilterValue, 128, 192, 72, 4, 0, 0, // Skip to: 1846
/* 1842 */    MCD::OPC_Decode, 225, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_iw_fence__
/* 1846 */    MCD::OPC_FilterValue, 128, 128, 73, 4, 0, 0, // Skip to: 1857
/* 1853 */    MCD::OPC_Decode, 193, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_iw_fence__
/* 1857 */    MCD::OPC_FilterValue, 128, 192, 73, 4, 0, 0, // Skip to: 1868
/* 1864 */    MCD::OPC_Decode, 209, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_iw_fence__
/* 1868 */    MCD::OPC_FilterValue, 128, 128, 74, 4, 0, 0, // Skip to: 1879
/* 1875 */    MCD::OPC_Decode, 129, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_iw_fence__
/* 1879 */    MCD::OPC_FilterValue, 128, 192, 74, 4, 0, 0, // Skip to: 1890
/* 1886 */    MCD::OPC_Decode, 177, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_iw_fence__
/* 1890 */    MCD::OPC_FilterValue, 128, 128, 75, 4, 0, 0, // Skip to: 1901
/* 1897 */    MCD::OPC_Decode, 145, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_iw_fence__
/* 1901 */    MCD::OPC_FilterValue, 128, 192, 75, 4, 0, 0, // Skip to: 1912
/* 1908 */    MCD::OPC_Decode, 161, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_iw_fence__
/* 1912 */    MCD::OPC_FilterValue, 128, 128, 76, 4, 0, 0, // Skip to: 1923
/* 1919 */    MCD::OPC_Decode, 129, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_iw_fence__
/* 1923 */    MCD::OPC_FilterValue, 128, 192, 76, 4, 0, 0, // Skip to: 1934
/* 1930 */    MCD::OPC_Decode, 241, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_iw_fence__
/* 1934 */    MCD::OPC_FilterValue, 128, 128, 77, 4, 0, 0, // Skip to: 1945
/* 1941 */    MCD::OPC_Decode, 209, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_iw_fence__
/* 1945 */    MCD::OPC_FilterValue, 128, 192, 77, 4, 0, 0, // Skip to: 1956
/* 1952 */    MCD::OPC_Decode, 225, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_iw_fence__
/* 1956 */    MCD::OPC_FilterValue, 128, 128, 78, 4, 0, 0, // Skip to: 1967
/* 1963 */    MCD::OPC_Decode, 145, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_iw_fence__
/* 1967 */    MCD::OPC_FilterValue, 128, 192, 78, 4, 0, 0, // Skip to: 1978
/* 1974 */    MCD::OPC_Decode, 193, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_iw_fence__
/* 1978 */    MCD::OPC_FilterValue, 128, 128, 79, 4, 0, 0, // Skip to: 1989
/* 1985 */    MCD::OPC_Decode, 161, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_iw_fence__
/* 1989 */    MCD::OPC_FilterValue, 128, 192, 79, 4, 0, 0, // Skip to: 2000
/* 1996 */    MCD::OPC_Decode, 177, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__
/* 2000 */    MCD::OPC_FilterValue, 128, 128, 80, 4, 0, 0, // Skip to: 2011
/* 2007 */    MCD::OPC_Decode, 239, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_ir_fence__
/* 2011 */    MCD::OPC_FilterValue, 128, 192, 80, 4, 0, 0, // Skip to: 2022
/* 2018 */    MCD::OPC_Decode, 223, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_ir_fence__
/* 2022 */    MCD::OPC_FilterValue, 128, 128, 81, 4, 0, 0, // Skip to: 2033
/* 2029 */    MCD::OPC_Decode, 191, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_ir_fence__
/* 2033 */    MCD::OPC_FilterValue, 128, 192, 81, 4, 0, 0, // Skip to: 2044
/* 2040 */    MCD::OPC_Decode, 207, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_ir_fence__
/* 2044 */    MCD::OPC_FilterValue, 128, 128, 82, 4, 0, 0, // Skip to: 2055
/* 2051 */    MCD::OPC_Decode, 255, 10, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_ir_fence__
/* 2055 */    MCD::OPC_FilterValue, 128, 192, 82, 4, 0, 0, // Skip to: 2066
/* 2062 */    MCD::OPC_Decode, 175, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_ir_fence__
/* 2066 */    MCD::OPC_FilterValue, 128, 128, 83, 4, 0, 0, // Skip to: 2077
/* 2073 */    MCD::OPC_Decode, 143, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_ir_fence__
/* 2077 */    MCD::OPC_FilterValue, 128, 192, 83, 4, 0, 0, // Skip to: 2088
/* 2084 */    MCD::OPC_Decode, 159, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_ir_fence__
/* 2088 */    MCD::OPC_FilterValue, 128, 128, 84, 4, 0, 0, // Skip to: 2099
/* 2095 */    MCD::OPC_Decode, 255, 9, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_ir_fence__
/* 2099 */    MCD::OPC_FilterValue, 128, 192, 84, 4, 0, 0, // Skip to: 2110
/* 2106 */    MCD::OPC_Decode, 239, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_ir_fence__
/* 2110 */    MCD::OPC_FilterValue, 128, 128, 85, 4, 0, 0, // Skip to: 2121
/* 2117 */    MCD::OPC_Decode, 207, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_ir_fence__
/* 2121 */    MCD::OPC_FilterValue, 128, 192, 85, 4, 0, 0, // Skip to: 2132
/* 2128 */    MCD::OPC_Decode, 223, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_ir_fence__
/* 2132 */    MCD::OPC_FilterValue, 128, 128, 86, 4, 0, 0, // Skip to: 2143
/* 2139 */    MCD::OPC_Decode, 143, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_ir_fence__
/* 2143 */    MCD::OPC_FilterValue, 128, 192, 86, 4, 0, 0, // Skip to: 2154
/* 2150 */    MCD::OPC_Decode, 191, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_ir_fence__
/* 2154 */    MCD::OPC_FilterValue, 128, 128, 87, 4, 0, 0, // Skip to: 2165
/* 2161 */    MCD::OPC_Decode, 159, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_ir_fence__
/* 2165 */    MCD::OPC_FilterValue, 128, 192, 87, 4, 0, 0, // Skip to: 2176
/* 2172 */    MCD::OPC_Decode, 175, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__
/* 2176 */    MCD::OPC_FilterValue, 128, 128, 88, 4, 0, 0, // Skip to: 2187
/* 2183 */    MCD::OPC_Decode, 240, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_irw_fence__
/* 2187 */    MCD::OPC_FilterValue, 128, 192, 88, 4, 0, 0, // Skip to: 2198
/* 2194 */    MCD::OPC_Decode, 224, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_irw_fence__
/* 2198 */    MCD::OPC_FilterValue, 128, 128, 89, 4, 0, 0, // Skip to: 2209
/* 2205 */    MCD::OPC_Decode, 192, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_irw_fence__
/* 2209 */    MCD::OPC_FilterValue, 128, 192, 89, 4, 0, 0, // Skip to: 2220
/* 2216 */    MCD::OPC_Decode, 208, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_irw_fence__
/* 2220 */    MCD::OPC_FilterValue, 128, 128, 90, 4, 0, 0, // Skip to: 2231
/* 2227 */    MCD::OPC_Decode, 128, 11, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_irw_fence__
/* 2231 */    MCD::OPC_FilterValue, 128, 192, 90, 4, 0, 0, // Skip to: 2242
/* 2238 */    MCD::OPC_Decode, 176, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_irw_fence__
/* 2242 */    MCD::OPC_FilterValue, 128, 128, 91, 4, 0, 0, // Skip to: 2253
/* 2249 */    MCD::OPC_Decode, 144, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_irw_fence__
/* 2253 */    MCD::OPC_FilterValue, 128, 192, 91, 4, 0, 0, // Skip to: 2264
/* 2260 */    MCD::OPC_Decode, 160, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_irw_fence__
/* 2264 */    MCD::OPC_FilterValue, 128, 128, 92, 4, 0, 0, // Skip to: 2275
/* 2271 */    MCD::OPC_Decode, 128, 10, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_irw_fence__
/* 2275 */    MCD::OPC_FilterValue, 128, 192, 92, 4, 0, 0, // Skip to: 2286
/* 2282 */    MCD::OPC_Decode, 240, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_irw_fence__
/* 2286 */    MCD::OPC_FilterValue, 128, 128, 93, 4, 0, 0, // Skip to: 2297
/* 2293 */    MCD::OPC_Decode, 208, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_irw_fence__
/* 2297 */    MCD::OPC_FilterValue, 128, 192, 93, 4, 0, 0, // Skip to: 2308
/* 2304 */    MCD::OPC_Decode, 224, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_irw_fence__
/* 2308 */    MCD::OPC_FilterValue, 128, 128, 94, 4, 0, 0, // Skip to: 2319
/* 2315 */    MCD::OPC_Decode, 144, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_irw_fence__
/* 2319 */    MCD::OPC_FilterValue, 128, 192, 94, 4, 0, 0, // Skip to: 2330
/* 2326 */    MCD::OPC_Decode, 192, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_irw_fence__
/* 2330 */    MCD::OPC_FilterValue, 128, 128, 95, 4, 0, 0, // Skip to: 2341
/* 2337 */    MCD::OPC_Decode, 160, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_irw_fence__
/* 2341 */    MCD::OPC_FilterValue, 128, 192, 95, 4, 0, 0, // Skip to: 2352
/* 2348 */    MCD::OPC_Decode, 176, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__
/* 2352 */    MCD::OPC_FilterValue, 128, 128, 96, 4, 0, 0, // Skip to: 2363
/* 2359 */    MCD::OPC_Decode, 235, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_io_fence__
/* 2363 */    MCD::OPC_FilterValue, 128, 192, 96, 4, 0, 0, // Skip to: 2374
/* 2370 */    MCD::OPC_Decode, 219, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_io_fence__
/* 2374 */    MCD::OPC_FilterValue, 128, 128, 97, 4, 0, 0, // Skip to: 2385
/* 2381 */    MCD::OPC_Decode, 187, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_io_fence__
/* 2385 */    MCD::OPC_FilterValue, 128, 192, 97, 4, 0, 0, // Skip to: 2396
/* 2392 */    MCD::OPC_Decode, 203, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_io_fence__
/* 2396 */    MCD::OPC_FilterValue, 128, 128, 98, 4, 0, 0, // Skip to: 2407
/* 2403 */    MCD::OPC_Decode, 251, 10, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_io_fence__
/* 2407 */    MCD::OPC_FilterValue, 128, 192, 98, 4, 0, 0, // Skip to: 2418
/* 2414 */    MCD::OPC_Decode, 171, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_io_fence__
/* 2418 */    MCD::OPC_FilterValue, 128, 128, 99, 4, 0, 0, // Skip to: 2429
/* 2425 */    MCD::OPC_Decode, 139, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_io_fence__
/* 2429 */    MCD::OPC_FilterValue, 128, 192, 99, 4, 0, 0, // Skip to: 2440
/* 2436 */    MCD::OPC_Decode, 155, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_io_fence__
/* 2440 */    MCD::OPC_FilterValue, 128, 128, 100, 4, 0, 0, // Skip to: 2451
/* 2447 */    MCD::OPC_Decode, 251, 9, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_io_fence__
/* 2451 */    MCD::OPC_FilterValue, 128, 192, 100, 4, 0, 0, // Skip to: 2462
/* 2458 */    MCD::OPC_Decode, 235, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_io_fence__
/* 2462 */    MCD::OPC_FilterValue, 128, 128, 101, 4, 0, 0, // Skip to: 2473
/* 2469 */    MCD::OPC_Decode, 203, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_io_fence__
/* 2473 */    MCD::OPC_FilterValue, 128, 192, 101, 4, 0, 0, // Skip to: 2484
/* 2480 */    MCD::OPC_Decode, 219, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_io_fence__
/* 2484 */    MCD::OPC_FilterValue, 128, 128, 102, 4, 0, 0, // Skip to: 2495
/* 2491 */    MCD::OPC_Decode, 139, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_io_fence__
/* 2495 */    MCD::OPC_FilterValue, 128, 192, 102, 4, 0, 0, // Skip to: 2506
/* 2502 */    MCD::OPC_Decode, 187, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_io_fence__
/* 2506 */    MCD::OPC_FilterValue, 128, 128, 103, 4, 0, 0, // Skip to: 2517
/* 2513 */    MCD::OPC_Decode, 155, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_io_fence__
/* 2517 */    MCD::OPC_FilterValue, 128, 192, 103, 4, 0, 0, // Skip to: 2528
/* 2524 */    MCD::OPC_Decode, 171, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_io_fence__
/* 2528 */    MCD::OPC_FilterValue, 128, 128, 104, 4, 0, 0, // Skip to: 2539
/* 2535 */    MCD::OPC_Decode, 238, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_iow_fence__
/* 2539 */    MCD::OPC_FilterValue, 128, 192, 104, 4, 0, 0, // Skip to: 2550
/* 2546 */    MCD::OPC_Decode, 222, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_iow_fence__
/* 2550 */    MCD::OPC_FilterValue, 128, 128, 105, 4, 0, 0, // Skip to: 2561
/* 2557 */    MCD::OPC_Decode, 190, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_iow_fence__
/* 2561 */    MCD::OPC_FilterValue, 128, 192, 105, 4, 0, 0, // Skip to: 2572
/* 2568 */    MCD::OPC_Decode, 206, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_iow_fence__
/* 2572 */    MCD::OPC_FilterValue, 128, 128, 106, 4, 0, 0, // Skip to: 2583
/* 2579 */    MCD::OPC_Decode, 254, 10, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_iow_fence__
/* 2583 */    MCD::OPC_FilterValue, 128, 192, 106, 4, 0, 0, // Skip to: 2594
/* 2590 */    MCD::OPC_Decode, 174, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_iow_fence__
/* 2594 */    MCD::OPC_FilterValue, 128, 128, 107, 4, 0, 0, // Skip to: 2605
/* 2601 */    MCD::OPC_Decode, 142, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_iow_fence__
/* 2605 */    MCD::OPC_FilterValue, 128, 192, 107, 4, 0, 0, // Skip to: 2616
/* 2612 */    MCD::OPC_Decode, 158, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_iow_fence__
/* 2616 */    MCD::OPC_FilterValue, 128, 128, 108, 4, 0, 0, // Skip to: 2627
/* 2623 */    MCD::OPC_Decode, 254, 9, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_iow_fence__
/* 2627 */    MCD::OPC_FilterValue, 128, 192, 108, 4, 0, 0, // Skip to: 2638
/* 2634 */    MCD::OPC_Decode, 238, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_iow_fence__
/* 2638 */    MCD::OPC_FilterValue, 128, 128, 109, 4, 0, 0, // Skip to: 2649
/* 2645 */    MCD::OPC_Decode, 206, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_iow_fence__
/* 2649 */    MCD::OPC_FilterValue, 128, 192, 109, 4, 0, 0, // Skip to: 2660
/* 2656 */    MCD::OPC_Decode, 222, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_iow_fence__
/* 2660 */    MCD::OPC_FilterValue, 128, 128, 110, 4, 0, 0, // Skip to: 2671
/* 2667 */    MCD::OPC_Decode, 142, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_iow_fence__
/* 2671 */    MCD::OPC_FilterValue, 128, 192, 110, 4, 0, 0, // Skip to: 2682
/* 2678 */    MCD::OPC_Decode, 190, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_iow_fence__
/* 2682 */    MCD::OPC_FilterValue, 128, 128, 111, 4, 0, 0, // Skip to: 2693
/* 2689 */    MCD::OPC_Decode, 158, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_iow_fence__
/* 2693 */    MCD::OPC_FilterValue, 128, 192, 111, 4, 0, 0, // Skip to: 2704
/* 2700 */    MCD::OPC_Decode, 174, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__
/* 2704 */    MCD::OPC_FilterValue, 128, 128, 112, 4, 0, 0, // Skip to: 2715
/* 2711 */    MCD::OPC_Decode, 236, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_ior_fence__
/* 2715 */    MCD::OPC_FilterValue, 128, 192, 112, 4, 0, 0, // Skip to: 2726
/* 2722 */    MCD::OPC_Decode, 220, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_ior_fence__
/* 2726 */    MCD::OPC_FilterValue, 128, 128, 113, 4, 0, 0, // Skip to: 2737
/* 2733 */    MCD::OPC_Decode, 188, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_ior_fence__
/* 2737 */    MCD::OPC_FilterValue, 128, 192, 113, 4, 0, 0, // Skip to: 2748
/* 2744 */    MCD::OPC_Decode, 204, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_ior_fence__
/* 2748 */    MCD::OPC_FilterValue, 128, 128, 114, 4, 0, 0, // Skip to: 2759
/* 2755 */    MCD::OPC_Decode, 252, 10, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_ior_fence__
/* 2759 */    MCD::OPC_FilterValue, 128, 192, 114, 4, 0, 0, // Skip to: 2770
/* 2766 */    MCD::OPC_Decode, 172, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_ior_fence__
/* 2770 */    MCD::OPC_FilterValue, 128, 128, 115, 4, 0, 0, // Skip to: 2781
/* 2777 */    MCD::OPC_Decode, 140, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_ior_fence__
/* 2781 */    MCD::OPC_FilterValue, 128, 192, 115, 4, 0, 0, // Skip to: 2792
/* 2788 */    MCD::OPC_Decode, 156, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_ior_fence__
/* 2792 */    MCD::OPC_FilterValue, 128, 128, 116, 4, 0, 0, // Skip to: 2803
/* 2799 */    MCD::OPC_Decode, 252, 9, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_ior_fence__
/* 2803 */    MCD::OPC_FilterValue, 128, 192, 116, 4, 0, 0, // Skip to: 2814
/* 2810 */    MCD::OPC_Decode, 236, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_ior_fence__
/* 2814 */    MCD::OPC_FilterValue, 128, 128, 117, 4, 0, 0, // Skip to: 2825
/* 2821 */    MCD::OPC_Decode, 204, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_ior_fence__
/* 2825 */    MCD::OPC_FilterValue, 128, 192, 117, 4, 0, 0, // Skip to: 2836
/* 2832 */    MCD::OPC_Decode, 220, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_ior_fence__
/* 2836 */    MCD::OPC_FilterValue, 128, 128, 118, 4, 0, 0, // Skip to: 2847
/* 2843 */    MCD::OPC_Decode, 140, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_ior_fence__
/* 2847 */    MCD::OPC_FilterValue, 128, 192, 118, 4, 0, 0, // Skip to: 2858
/* 2854 */    MCD::OPC_Decode, 188, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_ior_fence__
/* 2858 */    MCD::OPC_FilterValue, 128, 128, 119, 4, 0, 0, // Skip to: 2869
/* 2865 */    MCD::OPC_Decode, 156, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_ior_fence__
/* 2869 */    MCD::OPC_FilterValue, 128, 192, 119, 4, 0, 0, // Skip to: 2880
/* 2876 */    MCD::OPC_Decode, 172, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__
/* 2880 */    MCD::OPC_FilterValue, 128, 128, 120, 4, 0, 0, // Skip to: 2891
/* 2887 */    MCD::OPC_Decode, 237, 9, 4, // Opcode: i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__
/* 2891 */    MCD::OPC_FilterValue, 128, 192, 120, 4, 0, 0, // Skip to: 2902
/* 2898 */    MCD::OPC_Decode, 221, 11, 4, // Opcode: i_fence__opc_fence__opc_w_fence__opc_iorw_fence__
/* 2902 */    MCD::OPC_FilterValue, 128, 128, 121, 4, 0, 0, // Skip to: 2913
/* 2909 */    MCD::OPC_Decode, 189, 11, 4, // Opcode: i_fence__opc_fence__opc_r_fence__opc_iorw_fence__
/* 2913 */    MCD::OPC_FilterValue, 128, 192, 121, 4, 0, 0, // Skip to: 2924
/* 2920 */    MCD::OPC_Decode, 205, 11, 4, // Opcode: i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__
/* 2924 */    MCD::OPC_FilterValue, 128, 128, 122, 4, 0, 0, // Skip to: 2935
/* 2931 */    MCD::OPC_Decode, 253, 10, 4, // Opcode: i_fence__opc_fence__opc_o_fence__opc_iorw_fence__
/* 2935 */    MCD::OPC_FilterValue, 128, 192, 122, 4, 0, 0, // Skip to: 2946
/* 2942 */    MCD::OPC_Decode, 173, 11, 4, // Opcode: i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__
/* 2946 */    MCD::OPC_FilterValue, 128, 128, 123, 4, 0, 0, // Skip to: 2957
/* 2953 */    MCD::OPC_Decode, 141, 11, 4, // Opcode: i_fence__opc_fence__opc_or_fence__opc_iorw_fence__
/* 2957 */    MCD::OPC_FilterValue, 128, 192, 123, 4, 0, 0, // Skip to: 2968
/* 2964 */    MCD::OPC_Decode, 157, 11, 4, // Opcode: i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__
/* 2968 */    MCD::OPC_FilterValue, 128, 128, 124, 4, 0, 0, // Skip to: 2979
/* 2975 */    MCD::OPC_Decode, 253, 9, 4, // Opcode: i_fence__opc_fence__opc_i_fence__opc_iorw_fence__
/* 2979 */    MCD::OPC_FilterValue, 128, 192, 124, 4, 0, 0, // Skip to: 2990
/* 2986 */    MCD::OPC_Decode, 237, 10, 4, // Opcode: i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__
/* 2990 */    MCD::OPC_FilterValue, 128, 128, 125, 4, 0, 0, // Skip to: 3001
/* 2997 */    MCD::OPC_Decode, 205, 10, 4, // Opcode: i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__
/* 3001 */    MCD::OPC_FilterValue, 128, 192, 125, 4, 0, 0, // Skip to: 3012
/* 3008 */    MCD::OPC_Decode, 221, 10, 4, // Opcode: i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__
/* 3012 */    MCD::OPC_FilterValue, 128, 128, 126, 4, 0, 0, // Skip to: 3023
/* 3019 */    MCD::OPC_Decode, 141, 10, 4, // Opcode: i_fence__opc_fence__opc_io_fence__opc_iorw_fence__
/* 3023 */    MCD::OPC_FilterValue, 128, 192, 126, 4, 0, 0, // Skip to: 3034
/* 3030 */    MCD::OPC_Decode, 189, 10, 4, // Opcode: i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__
/* 3034 */    MCD::OPC_FilterValue, 128, 128, 127, 4, 0, 0, // Skip to: 3045
/* 3041 */    MCD::OPC_Decode, 157, 10, 4, // Opcode: i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__
/* 3045 */    MCD::OPC_FilterValue, 128, 192, 127, 10, 11, 0, // Skip to: 5878
/* 3052 */    MCD::OPC_Decode, 173, 10, 4, // Opcode: i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__
/* 3056 */    MCD::OPC_FilterValue, 19, 150, 1, 0, // Skip to: 3467
/* 3061 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 3064 */    MCD::OPC_FilterValue, 0, 38, 0, 0, // Skip to: 3107
/* 3069 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3072 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3092
/* 3077 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3088
/* 3084 */    MCD::OPC_Decode, 153, 3, 0, // Opcode: i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__
/* 3088 */    MCD::OPC_Decode, 159, 3, 1, // Opcode: i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__
/* 3092 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3103
/* 3099 */    MCD::OPC_Decode, 171, 3, 2, // Opcode: i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__
/* 3103 */    MCD::OPC_Decode, 177, 3, 3, // Opcode: i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__
/* 3107 */    MCD::OPC_FilterValue, 1, 46, 0, 0, // Skip to: 3158
/* 3112 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 3115 */    MCD::OPC_FilterValue, 0, 198, 10, 0, // Skip to: 5878
/* 3120 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3123 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3143
/* 3128 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3139
/* 3135 */    MCD::OPC_Decode, 185, 4, 5, // Opcode: i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__
/* 3139 */    MCD::OPC_Decode, 187, 4, 6, // Opcode: i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__
/* 3143 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3154
/* 3150 */    MCD::OPC_Decode, 191, 4, 7, // Opcode: i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__
/* 3154 */    MCD::OPC_Decode, 193, 4, 8, // Opcode: i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__
/* 3158 */    MCD::OPC_FilterValue, 2, 38, 0, 0, // Skip to: 3201
/* 3163 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3166 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3186
/* 3171 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3182
/* 3178 */    MCD::OPC_Decode, 234, 3, 0, // Opcode: i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__
/* 3182 */    MCD::OPC_Decode, 240, 3, 1, // Opcode: i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__
/* 3186 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3197
/* 3193 */    MCD::OPC_Decode, 252, 3, 2, // Opcode: i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__
/* 3197 */    MCD::OPC_Decode, 130, 4, 3, // Opcode: i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__
/* 3201 */    MCD::OPC_FilterValue, 3, 38, 0, 0, // Skip to: 3244
/* 3206 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3209 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3229
/* 3214 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3225
/* 3221 */    MCD::OPC_Decode, 133, 4, 0, // Opcode: i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__
/* 3225 */    MCD::OPC_Decode, 139, 4, 1, // Opcode: i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__
/* 3229 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3240
/* 3236 */    MCD::OPC_Decode, 151, 4, 2, // Opcode: i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__
/* 3240 */    MCD::OPC_Decode, 157, 4, 3, // Opcode: i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__
/* 3244 */    MCD::OPC_FilterValue, 4, 38, 0, 0, // Skip to: 3287
/* 3249 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3252 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3272
/* 3257 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3268
/* 3264 */    MCD::OPC_Decode, 160, 4, 0, // Opcode: i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__
/* 3268 */    MCD::OPC_Decode, 166, 4, 1, // Opcode: i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__
/* 3272 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3283
/* 3279 */    MCD::OPC_Decode, 178, 4, 2, // Opcode: i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__
/* 3283 */    MCD::OPC_Decode, 184, 4, 3, // Opcode: i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__
/* 3287 */    MCD::OPC_FilterValue, 5, 89, 0, 0, // Skip to: 3381
/* 3292 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 3295 */    MCD::OPC_FilterValue, 0, 38, 0, 0, // Skip to: 3338
/* 3300 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3303 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3323
/* 3308 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3319
/* 3315 */    MCD::OPC_Decode, 203, 4, 5, // Opcode: i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__
/* 3319 */    MCD::OPC_Decode, 205, 4, 6, // Opcode: i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__
/* 3323 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3334
/* 3330 */    MCD::OPC_Decode, 209, 4, 7, // Opcode: i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__
/* 3334 */    MCD::OPC_Decode, 211, 4, 8, // Opcode: i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__
/* 3338 */    MCD::OPC_FilterValue, 32, 231, 9, 0, // Skip to: 5878
/* 3343 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3346 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3366
/* 3351 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3362
/* 3358 */    MCD::OPC_Decode, 194, 4, 5, // Opcode: i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__
/* 3362 */    MCD::OPC_Decode, 196, 4, 6, // Opcode: i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__
/* 3366 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3377
/* 3373 */    MCD::OPC_Decode, 200, 4, 7, // Opcode: i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__
/* 3377 */    MCD::OPC_Decode, 202, 4, 8, // Opcode: i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__
/* 3381 */    MCD::OPC_FilterValue, 6, 38, 0, 0, // Skip to: 3424
/* 3386 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3389 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3409
/* 3394 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3405
/* 3401 */    MCD::OPC_Decode, 207, 3, 0, // Opcode: i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__
/* 3405 */    MCD::OPC_Decode, 213, 3, 1, // Opcode: i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__
/* 3409 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3420
/* 3416 */    MCD::OPC_Decode, 225, 3, 2, // Opcode: i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__
/* 3420 */    MCD::OPC_Decode, 231, 3, 3, // Opcode: i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__
/* 3424 */    MCD::OPC_FilterValue, 7, 145, 9, 0, // Skip to: 5878
/* 3429 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3432 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 3452
/* 3437 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3448
/* 3444 */    MCD::OPC_Decode, 180, 3, 0, // Opcode: i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__
/* 3448 */    MCD::OPC_Decode, 186, 3, 1, // Opcode: i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__
/* 3452 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3463
/* 3459 */    MCD::OPC_Decode, 198, 3, 2, // Opcode: i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__
/* 3463 */    MCD::OPC_Decode, 204, 3, 3, // Opcode: i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__
/* 3467 */    MCD::OPC_FilterValue, 23, 15, 0, 0, // Skip to: 3487
/* 3472 */    MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 3483
/* 3479 */    MCD::OPC_Decode, 211, 2, 9, // Opcode: i_auipc__opc_auipc__reg0__imm20_s12__
/* 3483 */    MCD::OPC_Decode, 213, 2, 10, // Opcode: i_auipc__opc_auipc__regs__imm20_s12__
/* 3487 */    MCD::OPC_FilterValue, 35, 129, 0, 0, // Skip to: 3621
/* 3492 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 3495 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 3537
/* 3500 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3511
/* 3507 */    MCD::OPC_Decode, 235, 14, 11, // Opcode: i_store__opc_storeb__reg0__simm12_simple__reg0__
/* 3511 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3522
/* 3518 */    MCD::OPC_Decode, 237, 14, 12, // Opcode: i_store__opc_storeb__reg0__simm12_simple__regs__
/* 3522 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3533
/* 3529 */    MCD::OPC_Decode, 253, 14, 13, // Opcode: i_store__opc_storeb__regs__simm12_simple__reg0__
/* 3533 */    MCD::OPC_Decode, 255, 14, 14, // Opcode: i_store__opc_storeb__regs__simm12_simple__regs__
/* 3537 */    MCD::OPC_FilterValue, 1, 37, 0, 0, // Skip to: 3579
/* 3542 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3553
/* 3549 */    MCD::OPC_Decode, 134, 15, 11, // Opcode: i_store__opc_storeh__reg0__simm12_simple__reg0__
/* 3553 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3564
/* 3560 */    MCD::OPC_Decode, 136, 15, 12, // Opcode: i_store__opc_storeh__reg0__simm12_simple__regs__
/* 3564 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3575
/* 3571 */    MCD::OPC_Decode, 152, 15, 13, // Opcode: i_store__opc_storeh__regs__simm12_simple__reg0__
/* 3575 */    MCD::OPC_Decode, 154, 15, 14, // Opcode: i_store__opc_storeh__regs__simm12_simple__regs__
/* 3579 */    MCD::OPC_FilterValue, 2, 246, 8, 0, // Skip to: 5878
/* 3584 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3595
/* 3591 */    MCD::OPC_Decode, 161, 15, 11, // Opcode: i_store__opc_storew__reg0__simm12_simple__reg0__
/* 3595 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3606
/* 3602 */    MCD::OPC_Decode, 163, 15, 12, // Opcode: i_store__opc_storew__reg0__simm12_simple__regs__
/* 3606 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3617
/* 3613 */    MCD::OPC_Decode, 179, 15, 13, // Opcode: i_store__opc_storew__regs__simm12_simple__reg0__
/* 3617 */    MCD::OPC_Decode, 181, 15, 14, // Opcode: i_store__opc_storew__regs__simm12_simple__regs__
/* 3621 */    MCD::OPC_FilterValue, 43, 156, 2, 0, // Skip to: 4294
/* 3626 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 3629 */    MCD::OPC_FilterValue, 0, 90, 0, 0, // Skip to: 3724
/* 3634 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 3637 */    MCD::OPC_FilterValue, 0, 188, 8, 0, // Skip to: 5878
/* 3642 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3645 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 3687
/* 3650 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3661
/* 3657 */    MCD::OPC_Decode, 172, 8, 4, // Opcode: i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__
/* 3661 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3672
/* 3668 */    MCD::OPC_Decode, 174, 8, 15, // Opcode: i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__regs__
/* 3672 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3683
/* 3679 */    MCD::OPC_Decode, 178, 8, 16, // Opcode: i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0__
/* 3683 */    MCD::OPC_Decode, 180, 8, 17, // Opcode: i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__regs__
/* 3687 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3698
/* 3694 */    MCD::OPC_Decode, 190, 8, 18, // Opcode: i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__
/* 3698 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3709
/* 3705 */    MCD::OPC_Decode, 192, 8, 19, // Opcode: i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__regs__
/* 3709 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3720
/* 3716 */    MCD::OPC_Decode, 196, 8, 20, // Opcode: i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0__
/* 3720 */    MCD::OPC_Decode, 198, 8, 21, // Opcode: i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__
/* 3724 */    MCD::OPC_FilterValue, 1, 90, 0, 0, // Skip to: 3819
/* 3729 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 3732 */    MCD::OPC_FilterValue, 0, 93, 8, 0, // Skip to: 5878
/* 3737 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3740 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 3782
/* 3745 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3756
/* 3752 */    MCD::OPC_Decode, 199, 8, 4, // Opcode: i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__
/* 3756 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3767
/* 3763 */    MCD::OPC_Decode, 201, 8, 15, // Opcode: i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__regs__
/* 3767 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3778
/* 3774 */    MCD::OPC_Decode, 205, 8, 16, // Opcode: i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0__
/* 3778 */    MCD::OPC_Decode, 207, 8, 17, // Opcode: i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__regs__
/* 3782 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3793
/* 3789 */    MCD::OPC_Decode, 217, 8, 18, // Opcode: i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__
/* 3793 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3804
/* 3800 */    MCD::OPC_Decode, 219, 8, 19, // Opcode: i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__regs__
/* 3804 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3815
/* 3811 */    MCD::OPC_Decode, 223, 8, 20, // Opcode: i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0__
/* 3815 */    MCD::OPC_Decode, 225, 8, 22, // Opcode: i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__
/* 3819 */    MCD::OPC_FilterValue, 2, 90, 0, 0, // Skip to: 3914
/* 3824 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 3827 */    MCD::OPC_FilterValue, 0, 254, 7, 0, // Skip to: 5878
/* 3832 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3835 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 3877
/* 3840 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3851
/* 3847 */    MCD::OPC_Decode, 226, 8, 4, // Opcode: i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__
/* 3851 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3862
/* 3858 */    MCD::OPC_Decode, 228, 8, 15, // Opcode: i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__
/* 3862 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3873
/* 3869 */    MCD::OPC_Decode, 232, 8, 16, // Opcode: i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__
/* 3873 */    MCD::OPC_Decode, 234, 8, 23, // Opcode: i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__
/* 3877 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3888
/* 3884 */    MCD::OPC_Decode, 244, 8, 24, // Opcode: i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__
/* 3888 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3899
/* 3895 */    MCD::OPC_Decode, 246, 8, 25, // Opcode: i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__
/* 3899 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3910
/* 3906 */    MCD::OPC_Decode, 250, 8, 26, // Opcode: i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__
/* 3910 */    MCD::OPC_Decode, 252, 8, 22, // Opcode: i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__
/* 3914 */    MCD::OPC_FilterValue, 3, 90, 0, 0, // Skip to: 4009
/* 3919 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 3922 */    MCD::OPC_FilterValue, 0, 159, 7, 0, // Skip to: 5878
/* 3927 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 3930 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 3972
/* 3935 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3946
/* 3942 */    MCD::OPC_Decode, 253, 8, 4, // Opcode: i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__
/* 3946 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3957
/* 3953 */    MCD::OPC_Decode, 255, 8, 15, // Opcode: i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__
/* 3957 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 3968
/* 3964 */    MCD::OPC_Decode, 131, 9, 16, // Opcode: i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__
/* 3968 */    MCD::OPC_Decode, 133, 9, 17, // Opcode: i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__
/* 3972 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 3983
/* 3979 */    MCD::OPC_Decode, 143, 9, 24, // Opcode: i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__
/* 3983 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 3994
/* 3990 */    MCD::OPC_Decode, 145, 9, 27, // Opcode: i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__
/* 3994 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4005
/* 4001 */    MCD::OPC_Decode, 149, 9, 28, // Opcode: i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__
/* 4005 */    MCD::OPC_Decode, 151, 9, 29, // Opcode: i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__
/* 4009 */    MCD::OPC_FilterValue, 4, 90, 0, 0, // Skip to: 4104
/* 4014 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4017 */    MCD::OPC_FilterValue, 0, 64, 7, 0, // Skip to: 5878
/* 4022 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4025 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4067
/* 4030 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4041
/* 4037 */    MCD::OPC_Decode, 152, 9, 4, // Opcode: i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__
/* 4041 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4052
/* 4048 */    MCD::OPC_Decode, 154, 9, 15, // Opcode: i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__regs__
/* 4052 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4063
/* 4059 */    MCD::OPC_Decode, 158, 9, 16, // Opcode: i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0__
/* 4063 */    MCD::OPC_Decode, 160, 9, 17, // Opcode: i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__regs__
/* 4067 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4078
/* 4074 */    MCD::OPC_Decode, 170, 9, 18, // Opcode: i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__
/* 4078 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4089
/* 4085 */    MCD::OPC_Decode, 172, 9, 19, // Opcode: i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__regs__
/* 4089 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4100
/* 4096 */    MCD::OPC_Decode, 176, 9, 20, // Opcode: i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__
/* 4100 */    MCD::OPC_Decode, 178, 9, 30, // Opcode: i_ext_hackaton__opc_hackaton_custom_e__regs__regs__regs__
/* 4104 */    MCD::OPC_FilterValue, 5, 90, 0, 0, // Skip to: 4199
/* 4109 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4112 */    MCD::OPC_FilterValue, 0, 225, 6, 0, // Skip to: 5878
/* 4117 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4120 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4162
/* 4125 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4136
/* 4132 */    MCD::OPC_Decode, 179, 9, 4, // Opcode: i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__reg0__
/* 4136 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4147
/* 4143 */    MCD::OPC_Decode, 181, 9, 15, // Opcode: i_ext_hackaton__opc_hackaton_custom_f__reg0__reg0__regs__
/* 4147 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4158
/* 4154 */    MCD::OPC_Decode, 185, 9, 16, // Opcode: i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__reg0__
/* 4158 */    MCD::OPC_Decode, 187, 9, 23, // Opcode: i_ext_hackaton__opc_hackaton_custom_f__reg0__regs__regs__
/* 4162 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4173
/* 4169 */    MCD::OPC_Decode, 197, 9, 24, // Opcode: i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__reg0__
/* 4173 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4184
/* 4180 */    MCD::OPC_Decode, 199, 9, 27, // Opcode: i_ext_hackaton__opc_hackaton_custom_f__regs__reg0__regs__
/* 4184 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4195
/* 4191 */    MCD::OPC_Decode, 203, 9, 28, // Opcode: i_ext_hackaton__opc_hackaton_custom_f__regs__regs__reg0__
/* 4195 */    MCD::OPC_Decode, 205, 9, 29, // Opcode: i_ext_hackaton__opc_hackaton_custom_f__regs__regs__regs__
/* 4199 */    MCD::OPC_FilterValue, 6, 138, 6, 0, // Skip to: 5878
/* 4204 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4207 */    MCD::OPC_FilterValue, 0, 130, 6, 0, // Skip to: 5878
/* 4212 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4215 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4257
/* 4220 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4231
/* 4227 */    MCD::OPC_Decode, 206, 9, 4, // Opcode: i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__reg0__
/* 4231 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4242
/* 4238 */    MCD::OPC_Decode, 208, 9, 15, // Opcode: i_ext_hackaton__opc_hackaton_custom_g__reg0__reg0__regs__
/* 4242 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4253
/* 4249 */    MCD::OPC_Decode, 212, 9, 16, // Opcode: i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__reg0__
/* 4253 */    MCD::OPC_Decode, 214, 9, 17, // Opcode: i_ext_hackaton__opc_hackaton_custom_g__reg0__regs__regs__
/* 4257 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4268
/* 4264 */    MCD::OPC_Decode, 224, 9, 18, // Opcode: i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__reg0__
/* 4268 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4279
/* 4275 */    MCD::OPC_Decode, 226, 9, 19, // Opcode: i_ext_hackaton__opc_hackaton_custom_g__regs__reg0__regs__
/* 4279 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4290
/* 4286 */    MCD::OPC_Decode, 230, 9, 20, // Opcode: i_ext_hackaton__opc_hackaton_custom_g__regs__regs__reg0__
/* 4290 */    MCD::OPC_Decode, 232, 9, 30, // Opcode: i_ext_hackaton__opc_hackaton_custom_g__regs__regs__regs__
/* 4294 */    MCD::OPC_FilterValue, 51, 169, 3, 0, // Skip to: 5236
/* 4299 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 4302 */    MCD::OPC_FilterValue, 0, 177, 0, 0, // Skip to: 4484
/* 4307 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4310 */    MCD::OPC_FilterValue, 0, 82, 0, 0, // Skip to: 4397
/* 4315 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4318 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4360
/* 4323 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4334
/* 4330 */    MCD::OPC_Decode, 239, 4, 4, // Opcode: i_comp_3reg__opc_add__reg0__reg0__reg0__
/* 4334 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4345
/* 4341 */    MCD::OPC_Decode, 241, 4, 15, // Opcode: i_comp_3reg__opc_add__reg0__reg0__regs__
/* 4345 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4356
/* 4352 */    MCD::OPC_Decode, 245, 4, 16, // Opcode: i_comp_3reg__opc_add__reg0__regs__reg0__
/* 4356 */    MCD::OPC_Decode, 247, 4, 17, // Opcode: i_comp_3reg__opc_add__reg0__regs__regs__
/* 4360 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4371
/* 4367 */    MCD::OPC_Decode, 129, 5, 18, // Opcode: i_comp_3reg__opc_add__regs__reg0__reg0__
/* 4371 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4382
/* 4378 */    MCD::OPC_Decode, 131, 5, 19, // Opcode: i_comp_3reg__opc_add__regs__reg0__regs__
/* 4382 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4393
/* 4389 */    MCD::OPC_Decode, 135, 5, 20, // Opcode: i_comp_3reg__opc_add__regs__regs__reg0__
/* 4393 */    MCD::OPC_Decode, 137, 5, 21, // Opcode: i_comp_3reg__opc_add__regs__regs__regs__
/* 4397 */    MCD::OPC_FilterValue, 32, 196, 5, 0, // Skip to: 5878
/* 4402 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4405 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4447
/* 4410 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4421
/* 4417 */    MCD::OPC_Decode, 199, 6, 4, // Opcode: i_comp_3reg__opc_sub__reg0__reg0__reg0__
/* 4421 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4432
/* 4428 */    MCD::OPC_Decode, 201, 6, 15, // Opcode: i_comp_3reg__opc_sub__reg0__reg0__regs__
/* 4432 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4443
/* 4439 */    MCD::OPC_Decode, 205, 6, 16, // Opcode: i_comp_3reg__opc_sub__reg0__regs__reg0__
/* 4443 */    MCD::OPC_Decode, 207, 6, 17, // Opcode: i_comp_3reg__opc_sub__reg0__regs__regs__
/* 4447 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4458
/* 4454 */    MCD::OPC_Decode, 217, 6, 18, // Opcode: i_comp_3reg__opc_sub__regs__reg0__reg0__
/* 4458 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4469
/* 4465 */    MCD::OPC_Decode, 219, 6, 19, // Opcode: i_comp_3reg__opc_sub__regs__reg0__regs__
/* 4469 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4480
/* 4476 */    MCD::OPC_Decode, 223, 6, 20, // Opcode: i_comp_3reg__opc_sub__regs__regs__reg0__
/* 4480 */    MCD::OPC_Decode, 225, 6, 30, // Opcode: i_comp_3reg__opc_sub__regs__regs__regs__
/* 4484 */    MCD::OPC_FilterValue, 1, 90, 0, 0, // Skip to: 4579
/* 4489 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4492 */    MCD::OPC_FilterValue, 0, 101, 5, 0, // Skip to: 5878
/* 4497 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4500 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4542
/* 4505 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4516
/* 4512 */    MCD::OPC_Decode, 192, 5, 4, // Opcode: i_comp_3reg__opc_sll__reg0__reg0__reg0__
/* 4516 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4527
/* 4523 */    MCD::OPC_Decode, 194, 5, 15, // Opcode: i_comp_3reg__opc_sll__reg0__reg0__regs__
/* 4527 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4538
/* 4534 */    MCD::OPC_Decode, 198, 5, 16, // Opcode: i_comp_3reg__opc_sll__reg0__regs__reg0__
/* 4538 */    MCD::OPC_Decode, 200, 5, 17, // Opcode: i_comp_3reg__opc_sll__reg0__regs__regs__
/* 4542 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4553
/* 4549 */    MCD::OPC_Decode, 210, 5, 18, // Opcode: i_comp_3reg__opc_sll__regs__reg0__reg0__
/* 4553 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4564
/* 4560 */    MCD::OPC_Decode, 212, 5, 19, // Opcode: i_comp_3reg__opc_sll__regs__reg0__regs__
/* 4564 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4575
/* 4571 */    MCD::OPC_Decode, 216, 5, 20, // Opcode: i_comp_3reg__opc_sll__regs__regs__reg0__
/* 4575 */    MCD::OPC_Decode, 218, 5, 30, // Opcode: i_comp_3reg__opc_sll__regs__regs__regs__
/* 4579 */    MCD::OPC_FilterValue, 2, 90, 0, 0, // Skip to: 4674
/* 4584 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4587 */    MCD::OPC_FilterValue, 0, 6, 5, 0, // Skip to: 5878
/* 4592 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4595 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4637
/* 4600 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4611
/* 4607 */    MCD::OPC_Decode, 219, 5, 4, // Opcode: i_comp_3reg__opc_slt__reg0__reg0__reg0__
/* 4611 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4622
/* 4618 */    MCD::OPC_Decode, 221, 5, 15, // Opcode: i_comp_3reg__opc_slt__reg0__reg0__regs__
/* 4622 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4633
/* 4629 */    MCD::OPC_Decode, 225, 5, 16, // Opcode: i_comp_3reg__opc_slt__reg0__regs__reg0__
/* 4633 */    MCD::OPC_Decode, 227, 5, 17, // Opcode: i_comp_3reg__opc_slt__reg0__regs__regs__
/* 4637 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4648
/* 4644 */    MCD::OPC_Decode, 237, 5, 18, // Opcode: i_comp_3reg__opc_slt__regs__reg0__reg0__
/* 4648 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4659
/* 4655 */    MCD::OPC_Decode, 239, 5, 19, // Opcode: i_comp_3reg__opc_slt__regs__reg0__regs__
/* 4659 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4670
/* 4666 */    MCD::OPC_Decode, 243, 5, 20, // Opcode: i_comp_3reg__opc_slt__regs__regs__reg0__
/* 4670 */    MCD::OPC_Decode, 245, 5, 30, // Opcode: i_comp_3reg__opc_slt__regs__regs__regs__
/* 4674 */    MCD::OPC_FilterValue, 3, 90, 0, 0, // Skip to: 4769
/* 4679 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4682 */    MCD::OPC_FilterValue, 0, 167, 4, 0, // Skip to: 5878
/* 4687 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4690 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4732
/* 4695 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4706
/* 4702 */    MCD::OPC_Decode, 246, 5, 4, // Opcode: i_comp_3reg__opc_sltu__reg0__reg0__reg0__
/* 4706 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4717
/* 4713 */    MCD::OPC_Decode, 248, 5, 15, // Opcode: i_comp_3reg__opc_sltu__reg0__reg0__regs__
/* 4717 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4728
/* 4724 */    MCD::OPC_Decode, 252, 5, 16, // Opcode: i_comp_3reg__opc_sltu__reg0__regs__reg0__
/* 4728 */    MCD::OPC_Decode, 254, 5, 17, // Opcode: i_comp_3reg__opc_sltu__reg0__regs__regs__
/* 4732 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4743
/* 4739 */    MCD::OPC_Decode, 136, 6, 18, // Opcode: i_comp_3reg__opc_sltu__regs__reg0__reg0__
/* 4743 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4754
/* 4750 */    MCD::OPC_Decode, 138, 6, 19, // Opcode: i_comp_3reg__opc_sltu__regs__reg0__regs__
/* 4754 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4765
/* 4761 */    MCD::OPC_Decode, 142, 6, 20, // Opcode: i_comp_3reg__opc_sltu__regs__regs__reg0__
/* 4765 */    MCD::OPC_Decode, 144, 6, 30, // Opcode: i_comp_3reg__opc_sltu__regs__regs__regs__
/* 4769 */    MCD::OPC_FilterValue, 4, 90, 0, 0, // Skip to: 4864
/* 4774 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4777 */    MCD::OPC_FilterValue, 0, 72, 4, 0, // Skip to: 5878
/* 4782 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4785 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4827
/* 4790 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4801
/* 4797 */    MCD::OPC_Decode, 226, 6, 4, // Opcode: i_comp_3reg__opc_xor__reg0__reg0__reg0__
/* 4801 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4812
/* 4808 */    MCD::OPC_Decode, 228, 6, 15, // Opcode: i_comp_3reg__opc_xor__reg0__reg0__regs__
/* 4812 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4823
/* 4819 */    MCD::OPC_Decode, 232, 6, 16, // Opcode: i_comp_3reg__opc_xor__reg0__regs__reg0__
/* 4823 */    MCD::OPC_Decode, 234, 6, 17, // Opcode: i_comp_3reg__opc_xor__reg0__regs__regs__
/* 4827 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4838
/* 4834 */    MCD::OPC_Decode, 244, 6, 18, // Opcode: i_comp_3reg__opc_xor__regs__reg0__reg0__
/* 4838 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4849
/* 4845 */    MCD::OPC_Decode, 246, 6, 19, // Opcode: i_comp_3reg__opc_xor__regs__reg0__regs__
/* 4849 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4860
/* 4856 */    MCD::OPC_Decode, 250, 6, 20, // Opcode: i_comp_3reg__opc_xor__regs__regs__reg0__
/* 4860 */    MCD::OPC_Decode, 252, 6, 21, // Opcode: i_comp_3reg__opc_xor__regs__regs__regs__
/* 4864 */    MCD::OPC_FilterValue, 5, 177, 0, 0, // Skip to: 5046
/* 4869 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 4872 */    MCD::OPC_FilterValue, 0, 82, 0, 0, // Skip to: 4959
/* 4877 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4880 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 4922
/* 4885 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4896
/* 4892 */    MCD::OPC_Decode, 172, 6, 4, // Opcode: i_comp_3reg__opc_srl__reg0__reg0__reg0__
/* 4896 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4907
/* 4903 */    MCD::OPC_Decode, 174, 6, 15, // Opcode: i_comp_3reg__opc_srl__reg0__reg0__regs__
/* 4907 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4918
/* 4914 */    MCD::OPC_Decode, 178, 6, 16, // Opcode: i_comp_3reg__opc_srl__reg0__regs__reg0__
/* 4918 */    MCD::OPC_Decode, 180, 6, 17, // Opcode: i_comp_3reg__opc_srl__reg0__regs__regs__
/* 4922 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4933
/* 4929 */    MCD::OPC_Decode, 190, 6, 18, // Opcode: i_comp_3reg__opc_srl__regs__reg0__reg0__
/* 4933 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4944
/* 4940 */    MCD::OPC_Decode, 192, 6, 19, // Opcode: i_comp_3reg__opc_srl__regs__reg0__regs__
/* 4944 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 4955
/* 4951 */    MCD::OPC_Decode, 196, 6, 20, // Opcode: i_comp_3reg__opc_srl__regs__regs__reg0__
/* 4955 */    MCD::OPC_Decode, 198, 6, 30, // Opcode: i_comp_3reg__opc_srl__regs__regs__regs__
/* 4959 */    MCD::OPC_FilterValue, 32, 146, 3, 0, // Skip to: 5878
/* 4964 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 4967 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 5009
/* 4972 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 4983
/* 4979 */    MCD::OPC_Decode, 145, 6, 4, // Opcode: i_comp_3reg__opc_sra__reg0__reg0__reg0__
/* 4983 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 4994
/* 4990 */    MCD::OPC_Decode, 147, 6, 15, // Opcode: i_comp_3reg__opc_sra__reg0__reg0__regs__
/* 4994 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5005
/* 5001 */    MCD::OPC_Decode, 151, 6, 16, // Opcode: i_comp_3reg__opc_sra__reg0__regs__reg0__
/* 5005 */    MCD::OPC_Decode, 153, 6, 17, // Opcode: i_comp_3reg__opc_sra__reg0__regs__regs__
/* 5009 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5020
/* 5016 */    MCD::OPC_Decode, 163, 6, 18, // Opcode: i_comp_3reg__opc_sra__regs__reg0__reg0__
/* 5020 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5031
/* 5027 */    MCD::OPC_Decode, 165, 6, 19, // Opcode: i_comp_3reg__opc_sra__regs__reg0__regs__
/* 5031 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5042
/* 5038 */    MCD::OPC_Decode, 169, 6, 20, // Opcode: i_comp_3reg__opc_sra__regs__regs__reg0__
/* 5042 */    MCD::OPC_Decode, 171, 6, 30, // Opcode: i_comp_3reg__opc_sra__regs__regs__regs__
/* 5046 */    MCD::OPC_FilterValue, 6, 90, 0, 0, // Skip to: 5141
/* 5051 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 5054 */    MCD::OPC_FilterValue, 0, 51, 3, 0, // Skip to: 5878
/* 5059 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 5062 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 5104
/* 5067 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5078
/* 5074 */    MCD::OPC_Decode, 165, 5, 4, // Opcode: i_comp_3reg__opc_or__reg0__reg0__reg0__
/* 5078 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5089
/* 5085 */    MCD::OPC_Decode, 167, 5, 15, // Opcode: i_comp_3reg__opc_or__reg0__reg0__regs__
/* 5089 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5100
/* 5096 */    MCD::OPC_Decode, 171, 5, 16, // Opcode: i_comp_3reg__opc_or__reg0__regs__reg0__
/* 5100 */    MCD::OPC_Decode, 173, 5, 17, // Opcode: i_comp_3reg__opc_or__reg0__regs__regs__
/* 5104 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5115
/* 5111 */    MCD::OPC_Decode, 183, 5, 18, // Opcode: i_comp_3reg__opc_or__regs__reg0__reg0__
/* 5115 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5126
/* 5122 */    MCD::OPC_Decode, 185, 5, 19, // Opcode: i_comp_3reg__opc_or__regs__reg0__regs__
/* 5126 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5137
/* 5133 */    MCD::OPC_Decode, 189, 5, 20, // Opcode: i_comp_3reg__opc_or__regs__regs__reg0__
/* 5137 */    MCD::OPC_Decode, 191, 5, 21, // Opcode: i_comp_3reg__opc_or__regs__regs__regs__
/* 5141 */    MCD::OPC_FilterValue, 7, 220, 2, 0, // Skip to: 5878
/* 5146 */    MCD::OPC_ExtractField, 25, 7,  // Inst{31-25} ...
/* 5149 */    MCD::OPC_FilterValue, 0, 212, 2, 0, // Skip to: 5878
/* 5154 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 5157 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 5199
/* 5162 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5173
/* 5169 */    MCD::OPC_Decode, 138, 5, 4, // Opcode: i_comp_3reg__opc_and__reg0__reg0__reg0__
/* 5173 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5184
/* 5180 */    MCD::OPC_Decode, 140, 5, 15, // Opcode: i_comp_3reg__opc_and__reg0__reg0__regs__
/* 5184 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5195
/* 5191 */    MCD::OPC_Decode, 144, 5, 16, // Opcode: i_comp_3reg__opc_and__reg0__regs__reg0__
/* 5195 */    MCD::OPC_Decode, 146, 5, 17, // Opcode: i_comp_3reg__opc_and__reg0__regs__regs__
/* 5199 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5210
/* 5206 */    MCD::OPC_Decode, 156, 5, 18, // Opcode: i_comp_3reg__opc_and__regs__reg0__reg0__
/* 5210 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5221
/* 5217 */    MCD::OPC_Decode, 158, 5, 19, // Opcode: i_comp_3reg__opc_and__regs__reg0__regs__
/* 5221 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5232
/* 5228 */    MCD::OPC_Decode, 162, 5, 20, // Opcode: i_comp_3reg__opc_and__regs__regs__reg0__
/* 5232 */    MCD::OPC_Decode, 164, 5, 21, // Opcode: i_comp_3reg__opc_and__regs__regs__regs__
/* 5236 */    MCD::OPC_FilterValue, 55, 15, 0, 0, // Skip to: 5256
/* 5241 */    MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 5252
/* 5248 */    MCD::OPC_Decode, 250, 13, 9, // Opcode: i_lui__opc_lui__reg0__imm20_s12__
/* 5252 */    MCD::OPC_Decode, 252, 13, 10, // Opcode: i_lui__opc_lui__regs__imm20_s12__
/* 5256 */    MCD::OPC_FilterValue, 99, 255, 0, 0, // Skip to: 5516
/* 5261 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 5264 */    MCD::OPC_FilterValue, 0, 37, 0, 0, // Skip to: 5306
/* 5269 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5280
/* 5276 */    MCD::OPC_Decode, 253, 6, 31, // Opcode: i_control_conditional__opc_beq__reg0__reg0__rel_addr12__
/* 5280 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5291
/* 5287 */    MCD::OPC_Decode, 131, 7, 32, // Opcode: i_control_conditional__opc_beq__reg0__regs__rel_addr12__
/* 5291 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5302
/* 5298 */    MCD::OPC_Decode, 135, 7, 33, // Opcode: i_control_conditional__opc_beq__regs__reg0__rel_addr12__
/* 5302 */    MCD::OPC_Decode, 137, 7, 34, // Opcode: i_control_conditional__opc_beq__regs__regs__rel_addr12__
/* 5306 */    MCD::OPC_FilterValue, 1, 37, 0, 0, // Skip to: 5348
/* 5311 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5322
/* 5318 */    MCD::OPC_Decode, 182, 7, 31, // Opcode: i_control_conditional__opc_bne__reg0__reg0__rel_addr12__
/* 5322 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5333
/* 5329 */    MCD::OPC_Decode, 184, 7, 32, // Opcode: i_control_conditional__opc_bne__reg0__regs__rel_addr12__
/* 5333 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5344
/* 5340 */    MCD::OPC_Decode, 188, 7, 33, // Opcode: i_control_conditional__opc_bne__regs__reg0__rel_addr12__
/* 5344 */    MCD::OPC_Decode, 190, 7, 34, // Opcode: i_control_conditional__opc_bne__regs__regs__rel_addr12__
/* 5348 */    MCD::OPC_FilterValue, 4, 37, 0, 0, // Skip to: 5390
/* 5353 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5364
/* 5360 */    MCD::OPC_Decode, 164, 7, 31, // Opcode: i_control_conditional__opc_blt__reg0__reg0__rel_addr12__
/* 5364 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5375
/* 5371 */    MCD::OPC_Decode, 166, 7, 32, // Opcode: i_control_conditional__opc_blt__reg0__regs__rel_addr12__
/* 5375 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5386
/* 5382 */    MCD::OPC_Decode, 170, 7, 33, // Opcode: i_control_conditional__opc_blt__regs__reg0__rel_addr12__
/* 5386 */    MCD::OPC_Decode, 172, 7, 34, // Opcode: i_control_conditional__opc_blt__regs__regs__rel_addr12__
/* 5390 */    MCD::OPC_FilterValue, 5, 37, 0, 0, // Skip to: 5432
/* 5395 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5406
/* 5402 */    MCD::OPC_Decode, 138, 7, 31, // Opcode: i_control_conditional__opc_bge__reg0__reg0__rel_addr12__
/* 5406 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5417
/* 5413 */    MCD::OPC_Decode, 144, 7, 32, // Opcode: i_control_conditional__opc_bge__reg0__regs__rel_addr12__
/* 5417 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5428
/* 5424 */    MCD::OPC_Decode, 148, 7, 33, // Opcode: i_control_conditional__opc_bge__regs__reg0__rel_addr12__
/* 5428 */    MCD::OPC_Decode, 150, 7, 34, // Opcode: i_control_conditional__opc_bge__regs__regs__rel_addr12__
/* 5432 */    MCD::OPC_FilterValue, 6, 37, 0, 0, // Skip to: 5474
/* 5437 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5448
/* 5444 */    MCD::OPC_Decode, 173, 7, 31, // Opcode: i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__
/* 5448 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5459
/* 5455 */    MCD::OPC_Decode, 175, 7, 32, // Opcode: i_control_conditional__opc_bltu__reg0__regs__rel_addr12__
/* 5459 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5470
/* 5466 */    MCD::OPC_Decode, 179, 7, 33, // Opcode: i_control_conditional__opc_bltu__regs__reg0__rel_addr12__
/* 5470 */    MCD::OPC_Decode, 181, 7, 34, // Opcode: i_control_conditional__opc_bltu__regs__regs__rel_addr12__
/* 5474 */    MCD::OPC_FilterValue, 7, 143, 1, 0, // Skip to: 5878
/* 5479 */    MCD::OPC_CheckField, 15, 10, 0, 4, 0, 0, // Skip to: 5490
/* 5486 */    MCD::OPC_Decode, 151, 7, 31, // Opcode: i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__
/* 5490 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5501
/* 5497 */    MCD::OPC_Decode, 157, 7, 32, // Opcode: i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__
/* 5501 */    MCD::OPC_CheckField, 20, 5, 0, 4, 0, 0, // Skip to: 5512
/* 5508 */    MCD::OPC_Decode, 161, 7, 33, // Opcode: i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__
/* 5512 */    MCD::OPC_Decode, 163, 7, 34, // Opcode: i_control_conditional__opc_bgeu__regs__regs__rel_addr12__
/* 5516 */    MCD::OPC_FilterValue, 103, 46, 0, 0, // Skip to: 5567
/* 5521 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 5524 */    MCD::OPC_FilterValue, 0, 93, 1, 0, // Skip to: 5878
/* 5529 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 5532 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 5552
/* 5537 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5548
/* 5544 */    MCD::OPC_Decode, 251, 11, 0, // Opcode: i_jalr__opc_jalr__reg0__reg0__simm12_simple__
/* 5548 */    MCD::OPC_Decode, 133, 12, 1, // Opcode: i_jalr__opc_jalr__reg0__regs__simm12_simple__
/* 5552 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5563
/* 5559 */    MCD::OPC_Decode, 145, 12, 2, // Opcode: i_jalr__opc_jalr__regs__reg0__simm12_simple__
/* 5563 */    MCD::OPC_Decode, 151, 12, 3, // Opcode: i_jalr__opc_jalr__regs__regs__simm12_simple__
/* 5567 */    MCD::OPC_FilterValue, 111, 15, 0, 0, // Skip to: 5587
/* 5572 */    MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 5583
/* 5579 */    MCD::OPC_Decode, 238, 11, 35, // Opcode: i_jal__opc_jal__reg0__rel_addr20__
/* 5583 */    MCD::OPC_Decode, 244, 11, 36, // Opcode: i_jal__opc_jal__regs__rel_addr20__
/* 5587 */    MCD::OPC_FilterValue, 115, 11, 1, 0, // Skip to: 5859
/* 5592 */    MCD::OPC_ExtractField, 12, 3,  // Inst{14-12} ...
/* 5595 */    MCD::OPC_FilterValue, 0, 70, 0, 0, // Skip to: 5670
/* 5600 */    MCD::OPC_ExtractField, 15, 17,  // Inst{31-15} ...
/* 5603 */    MCD::OPC_FilterValue, 0, 11, 0, 0, // Skip to: 5619
/* 5608 */    MCD::OPC_CheckField, 7, 5, 0, 7, 1, 0, // Skip to: 5878
/* 5615 */    MCD::OPC_Decode, 170, 8, 4, // Opcode: i_ecall__opc_ecall__
/* 5619 */    MCD::OPC_FilterValue, 32, 11, 0, 0, // Skip to: 5635
/* 5624 */    MCD::OPC_CheckField, 7, 5, 0, 247, 0, 0, // Skip to: 5878
/* 5631 */    MCD::OPC_Decode, 169, 8, 4, // Opcode: i_ebreak__opc_ebreak__
/* 5635 */    MCD::OPC_FilterValue, 160, 65, 11, 0, 0, // Skip to: 5652
/* 5641 */    MCD::OPC_CheckField, 7, 5, 0, 230, 0, 0, // Skip to: 5878
/* 5648 */    MCD::OPC_Decode, 128, 16, 4, // Opcode: i_wfi__opc_wfi__
/* 5652 */    MCD::OPC_FilterValue, 192, 192, 1, 219, 0, 0, // Skip to: 5878
/* 5659 */    MCD::OPC_CheckField, 7, 5, 0, 212, 0, 0, // Skip to: 5878
/* 5666 */    MCD::OPC_Decode, 156, 16, 4, // Opcode: i_xret__opc_mret__
/* 5670 */    MCD::OPC_FilterValue, 1, 38, 0, 0, // Skip to: 5713
/* 5675 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 5678 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 5698
/* 5683 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5694
/* 5690 */    MCD::OPC_Decode, 248, 7, 37, // Opcode: i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0__
/* 5694 */    MCD::OPC_Decode, 250, 7, 38, // Opcode: i_control_registers_reg__opc_csrrw__reg0__regs_csr__regs__
/* 5698 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5709
/* 5705 */    MCD::OPC_Decode, 132, 8, 39, // Opcode: i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0__
/* 5709 */    MCD::OPC_Decode, 134, 8, 40, // Opcode: i_control_registers_reg__opc_csrrw__regs__regs_csr__regs__
/* 5713 */    MCD::OPC_FilterValue, 2, 38, 0, 0, // Skip to: 5756
/* 5718 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 5721 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 5741
/* 5726 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5737
/* 5733 */    MCD::OPC_Decode, 230, 7, 37, // Opcode: i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0__
/* 5737 */    MCD::OPC_Decode, 232, 7, 38, // Opcode: i_control_registers_reg__opc_csrrs__reg0__regs_csr__regs__
/* 5741 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5752
/* 5748 */    MCD::OPC_Decode, 242, 7, 39, // Opcode: i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0__
/* 5752 */    MCD::OPC_Decode, 244, 7, 40, // Opcode: i_control_registers_reg__opc_csrrs__regs__regs_csr__regs__
/* 5756 */    MCD::OPC_FilterValue, 3, 38, 0, 0, // Skip to: 5799
/* 5761 */    MCD::OPC_ExtractField, 7, 5,  // Inst{11-7} ...
/* 5764 */    MCD::OPC_FilterValue, 0, 15, 0, 0, // Skip to: 5784
/* 5769 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5780
/* 5776 */    MCD::OPC_Decode, 212, 7, 37, // Opcode: i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0__
/* 5780 */    MCD::OPC_Decode, 214, 7, 38, // Opcode: i_control_registers_reg__opc_csrrc__reg0__regs_csr__regs__
/* 5784 */    MCD::OPC_CheckField, 15, 5, 0, 4, 0, 0, // Skip to: 5795
/* 5791 */    MCD::OPC_Decode, 224, 7, 39, // Opcode: i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0__
/* 5795 */    MCD::OPC_Decode, 226, 7, 40, // Opcode: i_control_registers_reg__opc_csrrc__regs__regs_csr__regs__
/* 5799 */    MCD::OPC_FilterValue, 5, 15, 0, 0, // Skip to: 5819
/* 5804 */    MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 5815
/* 5811 */    MCD::OPC_Decode, 204, 7, 41, // Opcode: i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__
/* 5815 */    MCD::OPC_Decode, 208, 7, 42, // Opcode: i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__
/* 5819 */    MCD::OPC_FilterValue, 6, 15, 0, 0, // Skip to: 5839
/* 5824 */    MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 5835
/* 5831 */    MCD::OPC_Decode, 198, 7, 41, // Opcode: i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__
/* 5835 */    MCD::OPC_Decode, 202, 7, 42, // Opcode: i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__
/* 5839 */    MCD::OPC_FilterValue, 7, 34, 0, 0, // Skip to: 5878
/* 5844 */    MCD::OPC_CheckField, 7, 5, 0, 4, 0, 0, // Skip to: 5855
/* 5851 */    MCD::OPC_Decode, 192, 7, 41, // Opcode: i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__
/* 5855 */    MCD::OPC_Decode, 196, 7, 42, // Opcode: i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__
/* 5859 */    MCD::OPC_FilterValue, 127, 14, 0, 0, // Skip to: 5878
/* 5864 */    MCD::OPC_CheckField, 7, 25, 160, 128, 128, 12, 4, 0, 0, // Skip to: 5878
/* 5874 */    MCD::OPC_Decode, 255, 15, 4, // Opcode: i_unimp__opc_unimp__
/* 5878 */    MCD::OPC_Fail,
  0
};

static bool checkDecoderPredicate(unsigned Idx, const FeatureBitset& Bits) {
  llvm_unreachable("Invalid index!");
}

template<typename InsnType>
static DecodeStatus decodeToMCInst(DecodeStatus S, unsigned Idx, InsnType insn, MCInst &MI,
                                   uint64_t Address, const void *Decoder, bool &DecodeComplete) {
  DecodeComplete = true;
  InsnType tmp;
  switch (Idx) {
  default: llvm_unreachable("Invalid index!");
  case 0:
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 1:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 2:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 3:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 4:
    return S;
  case 5:
    tmp = fieldFromInstruction(insn, 20, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 6:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 7:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 8:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 9:
    tmp = fieldFromInstruction(insn, 12, 20);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 10:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 12, 20);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 11:
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 5) << 0;
    tmp |= fieldFromInstruction(insn, 25, 7) << 5;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 12:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 5) << 0;
    tmp |= fieldFromInstruction(insn, 25, 7) << 5;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 13:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 5) << 0;
    tmp |= fieldFromInstruction(insn, 25, 7) << 5;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 14:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 5) << 0;
    tmp |= fieldFromInstruction(insn, 25, 7) << 5;
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 15:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 16:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 17:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 18:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 19:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 20:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 21:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 22:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 23:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 24:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 25:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 26:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 27:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 28:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 29:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 30:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 31:
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 1) << 10;
    tmp |= fieldFromInstruction(insn, 8, 4) << 0;
    tmp |= fieldFromInstruction(insn, 25, 6) << 4;
    tmp |= fieldFromInstruction(insn, 31, 1) << 11;
    if (decodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 32:
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 1) << 10;
    tmp |= fieldFromInstruction(insn, 8, 4) << 0;
    tmp |= fieldFromInstruction(insn, 25, 6) << 4;
    tmp |= fieldFromInstruction(insn, 31, 1) << 11;
    if (decodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 33:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 1) << 10;
    tmp |= fieldFromInstruction(insn, 8, 4) << 0;
    tmp |= fieldFromInstruction(insn, 25, 6) << 4;
    tmp |= fieldFromInstruction(insn, 31, 1) << 11;
    if (decodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 34:
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 7, 1) << 10;
    tmp |= fieldFromInstruction(insn, 8, 4) << 0;
    tmp |= fieldFromInstruction(insn, 25, 6) << 4;
    tmp |= fieldFromInstruction(insn, 31, 1) << 11;
    if (decodeMI4addrIH1_10start_base13_10rel_addr124addr1_10rel_addr12(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 35:
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 12, 8) << 11;
    tmp |= fieldFromInstruction(insn, 20, 1) << 10;
    tmp |= fieldFromInstruction(insn, 21, 10) << 0;
    tmp |= fieldFromInstruction(insn, 31, 1) << 19;
    if (decodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 36:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = 0;
    tmp |= fieldFromInstruction(insn, 12, 8) << 11;
    tmp |= fieldFromInstruction(insn, 20, 1) << 10;
    tmp |= fieldFromInstruction(insn, 21, 10) << 0;
    tmp |= fieldFromInstruction(insn, 31, 1) << 19;
    if (decodeMI4addrIH1_10start_base13_10rel_addr204addr1_10rel_addr20(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 37:
    tmp = fieldFromInstruction(insn, 20, 12);
    if (Decoderegs_csrRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 38:
    tmp = fieldFromInstruction(insn, 20, 12);
    if (Decoderegs_csrRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 39:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    if (Decoderegs_csrRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 40:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    if (Decoderegs_csrRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    return S;
  case 41:
    tmp = fieldFromInstruction(insn, 20, 12);
    if (Decoderegs_csrRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  case 42:
    tmp = fieldFromInstruction(insn, 7, 5);
    if (DecoderegsRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 20, 12);
    if (Decoderegs_csrRegisterClass(MI, tmp, Address, Decoder) == MCDisassembler::Fail) { return MCDisassembler::Fail; }
    tmp = fieldFromInstruction(insn, 15, 5);
    MI.addOperand(MCOperand::createImm(tmp));
    return S;
  }
}

template<typename InsnType>
static DecodeStatus decodeInstruction(const uint8_t DecodeTable[], MCInst &MI,
                                      InsnType insn, uint64_t Address,
                                      const void *DisAsm,
                                      const MCSubtargetInfo &STI) {
  const FeatureBitset& Bits = STI.getFeatureBits();

  const uint8_t *Ptr = DecodeTable;
  InsnType CurFieldValue = 0;
  DecodeStatus S = MCDisassembler::Success;
  while (true) {
    ptrdiff_t Loc = Ptr - DecodeTable;
    switch (*Ptr) {
    default:
      errs() << Loc << ": Unexpected decode table opcode!\n";
      return MCDisassembler::Fail;
    case MCD::OPC_ExtractField: {
      unsigned Start = *++Ptr;
      unsigned Len = *++Ptr;
      ++Ptr;
      CurFieldValue = fieldFromInstruction(insn, Start, Len);
      LLVM_DEBUG(dbgs() << Loc << ": OPC_ExtractField(" << Start << ", "
                   << Len << "): " << CurFieldValue << "\n");
      break;
    }
    case MCD::OPC_FilterValue: {
      // Decode the field value.
      unsigned Len;
      InsnType Val = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 24-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      NumToSkip |= (*Ptr++) << 16;

      // Perform the filter operation.
      if (Val != CurFieldValue)
        Ptr += NumToSkip;
      LLVM_DEBUG(dbgs() << Loc << ": OPC_FilterValue(" << Val << ", " << NumToSkip
                   << "): " << ((Val != CurFieldValue) ? "FAIL:" : "PASS:")
                   << " continuing at " << (Ptr - DecodeTable) << "\n");

      break;
    }
    case MCD::OPC_CheckField: {
      unsigned Start = *++Ptr;
      unsigned Len = *++Ptr;
      InsnType FieldValue = fieldFromInstruction(insn, Start, Len);
      // Decode the field value.
      InsnType ExpectedValue = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 24-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      NumToSkip |= (*Ptr++) << 16;

      // If the actual and expected values don't match, skip.
      if (ExpectedValue != FieldValue)
        Ptr += NumToSkip;
      LLVM_DEBUG(dbgs() << Loc << ": OPC_CheckField(" << Start << ", "
                   << Len << ", " << ExpectedValue << ", " << NumToSkip
                   << "): FieldValue = " << FieldValue << ", ExpectedValue = "
                   << ExpectedValue << ": "
                   << ((ExpectedValue == FieldValue) ? "PASS\n" : "FAIL\n"));
      break;
    }
    case MCD::OPC_CheckPredicate: {
      unsigned Len;
      // Decode the Predicate Index value.
      unsigned PIdx = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 24-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      NumToSkip |= (*Ptr++) << 16;
      // Check the predicate.
      bool Pred;
      if (!(Pred = checkDecoderPredicate(PIdx, Bits)))
        Ptr += NumToSkip;
      (void)Pred;
      LLVM_DEBUG(dbgs() << Loc << ": OPC_CheckPredicate(" << PIdx << "): "
            << (Pred ? "PASS\n" : "FAIL\n"));

      break;
    }
    case MCD::OPC_Decode: {
      unsigned Len;
      // Decode the Opcode value.
      unsigned Opc = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      unsigned DecodeIdx = decodeULEB128(Ptr, &Len);
      Ptr += Len;

      MI.clear();
      MI.setOpcode(Opc);
      bool DecodeComplete;
      S = decodeToMCInst(S, DecodeIdx, insn, MI, Address, DisAsm, DecodeComplete);
      assert(DecodeComplete);

      LLVM_DEBUG(dbgs() << Loc << ": OPC_Decode: opcode " << Opc
                   << ", using decoder " << DecodeIdx << ": "
                   << (S != MCDisassembler::Fail ? "PASS" : "FAIL") << "\n");
      return S;
    }
    case MCD::OPC_TryDecode: {
      unsigned Len;
      // Decode the Opcode value.
      unsigned Opc = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      unsigned DecodeIdx = decodeULEB128(Ptr, &Len);
      Ptr += Len;
      // NumToSkip is a plain 24-bit integer.
      unsigned NumToSkip = *Ptr++;
      NumToSkip |= (*Ptr++) << 8;
      NumToSkip |= (*Ptr++) << 16;

      // Perform the decode operation.
      MCInst TmpMI;
      TmpMI.setOpcode(Opc);
      bool DecodeComplete;
      S = decodeToMCInst(S, DecodeIdx, insn, TmpMI, Address, DisAsm, DecodeComplete);
      LLVM_DEBUG(dbgs() << Loc << ": OPC_TryDecode: opcode " << Opc
                   << ", using decoder " << DecodeIdx << ": ");

      if (DecodeComplete) {
        // Decoding complete.
        LLVM_DEBUG(dbgs() << (S != MCDisassembler::Fail ? "PASS" : "FAIL") << "\n");
        MI = TmpMI;
        return S;
      } else {
        assert(S == MCDisassembler::Fail);
        // If the decoding was incomplete, skip.
        Ptr += NumToSkip;
        LLVM_DEBUG(dbgs() << "FAIL: continuing at " << (Ptr - DecodeTable) << "\n");
        // Reset decode status. This also drops a SoftFail status that could be
        // set before the decode attempt.
        S = MCDisassembler::Success;
      }
      break;
    }
    case MCD::OPC_SoftFail: {
      // Decode the mask values.
      unsigned Len;
      InsnType PositiveMask = decodeULEB128(++Ptr, &Len);
      Ptr += Len;
      InsnType NegativeMask = decodeULEB128(Ptr, &Len);
      Ptr += Len;
      bool Fail = (insn & PositiveMask) || (~insn & NegativeMask);
      if (Fail)
        S = MCDisassembler::SoftFail;
      LLVM_DEBUG(dbgs() << Loc << ": OPC_SoftFail: " << (Fail ? "FAIL\n":"PASS\n"));
      break;
    }
    case MCD::OPC_Fail: {
      LLVM_DEBUG(dbgs() << Loc << ": OPC_Fail\n");
      return MCDisassembler::Fail;
    }
    }
  }
  llvm_unreachable("bogosity detected in disassembler state machine!");
}


} // End llvm namespace
