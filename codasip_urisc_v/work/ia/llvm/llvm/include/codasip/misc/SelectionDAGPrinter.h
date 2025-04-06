/**
 * Codasip Ltd
 *
 * CONFIDENTIAL
 *
 * Copyright 2017 Codasip Ltd
 *
 * All Rights Reserved.
 *
 * NOTICE: All information contained in this file, is and shall remain the
 * property of Codasip Ltd and its suppliers, if any.
 *
 * The intellectual and technical concepts contained herein are confidential and
 * proprietary to Codasip Ltd and are protected by trade secret and copyright
 * law.  In addition, elements of the technical concepts may be patent pending.
 *
 * This file is part of the Codasip Studio product. No part of the Studio
 * product, including this file, may be use, copied, modified, or distributed
 * except in accordance with the terms contained in Codasip license agreement
 * under which you obtained this file.
 *
 *  \file
 *  \author Martin Ministr
 *  \date   3. 8. 2017
 *  \brief  Declaration/Implementation of the class.
 */

#ifndef INCLUDE_CODASIP_MISC_SELECTION_DAG_PRINTER_H_
#define INCLUDE_CODASIP_MISC_SELECTION_DAG_PRINTER_H_

#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/Support/raw_ostream.h"
#include <string>

namespace llvm {

/**
 * \brief Auxiliary function to generate white spaces.
 * \param indent count of white spaces
 */
inline std::string getIndent(const int Indent) {
  return std::string(4 * (Indent > 0 ? Indent : 0), ' ');
}

/**
 * \brief Prints value and operands recursively with given indentation.
 *        Created for automatic testing purposes now.
 * \param[out] Out
 * \param[in] Value
 * \param[in] DAG
 * \param[in] Indent
 * \param[in] IsTestingMode skips some constructs when set on true
 */
void printValue(raw_ostream &Out, const SDValue &Value, SelectionDAG *DAG,
                const int Indent, const bool IsTestingMode);

} // namespace llvm

#endif // INCLUDE_CODASIP_MISC_SELECTION_DAG_PRINTER_H_
