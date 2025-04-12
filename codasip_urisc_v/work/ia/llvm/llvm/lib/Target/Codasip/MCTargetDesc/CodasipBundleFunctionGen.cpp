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
 * \author  Codasip (c) Assembler generator
 * \version 9.4.2
 * \brief   Source for assembler
 * \project MI15codasip_urisc_v
 */
#include "CodasipBundleFunctionGen.h"

#include "llvm/Support/raw_ostream.h"


namespace llvm {

void CodasipBundleFunctionGen::Call(Parts& parts, const Instructions& inputInstructions) const 
{
    /*switch (codasip_switch_MI5start)
    {
        case CODASIP_SWITCH_VALUE_MI10start_base:
        {*/
            CHECK_NOT_EMPTY(inputInstructions);
            switch (inputInstructions.front().GetBitWidth())
            {
                case 32:
                {
                    const size_t SLOT_COUNT = 1;
                    if (inputInstructions.size() != SLOT_COUNT)
                    {
                        errs() << "Input instruction count " << inputInstructions.size() << " differs from slot count " << SLOT_COUNT << ".\n"; // TODO location
                    }

                    // Prepare instructions for bundling
                    bundle<32> instr0;
                    InitializeInstruction<32>(instr0, inputInstructions, 0);

                    #ifdef DEBUG_BUNDLING
                        errs() << "Bundling inputs:\n";
                        errs() << "instr0.size=" << instr0.size << "\n";
                        instr0.value.Print();
                    #endif

                    // Bundle instructions together
                    bundle<32> res;
                    res.value = 0;
                    res.value <<= 32;
                    res.value |= instr0.value;
                    res.size = 32;

                    // Align to the right for the rest of the algorithm to work
                    res.value >>= res.value.GetContent().size() - res.size;
                    #ifdef DEBUG_BUNDLING
                        errs() << "Bundling aligned output:\n"
                               << "res.size=" << res.size << "\n";
                        res.value.Print();
                    #endif

                    // Split result to multiple max 64 bit-width parts here, because of ELF limitation
                    SplitBundleToParts(parts, 32, res);
                    #ifdef DEBUG_BUNDLING
                        errs() << "Bundling output parts:\n";
                        for (const bundle<64>& part : parts) {
                            errs() << "part.size=" << part.size << "\n";
                            part.value.Print();
                        }
                    #endif
                    break;
                }
                case 64:
                {
                    const size_t SLOT_COUNT = 1;
                    if (inputInstructions.size() != SLOT_COUNT)
                    {
                        errs() << "Input instruction count " << inputInstructions.size() << " differs from slot count " << SLOT_COUNT << ".\n"; // TODO location
                    }

                    // Prepare instructions for bundling
                    bundle<64> instr0;
                    InitializeInstruction<64>(instr0, inputInstructions, 0);

                    #ifdef DEBUG_BUNDLING
                        errs() << "Bundling inputs:\n";
                        errs() << "instr0.size=" << instr0.size << "\n";
                        instr0.value.Print();
                    #endif

                    // Bundle instructions together
                    bundle<64> res;
                    res.value = 0;
                    res.value <<= 64;
                    res.value |= instr0.value;
                    res.size = 64;

                    // Align to the right for the rest of the algorithm to work
                    res.value >>= res.value.GetContent().size() - res.size;
                    #ifdef DEBUG_BUNDLING
                        errs() << "Bundling aligned output:\n"
                               << "res.size=" << res.size << "\n";
                        res.value.Print();
                    #endif

                    // Split result to multiple max 64 bit-width parts here, because of ELF limitation
                    SplitBundleToParts(parts, 64, res);
                    #ifdef DEBUG_BUNDLING
                        errs() << "Bundling output parts:\n";
                        for (const bundle<64>& part : parts) {
                            errs() << "part.size=" << part.size << "\n";
                            part.value.Print();
                        }
                    #endif
                    break;
                }
                default:
                {
                    THROW_ERROR() << "Unknown bit-width " << inputInstructions.front().GetBitWidth() << " in function 'BundleFunctionGen::Call'.";
                    break;
                }
            }
        /*}
        default:
        {
            THROW_ERROR() << "Unknown IS in function 'BundleFunctionGen::Call'.";
            BundlingBitInfo::Content content;
            return content;
        }
    }*/
}
} // namespace llvm
