/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\
|*                                                                            *|
|* Assembly Matcher Source Fragment                                           *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/


#ifdef GET_ASSEMBLER_HEADER
#undef GET_ASSEMBLER_HEADER
  // This should be included into the middle of the declaration of
  // your subclasses implementation of MCTargetAsmParser.
  FeatureBitset ComputeAvailableFeatures(const FeatureBitset& FB) const;
  void convertToMCInst(unsigned Kind, MCInst &Inst, unsigned Opcode,
                       const OperandVector &Operands);
  void convertToMapAndConstraints(unsigned Kind,
                           const OperandVector &Operands) override;
  unsigned MatchInstructionImpl(const OperandVector &Operands,
                                MCInst &Inst,
                                uint64_t &ErrorInfo,
                                FeatureBitset &MissingFeatures,
                                bool matchingInlineAsm,
                                unsigned VariantID = 0);
  unsigned MatchInstructionImpl(const OperandVector &Operands,
                                MCInst &Inst,
                                uint64_t &ErrorInfo,
                                bool matchingInlineAsm,
                                unsigned VariantID = 0) {
    FeatureBitset MissingFeatures;
    return MatchInstructionImpl(Operands, Inst, ErrorInfo, MissingFeatures,
                                matchingInlineAsm, VariantID);
  }

#endif // GET_ASSEMBLER_HEADER_INFO


#ifdef GET_OPERAND_DIAGNOSTIC_TYPES
#undef GET_OPERAND_DIAGNOSTIC_TYPES

#endif // GET_OPERAND_DIAGNOSTIC_TYPES


#ifdef GET_REGISTER_MATCHER
#undef GET_REGISTER_MATCHER

// Bits for subtarget features that participate in instruction matching.
enum SubtargetFeatureBits : uint8_t {
};

static unsigned MatchRegisterName(StringRef Name) {
  switch (Name.size()) {
  default: break;
  case 2:	 // 9 strings to match.
    switch (Name[0]) {
    default: break;
    case 'f':	 // 1 string to match.
      if (Name[1] != 'p')
        break;
      return 133;	 // "fp"
    case 'r':	 // 1 string to match.
      if (Name[1] != 'a')
        break;
      return 126;	 // "ra"
    case 's':	 // 1 string to match.
      if (Name[1] != 'p')
        break;
      return 127;	 // "sp"
    case 'x':	 // 6 strings to match.
      switch (Name[1]) {
      default: break;
      case '3':	 // 1 string to match.
        return 128;	 // "x3"
      case '4':	 // 1 string to match.
        return 129;	 // "x4"
      case '5':	 // 1 string to match.
        return 130;	 // "x5"
      case '6':	 // 1 string to match.
        return 131;	 // "x6"
      case '7':	 // 1 string to match.
        return 132;	 // "x7"
      case '9':	 // 1 string to match.
        return 134;	 // "x9"
      }
      break;
    }
    break;
  case 3:	 // 25 strings to match.
    switch (Name[0]) {
    default: break;
    case 'm':	 // 2 strings to match.
      if (Name[1] != 'i')
        break;
      switch (Name[2]) {
      default: break;
      case 'e':	 // 1 string to match.
        return 3;	 // "mie"
      case 'p':	 // 1 string to match.
        return 39;	 // "mip"
      }
      break;
    case 'n':	 // 1 string to match.
      if (memcmp(Name.data()+1, "mi", 2) != 0)
        break;
      return 106;	 // "nmi"
    case 'x':	 // 22 strings to match.
      switch (Name[1]) {
      default: break;
      case '1':	 // 10 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 135;	 // "x10"
        case '1':	 // 1 string to match.
          return 136;	 // "x11"
        case '2':	 // 1 string to match.
          return 137;	 // "x12"
        case '3':	 // 1 string to match.
          return 138;	 // "x13"
        case '4':	 // 1 string to match.
          return 139;	 // "x14"
        case '5':	 // 1 string to match.
          return 140;	 // "x15"
        case '6':	 // 1 string to match.
          return 141;	 // "x16"
        case '7':	 // 1 string to match.
          return 142;	 // "x17"
        case '8':	 // 1 string to match.
          return 143;	 // "x18"
        case '9':	 // 1 string to match.
          return 144;	 // "x19"
        }
        break;
      case '2':	 // 10 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 145;	 // "x20"
        case '1':	 // 1 string to match.
          return 146;	 // "x21"
        case '2':	 // 1 string to match.
          return 147;	 // "x22"
        case '3':	 // 1 string to match.
          return 148;	 // "x23"
        case '4':	 // 1 string to match.
          return 149;	 // "x24"
        case '5':	 // 1 string to match.
          return 150;	 // "x25"
        case '6':	 // 1 string to match.
          return 151;	 // "x26"
        case '7':	 // 1 string to match.
          return 152;	 // "x27"
        case '8':	 // 1 string to match.
          return 153;	 // "x28"
        case '9':	 // 1 string to match.
          return 154;	 // "x29"
        }
        break;
      case '3':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case '0':	 // 1 string to match.
          return 155;	 // "x30"
        case '1':	 // 1 string to match.
          return 156;	 // "x31"
        }
        break;
      }
      break;
    }
    break;
  case 4:	 // 2 strings to match.
    if (Name[0] != 'm')
      break;
    switch (Name[1]) {
    default: break;
    case 'e':	 // 1 string to match.
      if (memcmp(Name.data()+2, "pc", 2) != 0)
        break;
      return 36;	 // "mepc"
    case 'i':	 // 1 string to match.
      if (memcmp(Name.data()+2, "sa", 2) != 0)
        break;
      return 2;	 // "misa"
    }
    break;
  case 5:	 // 2 strings to match.
    if (memcmp(Name.data()+0, "mtv", 3) != 0)
      break;
    switch (Name[3]) {
    default: break;
    case 'a':	 // 1 string to match.
      if (Name[4] != 'l')
        break;
      return 38;	 // "mtval"
    case 'e':	 // 1 string to match.
      if (Name[4] != 'c')
        break;
      return 4;	 // "mtvec"
    }
    break;
  case 6:	 // 3 strings to match.
    if (Name[0] != 'm')
      break;
    switch (Name[1]) {
    default: break;
    case 'c':	 // 2 strings to match.
      switch (Name[2]) {
      default: break;
      case 'a':	 // 1 string to match.
        if (memcmp(Name.data()+3, "use", 3) != 0)
          break;
        return 37;	 // "mcause"
      case 'y':	 // 1 string to match.
        if (memcmp(Name.data()+3, "cle", 3) != 0)
          break;
        return 40;	 // "mcycle"
      }
      break;
    case 'i':	 // 1 string to match.
      if (memcmp(Name.data()+2, "mpid", 4) != 0)
        break;
      return 104;	 // "mimpid"
    }
    break;
  case 7:	 // 4 strings to match.
    if (Name[0] != 'm')
      break;
    switch (Name[1]) {
    default: break;
    case 'a':	 // 1 string to match.
      if (memcmp(Name.data()+2, "rchid", 5) != 0)
        break;
      return 103;	 // "marchid"
    case 'c':	 // 1 string to match.
      if (memcmp(Name.data()+2, "ycleh", 5) != 0)
        break;
      return 71;	 // "mcycleh"
    case 'h':	 // 1 string to match.
      if (memcmp(Name.data()+2, "artid", 5) != 0)
        break;
      return 105;	 // "mhartid"
    case 's':	 // 1 string to match.
      if (memcmp(Name.data()+2, "tatus", 5) != 0)
        break;
      return 1;	 // "mstatus"
    }
    break;
  case 8:	 // 2 strings to match.
    if (Name[0] != 'm')
      break;
    switch (Name[1]) {
    default: break;
    case 'i':	 // 1 string to match.
      if (memcmp(Name.data()+2, "nstret", 6) != 0)
        break;
      return 41;	 // "minstret"
    case 's':	 // 1 string to match.
      if (memcmp(Name.data()+2, "cratch", 6) != 0)
        break;
      return 35;	 // "mscratch"
    }
    break;
  case 9:	 // 3 strings to match.
    switch (Name[0]) {
    default: break;
    case 'm':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'i':	 // 1 string to match.
        if (memcmp(Name.data()+2, "nstreth", 7) != 0)
          break;
        return 72;	 // "minstreth"
      case 'v':	 // 1 string to match.
        if (memcmp(Name.data()+2, "endorid", 7) != 0)
          break;
        return 102;	 // "mvendorid"
      }
      break;
    case 'n':	 // 1 string to match.
      if (memcmp(Name.data()+1, "mi_mtval", 8) != 0)
        break;
      return 107;	 // "nmi_mtval"
    }
    break;
  case 10:	 // 7 strings to match.
    if (memcmp(Name.data()+0, "mhpmevent", 9) != 0)
      break;
    switch (Name[9]) {
    default: break;
    case '3':	 // 1 string to match.
      return 6;	 // "mhpmevent3"
    case '4':	 // 1 string to match.
      return 7;	 // "mhpmevent4"
    case '5':	 // 1 string to match.
      return 8;	 // "mhpmevent5"
    case '6':	 // 1 string to match.
      return 9;	 // "mhpmevent6"
    case '7':	 // 1 string to match.
      return 10;	 // "mhpmevent7"
    case '8':	 // 1 string to match.
      return 11;	 // "mhpmevent8"
    case '9':	 // 1 string to match.
      return 12;	 // "mhpmevent9"
    }
    break;
  case 11:	 // 22 strings to match.
    if (memcmp(Name.data()+0, "mhpmevent", 9) != 0)
      break;
    switch (Name[9]) {
    default: break;
    case '1':	 // 10 strings to match.
      switch (Name[10]) {
      default: break;
      case '0':	 // 1 string to match.
        return 13;	 // "mhpmevent10"
      case '1':	 // 1 string to match.
        return 14;	 // "mhpmevent11"
      case '2':	 // 1 string to match.
        return 15;	 // "mhpmevent12"
      case '3':	 // 1 string to match.
        return 16;	 // "mhpmevent13"
      case '4':	 // 1 string to match.
        return 17;	 // "mhpmevent14"
      case '5':	 // 1 string to match.
        return 18;	 // "mhpmevent15"
      case '6':	 // 1 string to match.
        return 19;	 // "mhpmevent16"
      case '7':	 // 1 string to match.
        return 20;	 // "mhpmevent17"
      case '8':	 // 1 string to match.
        return 21;	 // "mhpmevent18"
      case '9':	 // 1 string to match.
        return 22;	 // "mhpmevent19"
      }
      break;
    case '2':	 // 10 strings to match.
      switch (Name[10]) {
      default: break;
      case '0':	 // 1 string to match.
        return 23;	 // "mhpmevent20"
      case '1':	 // 1 string to match.
        return 24;	 // "mhpmevent21"
      case '2':	 // 1 string to match.
        return 25;	 // "mhpmevent22"
      case '3':	 // 1 string to match.
        return 26;	 // "mhpmevent23"
      case '4':	 // 1 string to match.
        return 27;	 // "mhpmevent24"
      case '5':	 // 1 string to match.
        return 28;	 // "mhpmevent25"
      case '6':	 // 1 string to match.
        return 29;	 // "mhpmevent26"
      case '7':	 // 1 string to match.
        return 30;	 // "mhpmevent27"
      case '8':	 // 1 string to match.
        return 31;	 // "mhpmevent28"
      case '9':	 // 1 string to match.
        return 32;	 // "mhpmevent29"
      }
      break;
    case '3':	 // 2 strings to match.
      switch (Name[10]) {
      default: break;
      case '0':	 // 1 string to match.
        return 33;	 // "mhpmevent30"
      case '1':	 // 1 string to match.
        return 34;	 // "mhpmevent31"
      }
      break;
    }
    break;
  case 12:	 // 7 strings to match.
    if (memcmp(Name.data()+0, "mhpmcounter", 11) != 0)
      break;
    switch (Name[11]) {
    default: break;
    case '3':	 // 1 string to match.
      return 42;	 // "mhpmcounter3"
    case '4':	 // 1 string to match.
      return 43;	 // "mhpmcounter4"
    case '5':	 // 1 string to match.
      return 44;	 // "mhpmcounter5"
    case '6':	 // 1 string to match.
      return 45;	 // "mhpmcounter6"
    case '7':	 // 1 string to match.
      return 46;	 // "mhpmcounter7"
    case '8':	 // 1 string to match.
      return 47;	 // "mhpmcounter8"
    case '9':	 // 1 string to match.
      return 48;	 // "mhpmcounter9"
    }
    break;
  case 13:	 // 30 strings to match.
    if (Name[0] != 'm')
      break;
    switch (Name[1]) {
    default: break;
    case 'c':	 // 1 string to match.
      if (memcmp(Name.data()+2, "ountinhibit", 11) != 0)
        break;
      return 5;	 // "mcountinhibit"
    case 'h':	 // 29 strings to match.
      if (memcmp(Name.data()+2, "pmcounter", 9) != 0)
        break;
      switch (Name[11]) {
      default: break;
      case '1':	 // 10 strings to match.
        switch (Name[12]) {
        default: break;
        case '0':	 // 1 string to match.
          return 49;	 // "mhpmcounter10"
        case '1':	 // 1 string to match.
          return 50;	 // "mhpmcounter11"
        case '2':	 // 1 string to match.
          return 51;	 // "mhpmcounter12"
        case '3':	 // 1 string to match.
          return 52;	 // "mhpmcounter13"
        case '4':	 // 1 string to match.
          return 53;	 // "mhpmcounter14"
        case '5':	 // 1 string to match.
          return 54;	 // "mhpmcounter15"
        case '6':	 // 1 string to match.
          return 55;	 // "mhpmcounter16"
        case '7':	 // 1 string to match.
          return 56;	 // "mhpmcounter17"
        case '8':	 // 1 string to match.
          return 57;	 // "mhpmcounter18"
        case '9':	 // 1 string to match.
          return 58;	 // "mhpmcounter19"
        }
        break;
      case '2':	 // 10 strings to match.
        switch (Name[12]) {
        default: break;
        case '0':	 // 1 string to match.
          return 59;	 // "mhpmcounter20"
        case '1':	 // 1 string to match.
          return 60;	 // "mhpmcounter21"
        case '2':	 // 1 string to match.
          return 61;	 // "mhpmcounter22"
        case '3':	 // 1 string to match.
          return 62;	 // "mhpmcounter23"
        case '4':	 // 1 string to match.
          return 63;	 // "mhpmcounter24"
        case '5':	 // 1 string to match.
          return 64;	 // "mhpmcounter25"
        case '6':	 // 1 string to match.
          return 65;	 // "mhpmcounter26"
        case '7':	 // 1 string to match.
          return 66;	 // "mhpmcounter27"
        case '8':	 // 1 string to match.
          return 67;	 // "mhpmcounter28"
        case '9':	 // 1 string to match.
          return 68;	 // "mhpmcounter29"
        }
        break;
      case '3':	 // 3 strings to match.
        switch (Name[12]) {
        default: break;
        case '0':	 // 1 string to match.
          return 69;	 // "mhpmcounter30"
        case '1':	 // 1 string to match.
          return 70;	 // "mhpmcounter31"
        case 'h':	 // 1 string to match.
          return 73;	 // "mhpmcounter3h"
        }
        break;
      case '4':	 // 1 string to match.
        if (Name[12] != 'h')
          break;
        return 74;	 // "mhpmcounter4h"
      case '5':	 // 1 string to match.
        if (Name[12] != 'h')
          break;
        return 75;	 // "mhpmcounter5h"
      case '6':	 // 1 string to match.
        if (Name[12] != 'h')
          break;
        return 76;	 // "mhpmcounter6h"
      case '7':	 // 1 string to match.
        if (Name[12] != 'h')
          break;
        return 77;	 // "mhpmcounter7h"
      case '8':	 // 1 string to match.
        if (Name[12] != 'h')
          break;
        return 78;	 // "mhpmcounter8h"
      case '9':	 // 1 string to match.
        if (Name[12] != 'h')
          break;
        return 79;	 // "mhpmcounter9h"
      }
      break;
    }
    break;
  case 14:	 // 22 strings to match.
    if (memcmp(Name.data()+0, "mhpmcounter", 11) != 0)
      break;
    switch (Name[11]) {
    default: break;
    case '1':	 // 10 strings to match.
      switch (Name[12]) {
      default: break;
      case '0':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 80;	 // "mhpmcounter10h"
      case '1':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 81;	 // "mhpmcounter11h"
      case '2':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 82;	 // "mhpmcounter12h"
      case '3':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 83;	 // "mhpmcounter13h"
      case '4':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 84;	 // "mhpmcounter14h"
      case '5':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 85;	 // "mhpmcounter15h"
      case '6':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 86;	 // "mhpmcounter16h"
      case '7':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 87;	 // "mhpmcounter17h"
      case '8':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 88;	 // "mhpmcounter18h"
      case '9':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 89;	 // "mhpmcounter19h"
      }
      break;
    case '2':	 // 10 strings to match.
      switch (Name[12]) {
      default: break;
      case '0':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 90;	 // "mhpmcounter20h"
      case '1':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 91;	 // "mhpmcounter21h"
      case '2':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 92;	 // "mhpmcounter22h"
      case '3':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 93;	 // "mhpmcounter23h"
      case '4':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 94;	 // "mhpmcounter24h"
      case '5':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 95;	 // "mhpmcounter25h"
      case '6':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 96;	 // "mhpmcounter26h"
      case '7':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 97;	 // "mhpmcounter27h"
      case '8':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 98;	 // "mhpmcounter28h"
      case '9':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 99;	 // "mhpmcounter29h"
      }
      break;
    case '3':	 // 2 strings to match.
      switch (Name[12]) {
      default: break;
      case '0':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 100;	 // "mhpmcounter30h"
      case '1':	 // 1 string to match.
        if (Name[13] != 'h')
          break;
        return 101;	 // "mhpmcounter31h"
      }
      break;
    }
    break;
  }
  return 0;
}

static unsigned MatchRegisterAltName(StringRef Name) {
  switch (Name.size()) {
  default: break;
  case 2:	 // 30 strings to match.
    switch (Name[0]) {
    default: break;
    case 'a':	 // 8 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 135;	 // "a0"
      case '1':	 // 1 string to match.
        return 136;	 // "a1"
      case '2':	 // 1 string to match.
        return 137;	 // "a2"
      case '3':	 // 1 string to match.
        return 138;	 // "a3"
      case '4':	 // 1 string to match.
        return 139;	 // "a4"
      case '5':	 // 1 string to match.
        return 140;	 // "a5"
      case '6':	 // 1 string to match.
        return 141;	 // "a6"
      case '7':	 // 1 string to match.
        return 142;	 // "a7"
      }
      break;
    case 'g':	 // 1 string to match.
      if (Name[1] != 'p')
        break;
      return 128;	 // "gp"
    case 's':	 // 10 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 133;	 // "s0"
      case '1':	 // 1 string to match.
        return 134;	 // "s1"
      case '2':	 // 1 string to match.
        return 143;	 // "s2"
      case '3':	 // 1 string to match.
        return 144;	 // "s3"
      case '4':	 // 1 string to match.
        return 145;	 // "s4"
      case '5':	 // 1 string to match.
        return 146;	 // "s5"
      case '6':	 // 1 string to match.
        return 147;	 // "s6"
      case '7':	 // 1 string to match.
        return 148;	 // "s7"
      case '8':	 // 1 string to match.
        return 149;	 // "s8"
      case '9':	 // 1 string to match.
        return 150;	 // "s9"
      }
      break;
    case 't':	 // 8 strings to match.
      switch (Name[1]) {
      default: break;
      case '0':	 // 1 string to match.
        return 130;	 // "t0"
      case '1':	 // 1 string to match.
        return 131;	 // "t1"
      case '2':	 // 1 string to match.
        return 132;	 // "t2"
      case '3':	 // 1 string to match.
        return 153;	 // "t3"
      case '4':	 // 1 string to match.
        return 154;	 // "t4"
      case '5':	 // 1 string to match.
        return 155;	 // "t5"
      case '6':	 // 1 string to match.
        return 156;	 // "t6"
      case 'p':	 // 1 string to match.
        return 129;	 // "tp"
      }
      break;
    case 'x':	 // 3 strings to match.
      switch (Name[1]) {
      default: break;
      case '1':	 // 1 string to match.
        return 126;	 // "x1"
      case '2':	 // 1 string to match.
        return 127;	 // "x2"
      case '8':	 // 1 string to match.
        return 133;	 // "x8"
      }
      break;
    }
    break;
  case 3:	 // 2 strings to match.
    if (memcmp(Name.data()+0, "s1", 2) != 0)
      break;
    switch (Name[2]) {
    default: break;
    case '0':	 // 1 string to match.
      return 151;	 // "s10"
    case '1':	 // 1 string to match.
      return 152;	 // "s11"
    }
    break;
  }
  return 0;
}

#endif // GET_REGISTER_MATCHER


#ifdef GET_SUBTARGET_FEATURE_NAME
#undef GET_SUBTARGET_FEATURE_NAME

// User-level names for subtarget features that participate in
// instruction matching.
static const char *getSubtargetFeatureName(uint64_t Val) {
  return "(unknown)";
}

#endif // GET_SUBTARGET_FEATURE_NAME


#ifdef GET_MATCHER_IMPLEMENTATION
#undef GET_MATCHER_IMPLEMENTATION

static const uint8_t TiedAsmOperandTable[][3] = { /* empty  */ {0, 0, 0} };

namespace {
enum OperatorConversionKind {
  CVT_Done,
  CVT_Reg,
  CVT_Tied,
  CVT_95_Reg,
  CVT_95_addImmOperands,
  CVT_NUM_CONVERTERS
};

enum InstructionConversionKind {
  Convert_NoOperands,
  Convert__Reg1_3,
  Convert__Imm1_3,
  Convert__Reg1_2,
  Convert__Reg1_2__Reg1_3,
  Convert__Reg1_2__Imm1_3,
  Convert__Reg1_1,
  Convert__Reg1_1__Reg1_3,
  Convert__Reg1_1__Imm1_3,
  Convert__Reg1_1__Reg1_2,
  Convert__Reg1_1__Reg1_3__Reg1_2,
  Convert__Reg1_1__Reg1_2__Imm1_3,
  Convert__Imm1_5,
  Convert__Reg1_2__Imm1_5,
  Convert__Reg1_1__Imm1_5,
  Convert__Reg1_1__Reg1_2__Imm1_5,
  Convert__Imm1_2,
  Convert__Reg1_1__Imm1_2,
  Convert__Imm1_4,
  Convert__Reg1_1__Imm1_4,
  Convert__Imm1_1,
  Convert__Reg1_2__Imm1_1,
  Convert__Imm1_2__Imm1_1,
  Convert__Reg1_3__Imm1_2,
  Convert__Reg1_1__Reg1_2__Reg1_3,
  Convert__Reg1_1__Imm1_2__Reg1_3,
  Convert__Imm1_3__Imm1_2,
  Convert__Reg1_1__Imm1_3__Imm1_2,
  Convert__Reg1_4__Imm1_2,
  Convert__Reg1_1__Reg1_4__Imm1_2,
  Convert__Reg1_7__Imm1_4,
  Convert__Reg1_1__Reg1_7__Imm1_4,
  CVT_NUM_SIGNATURES
};

} // end anonymous namespace

static const uint8_t ConversionTable[CVT_NUM_SIGNATURES][7] = {
  // Convert_NoOperands
  { CVT_Done },
  // Convert__Reg1_3
  { CVT_95_Reg, 3, CVT_Done },
  // Convert__Imm1_3
  { CVT_95_addImmOperands, 3, CVT_Done },
  // Convert__Reg1_2
  { CVT_95_Reg, 2, CVT_Done },
  // Convert__Reg1_2__Reg1_3
  { CVT_95_Reg, 2, CVT_95_Reg, 3, CVT_Done },
  // Convert__Reg1_2__Imm1_3
  { CVT_95_Reg, 2, CVT_95_addImmOperands, 3, CVT_Done },
  // Convert__Reg1_1
  { CVT_95_Reg, 1, CVT_Done },
  // Convert__Reg1_1__Reg1_3
  { CVT_95_Reg, 1, CVT_95_Reg, 3, CVT_Done },
  // Convert__Reg1_1__Imm1_3
  { CVT_95_Reg, 1, CVT_95_addImmOperands, 3, CVT_Done },
  // Convert__Reg1_1__Reg1_2
  { CVT_95_Reg, 1, CVT_95_Reg, 2, CVT_Done },
  // Convert__Reg1_1__Reg1_3__Reg1_2
  { CVT_95_Reg, 1, CVT_95_Reg, 3, CVT_95_Reg, 2, CVT_Done },
  // Convert__Reg1_1__Reg1_2__Imm1_3
  { CVT_95_Reg, 1, CVT_95_Reg, 2, CVT_95_addImmOperands, 3, CVT_Done },
  // Convert__Imm1_5
  { CVT_95_addImmOperands, 5, CVT_Done },
  // Convert__Reg1_2__Imm1_5
  { CVT_95_Reg, 2, CVT_95_addImmOperands, 5, CVT_Done },
  // Convert__Reg1_1__Imm1_5
  { CVT_95_Reg, 1, CVT_95_addImmOperands, 5, CVT_Done },
  // Convert__Reg1_1__Reg1_2__Imm1_5
  { CVT_95_Reg, 1, CVT_95_Reg, 2, CVT_95_addImmOperands, 5, CVT_Done },
  // Convert__Imm1_2
  { CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Reg1_1__Imm1_2
  { CVT_95_Reg, 1, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Imm1_4
  { CVT_95_addImmOperands, 4, CVT_Done },
  // Convert__Reg1_1__Imm1_4
  { CVT_95_Reg, 1, CVT_95_addImmOperands, 4, CVT_Done },
  // Convert__Imm1_1
  { CVT_95_addImmOperands, 1, CVT_Done },
  // Convert__Reg1_2__Imm1_1
  { CVT_95_Reg, 2, CVT_95_addImmOperands, 1, CVT_Done },
  // Convert__Imm1_2__Imm1_1
  { CVT_95_addImmOperands, 2, CVT_95_addImmOperands, 1, CVT_Done },
  // Convert__Reg1_3__Imm1_2
  { CVT_95_Reg, 3, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Reg1_1__Reg1_2__Reg1_3
  { CVT_95_Reg, 1, CVT_95_Reg, 2, CVT_95_Reg, 3, CVT_Done },
  // Convert__Reg1_1__Imm1_2__Reg1_3
  { CVT_95_Reg, 1, CVT_95_addImmOperands, 2, CVT_95_Reg, 3, CVT_Done },
  // Convert__Imm1_3__Imm1_2
  { CVT_95_addImmOperands, 3, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Reg1_1__Imm1_3__Imm1_2
  { CVT_95_Reg, 1, CVT_95_addImmOperands, 3, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Reg1_4__Imm1_2
  { CVT_95_Reg, 4, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Reg1_1__Reg1_4__Imm1_2
  { CVT_95_Reg, 1, CVT_95_Reg, 4, CVT_95_addImmOperands, 2, CVT_Done },
  // Convert__Reg1_7__Imm1_4
  { CVT_95_Reg, 7, CVT_95_addImmOperands, 4, CVT_Done },
  // Convert__Reg1_1__Reg1_7__Imm1_4
  { CVT_95_Reg, 1, CVT_95_Reg, 7, CVT_95_addImmOperands, 4, CVT_Done },
};

void CodasipAsmParser::
convertToMCInst(unsigned Kind, MCInst &Inst, unsigned Opcode,
                const OperandVector &Operands) {
  assert(Kind < CVT_NUM_SIGNATURES && "Invalid signature!");
  const uint8_t *Converter = ConversionTable[Kind];
  unsigned OpIdx;
  Inst.setOpcode(Opcode);
  for (const uint8_t *p = Converter; *p; p+= 2) {
    OpIdx = *(p + 1);
    switch (*p) {
    default: llvm_unreachable("invalid conversion entry!");
    case CVT_Reg:
      static_cast<CodasipOperand&>(*Operands[OpIdx]).addRegOperands(Inst, 1);
      break;
    case CVT_Tied: {
      assert(OpIdx < (size_t)(std::end(TiedAsmOperandTable) -
                          std::begin(TiedAsmOperandTable)) &&
             "Tied operand not found");
      unsigned TiedResOpnd = TiedAsmOperandTable[OpIdx][0];
      if (TiedResOpnd != (uint8_t) -1)
        Inst.addOperand(Inst.getOperand(TiedResOpnd));
      break;
    }
    case CVT_95_Reg:
      static_cast<CodasipOperand&>(*Operands[OpIdx]).addRegOperands(Inst, 1);
      break;
    case CVT_95_addImmOperands:
      static_cast<CodasipOperand&>(*Operands[OpIdx]).addImmOperands(Inst, 1);
      break;
    }
  }
}

void CodasipAsmParser::
convertToMapAndConstraints(unsigned Kind,
                           const OperandVector &Operands) {
  assert(Kind < CVT_NUM_SIGNATURES && "Invalid signature!");
  unsigned NumMCOperands = 0;
  const uint8_t *Converter = ConversionTable[Kind];
  for (const uint8_t *p = Converter; *p; p+= 2) {
    switch (*p) {
    default: llvm_unreachable("invalid conversion entry!");
    case CVT_Reg:
      Operands[*(p + 1)]->setMCOperandNum(NumMCOperands);
      Operands[*(p + 1)]->setConstraint("r");
      ++NumMCOperands;
      break;
    case CVT_Tied:
      ++NumMCOperands;
      break;
    case CVT_95_Reg:
      Operands[*(p + 1)]->setMCOperandNum(NumMCOperands);
      Operands[*(p + 1)]->setConstraint("r");
      NumMCOperands += 1;
      break;
    case CVT_95_addImmOperands:
      Operands[*(p + 1)]->setMCOperandNum(NumMCOperands);
      Operands[*(p + 1)]->setConstraint("m");
      NumMCOperands += 1;
      break;
    }
  }
}

namespace {

/// MatchClassKind - The kinds of classes which participate in
/// instruction matching.
enum MatchClassKind {
  InvalidMatchClass = 0,
  OptionalMatchClass = 1,
  MCK__PCT_hi, // '%hi'
  MCK__PCT_lo, // '%lo'
  MCK__PCT_pcrel_95_hi, // '%pcrel_hi'
  MCK__PCT_pcrel_95_lo, // '%pcrel_lo'
  MCK__40_, // '('
  MCK__41_, // ')'
  MCK_add, // 'add'
  MCK_addi, // 'addi'
  MCK_and, // 'and'
  MCK_andi, // 'andi'
  MCK_auipc, // 'auipc'
  MCK_beq, // 'beq'
  MCK_beqz, // 'beqz'
  MCK_bge, // 'bge'
  MCK_bgeu, // 'bgeu'
  MCK_bgez, // 'bgez'
  MCK_bgt, // 'bgt'
  MCK_bgtu, // 'bgtu'
  MCK_bgtz, // 'bgtz'
  MCK_ble, // 'ble'
  MCK_bleu, // 'bleu'
  MCK_blez, // 'blez'
  MCK_blt, // 'blt'
  MCK_bltu, // 'bltu'
  MCK_bltz, // 'bltz'
  MCK_bne, // 'bne'
  MCK_bnez, // 'bnez'
  MCK_call, // 'call'
  MCK_call_DOT_reg, // 'call.reg'
  MCK_csrc, // 'csrc'
  MCK_csrci, // 'csrci'
  MCK_csrr, // 'csrr'
  MCK_csrrc, // 'csrrc'
  MCK_csrrci, // 'csrrci'
  MCK_csrrs, // 'csrrs'
  MCK_csrrsi, // 'csrrsi'
  MCK_csrrw, // 'csrrw'
  MCK_csrrwi, // 'csrrwi'
  MCK_csrs, // 'csrs'
  MCK_csrsi, // 'csrsi'
  MCK_csrw, // 'csrw'
  MCK_csrwi, // 'csrwi'
  MCK_ebreak, // 'ebreak'
  MCK_ecall, // 'ecall'
  MCK_fence, // 'fence'
  MCK_fence_DOT_i, // 'fence.i'
  MCK_get_DOT_pc, // 'get.pc'
  MCK_hackaton_95_custom_95_instr_95_a, // 'hackaton_custom_instr_a'
  MCK_hackaton_95_custom_95_instr_95_b, // 'hackaton_custom_instr_b'
  MCK_hackaton_95_custom_95_instr_95_c, // 'hackaton_custom_instr_c'
  MCK_hackaton_95_custom_95_instr_95_d, // 'hackaton_custom_instr_d'
  MCK_hackaton_95_custom_95_instr_95_e, // 'hackaton_custom_instr_e'
  MCK_hint, // 'hint'
  MCK_i, // 'i'
  MCK_io, // 'io'
  MCK_ior, // 'ior'
  MCK_iorw, // 'iorw'
  MCK_iow, // 'iow'
  MCK_ir, // 'ir'
  MCK_irw, // 'irw'
  MCK_iw, // 'iw'
  MCK_j, // 'j'
  MCK_jal, // 'jal'
  MCK_jalr, // 'jalr'
  MCK_jr, // 'jr'
  MCK_la, // 'la'
  MCK_lb, // 'lb'
  MCK_lbu, // 'lbu'
  MCK_lh, // 'lh'
  MCK_lhu, // 'lhu'
  MCK_li, // 'li'
  MCK_lla, // 'lla'
  MCK_lui, // 'lui'
  MCK_lw, // 'lw'
  MCK_move, // 'move'
  MCK_mret, // 'mret'
  MCK_mv, // 'mv'
  MCK_neg, // 'neg'
  MCK_nop, // 'nop'
  MCK_not, // 'not'
  MCK_o, // 'o'
  MCK_or, // 'or'
  MCK_ori, // 'ori'
  MCK_orw, // 'orw'
  MCK_ow, // 'ow'
  MCK_r, // 'r'
  MCK_rdcycle, // 'rdcycle'
  MCK_rdcycleh, // 'rdcycleh'
  MCK_rdinstret, // 'rdinstret'
  MCK_rdinstreth, // 'rdinstreth'
  MCK_rdtime, // 'rdtime'
  MCK_rdtimeh, // 'rdtimeh'
  MCK_ret, // 'ret'
  MCK_rw, // 'rw'
  MCK_sb, // 'sb'
  MCK_scall, // 'scall'
  MCK_seqz, // 'seqz'
  MCK_sgtz, // 'sgtz'
  MCK_sh, // 'sh'
  MCK_sll, // 'sll'
  MCK_slli, // 'slli'
  MCK_slt, // 'slt'
  MCK_slti, // 'slti'
  MCK_sltiu, // 'sltiu'
  MCK_sltu, // 'sltu'
  MCK_sltz, // 'sltz'
  MCK_snez, // 'snez'
  MCK_sra, // 'sra'
  MCK_srai, // 'srai'
  MCK_srl, // 'srl'
  MCK_srli, // 'srli'
  MCK_sub, // 'sub'
  MCK_sw, // 'sw'
  MCK_tail, // 'tail'
  MCK_unimp, // 'unimp'
  MCK_w, // 'w'
  MCK_wfi, // 'wfi'
  MCK_x0, // 'x0'
  MCK_xor, // 'xor'
  MCK_xori, // 'xori'
  MCK_zero, // 'zero'
  MCK_LAST_TOKEN = MCK_zero,
  MCK_r_csr_marchid, // register class 'r_csr_marchid'
  MCK_r_csr_mcause, // register class 'r_csr_mcause'
  MCK_r_csr_mcountinhibit, // register class 'r_csr_mcountinhibit'
  MCK_r_csr_mcycle, // register class 'r_csr_mcycle'
  MCK_r_csr_mepc, // register class 'r_csr_mepc'
  MCK_r_csr_mhartid, // register class 'r_csr_mhartid'
  MCK_r_csr_mie, // register class 'r_csr_mie'
  MCK_r_csr_minstret, // register class 'r_csr_minstret'
  MCK_r_csr_mip, // register class 'r_csr_mip'
  MCK_r_csr_misa, // register class 'r_csr_misa'
  MCK_r_csr_mscratch, // register class 'r_csr_mscratch'
  MCK_r_csr_mstatus, // register class 'r_csr_mstatus'
  MCK_r_csr_mtval, // register class 'r_csr_mtval'
  MCK_r_csr_mtvec, // register class 'r_csr_mtvec'
  MCK_r_csr_nmi, // register class 'r_csr_nmi'
  MCK_r_csr_nmi_mtval, // register class 'r_csr_nmi_mtval'
  MCK_r_nmi_handler, // register class 'r_nmi_handler'
  MCK_regs, // register class 'regs'
  MCK_rf_gpr, // register class 'rf_gpr'
  MCK_codasip_physical_regs_csr, // register class 'codasip_physical_regs_csr,regs_csr'
  MCK_LAST_REGISTER = MCK_codasip_physical_regs_csr,
  MCK_Imm, // user defined class 'ImmAsmOperand'
  NumMatchClassKinds
};

}

static unsigned getDiagKindFromRegisterClass(MatchClassKind RegisterClass) {
  return MCTargetAsmParser::Match_InvalidOperand;
}

static MatchClassKind matchTokenString(StringRef Name) {
  switch (Name.size()) {
  default: break;
  case 1:	 // 7 strings to match.
    switch (Name[0]) {
    default: break;
    case '(':	 // 1 string to match.
      return MCK__40_;	 // "("
    case ')':	 // 1 string to match.
      return MCK__41_;	 // ")"
    case 'i':	 // 1 string to match.
      return MCK_i;	 // "i"
    case 'j':	 // 1 string to match.
      return MCK_j;	 // "j"
    case 'o':	 // 1 string to match.
      return MCK_o;	 // "o"
    case 'r':	 // 1 string to match.
      return MCK_r;	 // "r"
    case 'w':	 // 1 string to match.
      return MCK_w;	 // "w"
    }
    break;
  case 2:	 // 17 strings to match.
    switch (Name[0]) {
    default: break;
    case 'i':	 // 3 strings to match.
      switch (Name[1]) {
      default: break;
      case 'o':	 // 1 string to match.
        return MCK_io;	 // "io"
      case 'r':	 // 1 string to match.
        return MCK_ir;	 // "ir"
      case 'w':	 // 1 string to match.
        return MCK_iw;	 // "iw"
      }
      break;
    case 'j':	 // 1 string to match.
      if (Name[1] != 'r')
        break;
      return MCK_jr;	 // "jr"
    case 'l':	 // 5 strings to match.
      switch (Name[1]) {
      default: break;
      case 'a':	 // 1 string to match.
        return MCK_la;	 // "la"
      case 'b':	 // 1 string to match.
        return MCK_lb;	 // "lb"
      case 'h':	 // 1 string to match.
        return MCK_lh;	 // "lh"
      case 'i':	 // 1 string to match.
        return MCK_li;	 // "li"
      case 'w':	 // 1 string to match.
        return MCK_lw;	 // "lw"
      }
      break;
    case 'm':	 // 1 string to match.
      if (Name[1] != 'v')
        break;
      return MCK_mv;	 // "mv"
    case 'o':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'r':	 // 1 string to match.
        return MCK_or;	 // "or"
      case 'w':	 // 1 string to match.
        return MCK_ow;	 // "ow"
      }
      break;
    case 'r':	 // 1 string to match.
      if (Name[1] != 'w')
        break;
      return MCK_rw;	 // "rw"
    case 's':	 // 3 strings to match.
      switch (Name[1]) {
      default: break;
      case 'b':	 // 1 string to match.
        return MCK_sb;	 // "sb"
      case 'h':	 // 1 string to match.
        return MCK_sh;	 // "sh"
      case 'w':	 // 1 string to match.
        return MCK_sw;	 // "sw"
      }
      break;
    case 'x':	 // 1 string to match.
      if (Name[1] != '0')
        break;
      return MCK_x0;	 // "x0"
    }
    break;
  case 3:	 // 31 strings to match.
    switch (Name[0]) {
    default: break;
    case '%':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'h':	 // 1 string to match.
        if (Name[2] != 'i')
          break;
        return MCK__PCT_hi;	 // "%hi"
      case 'l':	 // 1 string to match.
        if (Name[2] != 'o')
          break;
        return MCK__PCT_lo;	 // "%lo"
      }
      break;
    case 'a':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'd':	 // 1 string to match.
        if (Name[2] != 'd')
          break;
        return MCK_add;	 // "add"
      case 'n':	 // 1 string to match.
        if (Name[2] != 'd')
          break;
        return MCK_and;	 // "and"
      }
      break;
    case 'b':	 // 6 strings to match.
      switch (Name[1]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (Name[2] != 'q')
          break;
        return MCK_beq;	 // "beq"
      case 'g':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'e':	 // 1 string to match.
          return MCK_bge;	 // "bge"
        case 't':	 // 1 string to match.
          return MCK_bgt;	 // "bgt"
        }
        break;
      case 'l':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'e':	 // 1 string to match.
          return MCK_ble;	 // "ble"
        case 't':	 // 1 string to match.
          return MCK_blt;	 // "blt"
        }
        break;
      case 'n':	 // 1 string to match.
        if (Name[2] != 'e')
          break;
        return MCK_bne;	 // "bne"
      }
      break;
    case 'i':	 // 3 strings to match.
      switch (Name[1]) {
      default: break;
      case 'o':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'r':	 // 1 string to match.
          return MCK_ior;	 // "ior"
        case 'w':	 // 1 string to match.
          return MCK_iow;	 // "iow"
        }
        break;
      case 'r':	 // 1 string to match.
        if (Name[2] != 'w')
          break;
        return MCK_irw;	 // "irw"
      }
      break;
    case 'j':	 // 1 string to match.
      if (memcmp(Name.data()+1, "al", 2) != 0)
        break;
      return MCK_jal;	 // "jal"
    case 'l':	 // 4 strings to match.
      switch (Name[1]) {
      default: break;
      case 'b':	 // 1 string to match.
        if (Name[2] != 'u')
          break;
        return MCK_lbu;	 // "lbu"
      case 'h':	 // 1 string to match.
        if (Name[2] != 'u')
          break;
        return MCK_lhu;	 // "lhu"
      case 'l':	 // 1 string to match.
        if (Name[2] != 'a')
          break;
        return MCK_lla;	 // "lla"
      case 'u':	 // 1 string to match.
        if (Name[2] != 'i')
          break;
        return MCK_lui;	 // "lui"
      }
      break;
    case 'n':	 // 3 strings to match.
      switch (Name[1]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (Name[2] != 'g')
          break;
        return MCK_neg;	 // "neg"
      case 'o':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'p':	 // 1 string to match.
          return MCK_nop;	 // "nop"
        case 't':	 // 1 string to match.
          return MCK_not;	 // "not"
        }
        break;
      }
      break;
    case 'o':	 // 2 strings to match.
      if (Name[1] != 'r')
        break;
      switch (Name[2]) {
      default: break;
      case 'i':	 // 1 string to match.
        return MCK_ori;	 // "ori"
      case 'w':	 // 1 string to match.
        return MCK_orw;	 // "orw"
      }
      break;
    case 'r':	 // 1 string to match.
      if (memcmp(Name.data()+1, "et", 2) != 0)
        break;
      return MCK_ret;	 // "ret"
    case 's':	 // 5 strings to match.
      switch (Name[1]) {
      default: break;
      case 'l':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'l':	 // 1 string to match.
          return MCK_sll;	 // "sll"
        case 't':	 // 1 string to match.
          return MCK_slt;	 // "slt"
        }
        break;
      case 'r':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'a':	 // 1 string to match.
          return MCK_sra;	 // "sra"
        case 'l':	 // 1 string to match.
          return MCK_srl;	 // "srl"
        }
        break;
      case 'u':	 // 1 string to match.
        if (Name[2] != 'b')
          break;
        return MCK_sub;	 // "sub"
      }
      break;
    case 'w':	 // 1 string to match.
      if (memcmp(Name.data()+1, "fi", 2) != 0)
        break;
      return MCK_wfi;	 // "wfi"
    case 'x':	 // 1 string to match.
      if (memcmp(Name.data()+1, "or", 2) != 0)
        break;
      return MCK_xor;	 // "xor"
    }
    break;
  case 4:	 // 34 strings to match.
    switch (Name[0]) {
    default: break;
    case 'a':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'd':	 // 1 string to match.
        if (memcmp(Name.data()+2, "di", 2) != 0)
          break;
        return MCK_addi;	 // "addi"
      case 'n':	 // 1 string to match.
        if (memcmp(Name.data()+2, "di", 2) != 0)
          break;
        return MCK_andi;	 // "andi"
      }
      break;
    case 'b':	 // 10 strings to match.
      switch (Name[1]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (memcmp(Name.data()+2, "qz", 2) != 0)
          break;
        return MCK_beqz;	 // "beqz"
      case 'g':	 // 4 strings to match.
        switch (Name[2]) {
        default: break;
        case 'e':	 // 2 strings to match.
          switch (Name[3]) {
          default: break;
          case 'u':	 // 1 string to match.
            return MCK_bgeu;	 // "bgeu"
          case 'z':	 // 1 string to match.
            return MCK_bgez;	 // "bgez"
          }
          break;
        case 't':	 // 2 strings to match.
          switch (Name[3]) {
          default: break;
          case 'u':	 // 1 string to match.
            return MCK_bgtu;	 // "bgtu"
          case 'z':	 // 1 string to match.
            return MCK_bgtz;	 // "bgtz"
          }
          break;
        }
        break;
      case 'l':	 // 4 strings to match.
        switch (Name[2]) {
        default: break;
        case 'e':	 // 2 strings to match.
          switch (Name[3]) {
          default: break;
          case 'u':	 // 1 string to match.
            return MCK_bleu;	 // "bleu"
          case 'z':	 // 1 string to match.
            return MCK_blez;	 // "blez"
          }
          break;
        case 't':	 // 2 strings to match.
          switch (Name[3]) {
          default: break;
          case 'u':	 // 1 string to match.
            return MCK_bltu;	 // "bltu"
          case 'z':	 // 1 string to match.
            return MCK_bltz;	 // "bltz"
          }
          break;
        }
        break;
      case 'n':	 // 1 string to match.
        if (memcmp(Name.data()+2, "ez", 2) != 0)
          break;
        return MCK_bnez;	 // "bnez"
      }
      break;
    case 'c':	 // 5 strings to match.
      switch (Name[1]) {
      default: break;
      case 'a':	 // 1 string to match.
        if (memcmp(Name.data()+2, "ll", 2) != 0)
          break;
        return MCK_call;	 // "call"
      case 's':	 // 4 strings to match.
        if (Name[2] != 'r')
          break;
        switch (Name[3]) {
        default: break;
        case 'c':	 // 1 string to match.
          return MCK_csrc;	 // "csrc"
        case 'r':	 // 1 string to match.
          return MCK_csrr;	 // "csrr"
        case 's':	 // 1 string to match.
          return MCK_csrs;	 // "csrs"
        case 'w':	 // 1 string to match.
          return MCK_csrw;	 // "csrw"
        }
        break;
      }
      break;
    case 'h':	 // 1 string to match.
      if (memcmp(Name.data()+1, "int", 3) != 0)
        break;
      return MCK_hint;	 // "hint"
    case 'i':	 // 1 string to match.
      if (memcmp(Name.data()+1, "orw", 3) != 0)
        break;
      return MCK_iorw;	 // "iorw"
    case 'j':	 // 1 string to match.
      if (memcmp(Name.data()+1, "alr", 3) != 0)
        break;
      return MCK_jalr;	 // "jalr"
    case 'm':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'o':	 // 1 string to match.
        if (memcmp(Name.data()+2, "ve", 2) != 0)
          break;
        return MCK_move;	 // "move"
      case 'r':	 // 1 string to match.
        if (memcmp(Name.data()+2, "et", 2) != 0)
          break;
        return MCK_mret;	 // "mret"
      }
      break;
    case 's':	 // 9 strings to match.
      switch (Name[1]) {
      default: break;
      case 'e':	 // 1 string to match.
        if (memcmp(Name.data()+2, "qz", 2) != 0)
          break;
        return MCK_seqz;	 // "seqz"
      case 'g':	 // 1 string to match.
        if (memcmp(Name.data()+2, "tz", 2) != 0)
          break;
        return MCK_sgtz;	 // "sgtz"
      case 'l':	 // 4 strings to match.
        switch (Name[2]) {
        default: break;
        case 'l':	 // 1 string to match.
          if (Name[3] != 'i')
            break;
          return MCK_slli;	 // "slli"
        case 't':	 // 3 strings to match.
          switch (Name[3]) {
          default: break;
          case 'i':	 // 1 string to match.
            return MCK_slti;	 // "slti"
          case 'u':	 // 1 string to match.
            return MCK_sltu;	 // "sltu"
          case 'z':	 // 1 string to match.
            return MCK_sltz;	 // "sltz"
          }
          break;
        }
        break;
      case 'n':	 // 1 string to match.
        if (memcmp(Name.data()+2, "ez", 2) != 0)
          break;
        return MCK_snez;	 // "snez"
      case 'r':	 // 2 strings to match.
        switch (Name[2]) {
        default: break;
        case 'a':	 // 1 string to match.
          if (Name[3] != 'i')
            break;
          return MCK_srai;	 // "srai"
        case 'l':	 // 1 string to match.
          if (Name[3] != 'i')
            break;
          return MCK_srli;	 // "srli"
        }
        break;
      }
      break;
    case 't':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ail", 3) != 0)
        break;
      return MCK_tail;	 // "tail"
    case 'x':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ori", 3) != 0)
        break;
      return MCK_xori;	 // "xori"
    case 'z':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ero", 3) != 0)
        break;
      return MCK_zero;	 // "zero"
    }
    break;
  case 5:	 // 12 strings to match.
    switch (Name[0]) {
    default: break;
    case 'a':	 // 1 string to match.
      if (memcmp(Name.data()+1, "uipc", 4) != 0)
        break;
      return MCK_auipc;	 // "auipc"
    case 'c':	 // 6 strings to match.
      if (memcmp(Name.data()+1, "sr", 2) != 0)
        break;
      switch (Name[3]) {
      default: break;
      case 'c':	 // 1 string to match.
        if (Name[4] != 'i')
          break;
        return MCK_csrci;	 // "csrci"
      case 'r':	 // 3 strings to match.
        switch (Name[4]) {
        default: break;
        case 'c':	 // 1 string to match.
          return MCK_csrrc;	 // "csrrc"
        case 's':	 // 1 string to match.
          return MCK_csrrs;	 // "csrrs"
        case 'w':	 // 1 string to match.
          return MCK_csrrw;	 // "csrrw"
        }
        break;
      case 's':	 // 1 string to match.
        if (Name[4] != 'i')
          break;
        return MCK_csrsi;	 // "csrsi"
      case 'w':	 // 1 string to match.
        if (Name[4] != 'i')
          break;
        return MCK_csrwi;	 // "csrwi"
      }
      break;
    case 'e':	 // 1 string to match.
      if (memcmp(Name.data()+1, "call", 4) != 0)
        break;
      return MCK_ecall;	 // "ecall"
    case 'f':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ence", 4) != 0)
        break;
      return MCK_fence;	 // "fence"
    case 's':	 // 2 strings to match.
      switch (Name[1]) {
      default: break;
      case 'c':	 // 1 string to match.
        if (memcmp(Name.data()+2, "all", 3) != 0)
          break;
        return MCK_scall;	 // "scall"
      case 'l':	 // 1 string to match.
        if (memcmp(Name.data()+2, "tiu", 3) != 0)
          break;
        return MCK_sltiu;	 // "sltiu"
      }
      break;
    case 'u':	 // 1 string to match.
      if (memcmp(Name.data()+1, "nimp", 4) != 0)
        break;
      return MCK_unimp;	 // "unimp"
    }
    break;
  case 6:	 // 6 strings to match.
    switch (Name[0]) {
    default: break;
    case 'c':	 // 3 strings to match.
      if (memcmp(Name.data()+1, "srr", 3) != 0)
        break;
      switch (Name[4]) {
      default: break;
      case 'c':	 // 1 string to match.
        if (Name[5] != 'i')
          break;
        return MCK_csrrci;	 // "csrrci"
      case 's':	 // 1 string to match.
        if (Name[5] != 'i')
          break;
        return MCK_csrrsi;	 // "csrrsi"
      case 'w':	 // 1 string to match.
        if (Name[5] != 'i')
          break;
        return MCK_csrrwi;	 // "csrrwi"
      }
      break;
    case 'e':	 // 1 string to match.
      if (memcmp(Name.data()+1, "break", 5) != 0)
        break;
      return MCK_ebreak;	 // "ebreak"
    case 'g':	 // 1 string to match.
      if (memcmp(Name.data()+1, "et.pc", 5) != 0)
        break;
      return MCK_get_DOT_pc;	 // "get.pc"
    case 'r':	 // 1 string to match.
      if (memcmp(Name.data()+1, "dtime", 5) != 0)
        break;
      return MCK_rdtime;	 // "rdtime"
    }
    break;
  case 7:	 // 3 strings to match.
    switch (Name[0]) {
    default: break;
    case 'f':	 // 1 string to match.
      if (memcmp(Name.data()+1, "ence.i", 6) != 0)
        break;
      return MCK_fence_DOT_i;	 // "fence.i"
    case 'r':	 // 2 strings to match.
      if (Name[1] != 'd')
        break;
      switch (Name[2]) {
      default: break;
      case 'c':	 // 1 string to match.
        if (memcmp(Name.data()+3, "ycle", 4) != 0)
          break;
        return MCK_rdcycle;	 // "rdcycle"
      case 't':	 // 1 string to match.
        if (memcmp(Name.data()+3, "imeh", 4) != 0)
          break;
        return MCK_rdtimeh;	 // "rdtimeh"
      }
      break;
    }
    break;
  case 8:	 // 2 strings to match.
    switch (Name[0]) {
    default: break;
    case 'c':	 // 1 string to match.
      if (memcmp(Name.data()+1, "all.reg", 7) != 0)
        break;
      return MCK_call_DOT_reg;	 // "call.reg"
    case 'r':	 // 1 string to match.
      if (memcmp(Name.data()+1, "dcycleh", 7) != 0)
        break;
      return MCK_rdcycleh;	 // "rdcycleh"
    }
    break;
  case 9:	 // 3 strings to match.
    switch (Name[0]) {
    default: break;
    case '%':	 // 2 strings to match.
      if (memcmp(Name.data()+1, "pcrel_", 6) != 0)
        break;
      switch (Name[7]) {
      default: break;
      case 'h':	 // 1 string to match.
        if (Name[8] != 'i')
          break;
        return MCK__PCT_pcrel_95_hi;	 // "%pcrel_hi"
      case 'l':	 // 1 string to match.
        if (Name[8] != 'o')
          break;
        return MCK__PCT_pcrel_95_lo;	 // "%pcrel_lo"
      }
      break;
    case 'r':	 // 1 string to match.
      if (memcmp(Name.data()+1, "dinstret", 8) != 0)
        break;
      return MCK_rdinstret;	 // "rdinstret"
    }
    break;
  case 10:	 // 1 string to match.
    if (memcmp(Name.data()+0, "rdinstreth", 10) != 0)
      break;
    return MCK_rdinstreth;	 // "rdinstreth"
  case 23:	 // 5 strings to match.
    if (memcmp(Name.data()+0, "hackaton_custom_instr_", 22) != 0)
      break;
    switch (Name[22]) {
    default: break;
    case 'a':	 // 1 string to match.
      return MCK_hackaton_95_custom_95_instr_95_a;	 // "hackaton_custom_instr_a"
    case 'b':	 // 1 string to match.
      return MCK_hackaton_95_custom_95_instr_95_b;	 // "hackaton_custom_instr_b"
    case 'c':	 // 1 string to match.
      return MCK_hackaton_95_custom_95_instr_95_c;	 // "hackaton_custom_instr_c"
    case 'd':	 // 1 string to match.
      return MCK_hackaton_95_custom_95_instr_95_d;	 // "hackaton_custom_instr_d"
    case 'e':	 // 1 string to match.
      return MCK_hackaton_95_custom_95_instr_95_e;	 // "hackaton_custom_instr_e"
    }
    break;
  }
  return InvalidMatchClass;
}

/// isSubclass - Compute whether \p A is a subclass of \p B.
static bool isSubclass(MatchClassKind A, MatchClassKind B) {
  if (A == B)
    return true;

  switch (A) {
  default:
    return false;

  case MCK_regs:
    return B == MCK_rf_gpr;
  }
}

static unsigned validateOperandClass(MCParsedAsmOperand &GOp, MatchClassKind Kind) {
  CodasipOperand &Operand = (CodasipOperand&)GOp;
  if (Kind == InvalidMatchClass)
    return MCTargetAsmParser::Match_InvalidOperand;

  if (Operand.isToken() && Kind <= MCK_LAST_TOKEN)
    return isSubclass(matchTokenString(Operand.getToken()), Kind) ?
             MCTargetAsmParser::Match_Success :
             MCTargetAsmParser::Match_InvalidOperand;

  switch (Kind) {
  default: break;
  // 'Imm' class
  case MCK_Imm: {
    DiagnosticPredicate DP(Operand.isImm());
    if (DP.isMatch())
      return MCTargetAsmParser::Match_Success;
    break;
    }
  } // end switch (Kind)

  if (Operand.isReg()) {
    MatchClassKind OpKind;
    switch (Operand.getReg()) {
    default: OpKind = InvalidMatchClass; break;
    case  Codasip::r_csr_marchid_0: OpKind = MCK_r_csr_marchid; break;
    case  Codasip::r_csr_mcause_0: OpKind = MCK_r_csr_mcause; break;
    case  Codasip::r_csr_mcountinhibit_0: OpKind = MCK_r_csr_mcountinhibit; break;
    case  Codasip::r_csr_mcycle_0: OpKind = MCK_r_csr_mcycle; break;
    case  Codasip::r_csr_mepc_0: OpKind = MCK_r_csr_mepc; break;
    case  Codasip::r_csr_mhartid_0: OpKind = MCK_r_csr_mhartid; break;
    case  Codasip::r_csr_mie_0: OpKind = MCK_r_csr_mie; break;
    case  Codasip::r_csr_minstret_0: OpKind = MCK_r_csr_minstret; break;
    case  Codasip::r_csr_mip_0: OpKind = MCK_r_csr_mip; break;
    case  Codasip::r_csr_misa_0: OpKind = MCK_r_csr_misa; break;
    case  Codasip::r_csr_mscratch_0: OpKind = MCK_r_csr_mscratch; break;
    case  Codasip::r_csr_mstatus_0: OpKind = MCK_r_csr_mstatus; break;
    case  Codasip::r_csr_mtval_0: OpKind = MCK_r_csr_mtval; break;
    case  Codasip::r_csr_mtvec_0: OpKind = MCK_r_csr_mtvec; break;
    case  Codasip::r_csr_nmi_0: OpKind = MCK_r_csr_nmi; break;
    case  Codasip::r_csr_nmi_mtval_0: OpKind = MCK_r_csr_nmi_mtval; break;
    case  Codasip::r_nmi_handler_0: OpKind = MCK_r_nmi_handler; break;
    case  Codasip::rf_gpr_0: OpKind = MCK_rf_gpr; break;
    case  Codasip::rf_gpr_1: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_2: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_3: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_4: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_5: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_6: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_7: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_8: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_9: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_10: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_11: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_12: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_13: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_14: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_15: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_16: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_17: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_18: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_19: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_20: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_21: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_22: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_23: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_24: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_25: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_26: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_27: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_28: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_29: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_30: OpKind = MCK_regs; break;
    case  Codasip::rf_gpr_31: OpKind = MCK_regs; break;
    case  Codasip::codasip_physical_regs_csr_768: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_769: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_772: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_773: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_800: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_803: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_804: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_805: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_806: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_807: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_808: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_809: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_810: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_811: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_812: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_813: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_814: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_815: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_816: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_817: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_818: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_819: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_820: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_821: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_822: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_823: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_824: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_825: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_826: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_827: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_828: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_829: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_830: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_831: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_832: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_833: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_834: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_835: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_836: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2816: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2818: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2819: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2820: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2821: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2822: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2823: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2824: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2825: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2826: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2827: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2828: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2829: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2830: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2831: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2832: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2833: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2834: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2835: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2836: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2837: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2838: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2839: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2840: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2841: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2842: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2843: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2844: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2845: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2846: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2847: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2944: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2946: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2947: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2948: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2949: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2950: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2951: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2952: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2953: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2954: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2955: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2956: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2957: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2958: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2959: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2960: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2961: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2962: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2963: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2964: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2965: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2966: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2967: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2968: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2969: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2970: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2971: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2972: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2973: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2974: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_2975: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_3857: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_3858: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_3859: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_3860: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_4033: OpKind = MCK_codasip_physical_regs_csr; break;
    case  Codasip::codasip_physical_regs_csr_4038: OpKind = MCK_codasip_physical_regs_csr; break;
    }
    return isSubclass(OpKind, Kind) ? (unsigned)MCTargetAsmParser::Match_Success :
                                      getDiagKindFromRegisterClass(Kind);
  }

  if (Kind > MCK_LAST_TOKEN && Kind <= MCK_LAST_REGISTER)
    return getDiagKindFromRegisterClass(Kind);

  return MCTargetAsmParser::Match_InvalidOperand;
}

#ifndef NDEBUG
const char *getMatchClassName(MatchClassKind Kind) {
  switch (Kind) {
  case InvalidMatchClass: return "InvalidMatchClass";
  case OptionalMatchClass: return "OptionalMatchClass";
  case MCK__PCT_hi: return "MCK__PCT_hi";
  case MCK__PCT_lo: return "MCK__PCT_lo";
  case MCK__PCT_pcrel_95_hi: return "MCK__PCT_pcrel_95_hi";
  case MCK__PCT_pcrel_95_lo: return "MCK__PCT_pcrel_95_lo";
  case MCK__40_: return "MCK__40_";
  case MCK__41_: return "MCK__41_";
  case MCK_add: return "MCK_add";
  case MCK_addi: return "MCK_addi";
  case MCK_and: return "MCK_and";
  case MCK_andi: return "MCK_andi";
  case MCK_auipc: return "MCK_auipc";
  case MCK_beq: return "MCK_beq";
  case MCK_beqz: return "MCK_beqz";
  case MCK_bge: return "MCK_bge";
  case MCK_bgeu: return "MCK_bgeu";
  case MCK_bgez: return "MCK_bgez";
  case MCK_bgt: return "MCK_bgt";
  case MCK_bgtu: return "MCK_bgtu";
  case MCK_bgtz: return "MCK_bgtz";
  case MCK_ble: return "MCK_ble";
  case MCK_bleu: return "MCK_bleu";
  case MCK_blez: return "MCK_blez";
  case MCK_blt: return "MCK_blt";
  case MCK_bltu: return "MCK_bltu";
  case MCK_bltz: return "MCK_bltz";
  case MCK_bne: return "MCK_bne";
  case MCK_bnez: return "MCK_bnez";
  case MCK_call: return "MCK_call";
  case MCK_call_DOT_reg: return "MCK_call_DOT_reg";
  case MCK_csrc: return "MCK_csrc";
  case MCK_csrci: return "MCK_csrci";
  case MCK_csrr: return "MCK_csrr";
  case MCK_csrrc: return "MCK_csrrc";
  case MCK_csrrci: return "MCK_csrrci";
  case MCK_csrrs: return "MCK_csrrs";
  case MCK_csrrsi: return "MCK_csrrsi";
  case MCK_csrrw: return "MCK_csrrw";
  case MCK_csrrwi: return "MCK_csrrwi";
  case MCK_csrs: return "MCK_csrs";
  case MCK_csrsi: return "MCK_csrsi";
  case MCK_csrw: return "MCK_csrw";
  case MCK_csrwi: return "MCK_csrwi";
  case MCK_ebreak: return "MCK_ebreak";
  case MCK_ecall: return "MCK_ecall";
  case MCK_fence: return "MCK_fence";
  case MCK_fence_DOT_i: return "MCK_fence_DOT_i";
  case MCK_get_DOT_pc: return "MCK_get_DOT_pc";
  case MCK_hackaton_95_custom_95_instr_95_a: return "MCK_hackaton_95_custom_95_instr_95_a";
  case MCK_hackaton_95_custom_95_instr_95_b: return "MCK_hackaton_95_custom_95_instr_95_b";
  case MCK_hackaton_95_custom_95_instr_95_c: return "MCK_hackaton_95_custom_95_instr_95_c";
  case MCK_hackaton_95_custom_95_instr_95_d: return "MCK_hackaton_95_custom_95_instr_95_d";
  case MCK_hackaton_95_custom_95_instr_95_e: return "MCK_hackaton_95_custom_95_instr_95_e";
  case MCK_hint: return "MCK_hint";
  case MCK_i: return "MCK_i";
  case MCK_io: return "MCK_io";
  case MCK_ior: return "MCK_ior";
  case MCK_iorw: return "MCK_iorw";
  case MCK_iow: return "MCK_iow";
  case MCK_ir: return "MCK_ir";
  case MCK_irw: return "MCK_irw";
  case MCK_iw: return "MCK_iw";
  case MCK_j: return "MCK_j";
  case MCK_jal: return "MCK_jal";
  case MCK_jalr: return "MCK_jalr";
  case MCK_jr: return "MCK_jr";
  case MCK_la: return "MCK_la";
  case MCK_lb: return "MCK_lb";
  case MCK_lbu: return "MCK_lbu";
  case MCK_lh: return "MCK_lh";
  case MCK_lhu: return "MCK_lhu";
  case MCK_li: return "MCK_li";
  case MCK_lla: return "MCK_lla";
  case MCK_lui: return "MCK_lui";
  case MCK_lw: return "MCK_lw";
  case MCK_move: return "MCK_move";
  case MCK_mret: return "MCK_mret";
  case MCK_mv: return "MCK_mv";
  case MCK_neg: return "MCK_neg";
  case MCK_nop: return "MCK_nop";
  case MCK_not: return "MCK_not";
  case MCK_o: return "MCK_o";
  case MCK_or: return "MCK_or";
  case MCK_ori: return "MCK_ori";
  case MCK_orw: return "MCK_orw";
  case MCK_ow: return "MCK_ow";
  case MCK_r: return "MCK_r";
  case MCK_rdcycle: return "MCK_rdcycle";
  case MCK_rdcycleh: return "MCK_rdcycleh";
  case MCK_rdinstret: return "MCK_rdinstret";
  case MCK_rdinstreth: return "MCK_rdinstreth";
  case MCK_rdtime: return "MCK_rdtime";
  case MCK_rdtimeh: return "MCK_rdtimeh";
  case MCK_ret: return "MCK_ret";
  case MCK_rw: return "MCK_rw";
  case MCK_sb: return "MCK_sb";
  case MCK_scall: return "MCK_scall";
  case MCK_seqz: return "MCK_seqz";
  case MCK_sgtz: return "MCK_sgtz";
  case MCK_sh: return "MCK_sh";
  case MCK_sll: return "MCK_sll";
  case MCK_slli: return "MCK_slli";
  case MCK_slt: return "MCK_slt";
  case MCK_slti: return "MCK_slti";
  case MCK_sltiu: return "MCK_sltiu";
  case MCK_sltu: return "MCK_sltu";
  case MCK_sltz: return "MCK_sltz";
  case MCK_snez: return "MCK_snez";
  case MCK_sra: return "MCK_sra";
  case MCK_srai: return "MCK_srai";
  case MCK_srl: return "MCK_srl";
  case MCK_srli: return "MCK_srli";
  case MCK_sub: return "MCK_sub";
  case MCK_sw: return "MCK_sw";
  case MCK_tail: return "MCK_tail";
  case MCK_unimp: return "MCK_unimp";
  case MCK_w: return "MCK_w";
  case MCK_wfi: return "MCK_wfi";
  case MCK_x0: return "MCK_x0";
  case MCK_xor: return "MCK_xor";
  case MCK_xori: return "MCK_xori";
  case MCK_zero: return "MCK_zero";
  case MCK_r_csr_marchid: return "MCK_r_csr_marchid";
  case MCK_r_csr_mcause: return "MCK_r_csr_mcause";
  case MCK_r_csr_mcountinhibit: return "MCK_r_csr_mcountinhibit";
  case MCK_r_csr_mcycle: return "MCK_r_csr_mcycle";
  case MCK_r_csr_mepc: return "MCK_r_csr_mepc";
  case MCK_r_csr_mhartid: return "MCK_r_csr_mhartid";
  case MCK_r_csr_mie: return "MCK_r_csr_mie";
  case MCK_r_csr_minstret: return "MCK_r_csr_minstret";
  case MCK_r_csr_mip: return "MCK_r_csr_mip";
  case MCK_r_csr_misa: return "MCK_r_csr_misa";
  case MCK_r_csr_mscratch: return "MCK_r_csr_mscratch";
  case MCK_r_csr_mstatus: return "MCK_r_csr_mstatus";
  case MCK_r_csr_mtval: return "MCK_r_csr_mtval";
  case MCK_r_csr_mtvec: return "MCK_r_csr_mtvec";
  case MCK_r_csr_nmi: return "MCK_r_csr_nmi";
  case MCK_r_csr_nmi_mtval: return "MCK_r_csr_nmi_mtval";
  case MCK_r_nmi_handler: return "MCK_r_nmi_handler";
  case MCK_regs: return "MCK_regs";
  case MCK_rf_gpr: return "MCK_rf_gpr";
  case MCK_codasip_physical_regs_csr: return "MCK_codasip_physical_regs_csr";
  case MCK_Imm: return "MCK_Imm";
  case NumMatchClassKinds: return "NumMatchClassKinds";
  }
  llvm_unreachable("unhandled MatchClassKind!");
}

#endif // NDEBUG
FeatureBitset CodasipAsmParser::
ComputeAvailableFeatures(const FeatureBitset& FB) const {
  FeatureBitset Features;
  return Features;
}

static bool checkAsmTiedOperandConstraints(const CodasipAsmParser&AsmParser,
                               unsigned Kind,
                               const OperandVector &Operands,
                               uint64_t &ErrorInfo) {
  assert(Kind < CVT_NUM_SIGNATURES && "Invalid signature!");
  const uint8_t *Converter = ConversionTable[Kind];
  for (const uint8_t *p = Converter; *p; p+= 2) {
    switch (*p) {
    case CVT_Tied: {
      unsigned OpIdx = *(p+1);
      assert(OpIdx < (size_t)(std::end(TiedAsmOperandTable) -
                              std::begin(TiedAsmOperandTable)) &&
             "Tied operand not found");
      unsigned OpndNum1 = TiedAsmOperandTable[OpIdx][1];
      unsigned OpndNum2 = TiedAsmOperandTable[OpIdx][2];
      if (OpndNum1 != OpndNum2) {
        auto &SrcOp1 = Operands[OpndNum1];
        auto &SrcOp2 = Operands[OpndNum2];
        if (SrcOp1->isReg() && SrcOp2->isReg()) {
          if (!AsmParser.regsEqual(*SrcOp1, *SrcOp2)) {
            ErrorInfo = OpndNum2;
            return false;
          }
        }
      }
      break;
    }
    default:
      break;
    }
  }
  return true;
}

static const char *const MnemonicTable =
    "\003add\004addi\003and\004andi\005auipc\003beq\004beqz\003bge\004bgeu\004"
    "bgez\003bgt\004bgtu\004bgtz\003ble\004bleu\004blez\003blt\004bltu\004bl"
    "tz\003bne\004bnez\004call\010call.reg\004csrc\005csrci\004csrr\005csrrc"
    "\006csrrci\005csrrs\006csrrsi\005csrrw\006csrrwi\004csrs\005csrsi\004cs"
    "rw\005csrwi\006ebreak\005ecall\005fence\007fence.i\006get.pc\027hackato"
    "n_custom_instr_a\027hackaton_custom_instr_b\027hackaton_custom_instr_c\027"
    "hackaton_custom_instr_d\027hackaton_custom_instr_e\001j\003jal\004jalr\002"
    "jr\002la\002lb\003lbu\002lh\003lhu\002li\003lla\003lui\002lw\004move\004"
    "mret\002mv\003neg\003nop\003not\002or\003ori\007rdcycle\010rdcycleh\trd"
    "instret\nrdinstreth\006rdtime\007rdtimeh\003ret\002sb\005scall\004seqz\004"
    "sgtz\002sh\003sll\004slli\003slt\004slti\005sltiu\004sltu\004sltz\004sn"
    "ez\003sra\004srai\003srl\004srli\003sub\002sw\004tail\005unimp\003wfi\003"
    "xor\004xori";

// Feature bitsets.
enum : uint8_t {
  AMFBS_None,
};

const static FeatureBitset FeatureBitsets[] {
  {}, // AMFBS_None
};

namespace {
  struct MatchEntry {
    uint16_t Mnemonic;
    uint16_t Opcode;
    uint8_t ConvertFn;
    uint8_t RequiredFeaturesIdx;
    uint8_t Classes[9];
    StringRef getMnemonic() const {
      return StringRef(MnemonicTable + Mnemonic + 1,
                       MnemonicTable[Mnemonic]);
    }
  };

  // Predicate for searching for an opcode.
  struct LessOpcode {
    bool operator()(const MatchEntry &LHS, StringRef RHS) {
      return LHS.getMnemonic() < RHS;
    }
    bool operator()(StringRef LHS, const MatchEntry &RHS) {
      return LHS < RHS.getMnemonic();
    }
    bool operator()(const MatchEntry &LHS, const MatchEntry &RHS) {
      return LHS.getMnemonic() < RHS.getMnemonic();
    }
  };
} // end anonymous namespace.

static const MatchEntry MatchTable0[] = {
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_add, MCK_x0, MCK_regs, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_add, MCK_x0, MCK_regs, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_regs, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_add, MCK_x0, MCK_regs, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_add, MCK_zero, MCK_regs, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_add, MCK_zero, MCK_regs, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_regs, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_add, MCK_zero, MCK_regs, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_add, MCK_regs, MCK_x0, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_add, MCK_regs, MCK_x0, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_add, MCK_regs, MCK_x0, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_add, MCK_regs, MCK_x0, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_add, MCK_regs, MCK_zero, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_add, MCK_regs, MCK_zero, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_add, MCK_regs, MCK_zero, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_add, MCK_regs, MCK_zero, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_add, MCK_regs, MCK_regs, MCK_x0 }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_add, MCK_regs, MCK_regs, MCK_zero }, },
  { 0 /* add */, Codasip::i_comp_3reg__opc_add__regs__regs__regs__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_add, MCK_regs, MCK_regs, MCK_regs }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_add, MCK_regs, MCK_regs, MCK_Imm }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_add, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_add, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_add, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_add, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_add, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_add, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_add, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_add, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_add, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_add, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_add, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_add, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_add, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 0 /* add */, Codasip::i_comp_2reg_imm__opc_addi__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_add, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_addi, MCK_x0, MCK_x0, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_addi, MCK_x0, MCK_zero, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_addi, MCK_x0, MCK_regs, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_addi, MCK_zero, MCK_x0, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_addi, MCK_zero, MCK_zero, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_addi, MCK_zero, MCK_regs, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_addi, MCK_regs, MCK_x0, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_addi, MCK_regs, MCK_zero, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_addi, MCK_regs, MCK_regs, MCK_Imm }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_addi, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_addi, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_addi, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_addi, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_addi, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_addi, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_addi, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_addi, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_addi, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_addi, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_addi, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_addi, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_addi, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_addi, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_addi, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_addi, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_addi, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 4 /* addi */, Codasip::i_addi_alias__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_addi, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_and, MCK_x0, MCK_regs, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_and, MCK_x0, MCK_regs, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_regs, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_and, MCK_x0, MCK_regs, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_and, MCK_zero, MCK_regs, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_and, MCK_zero, MCK_regs, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_regs, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_and, MCK_zero, MCK_regs, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_and, MCK_regs, MCK_x0, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_and, MCK_regs, MCK_x0, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_and, MCK_regs, MCK_x0, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_and, MCK_regs, MCK_x0, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_and, MCK_regs, MCK_zero, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_and, MCK_regs, MCK_zero, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_and, MCK_regs, MCK_zero, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_and, MCK_regs, MCK_zero, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_and, MCK_regs, MCK_regs, MCK_x0 }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_and, MCK_regs, MCK_regs, MCK_zero }, },
  { 9 /* and */, Codasip::i_comp_3reg__opc_and__regs__regs__regs__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_and, MCK_regs, MCK_regs, MCK_regs }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_and, MCK_regs, MCK_regs, MCK_Imm }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_and, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_and, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_and, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_and, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_and, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_and, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_and, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_and, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_and, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_and, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_and, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_and, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_and, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 9 /* and */, Codasip::i_comp_2reg_imm__opc_andi__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_and, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_andi, MCK_x0, MCK_x0, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_andi, MCK_x0, MCK_zero, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_andi, MCK_x0, MCK_regs, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_andi, MCK_zero, MCK_x0, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_andi, MCK_zero, MCK_zero, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_andi, MCK_zero, MCK_regs, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_andi, MCK_regs, MCK_x0, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_andi, MCK_regs, MCK_zero, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_andi, MCK_regs, MCK_regs, MCK_Imm }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_andi, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_andi, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_andi, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_andi, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_andi, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_andi, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_andi, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_andi, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_andi, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_andi, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_andi, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_andi, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_andi, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_andi, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_andi, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_andi, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_andi, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 13 /* andi */, Codasip::i_andi_alias__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_andi, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 18 /* auipc */, Codasip::i_auipc__opc_auipc__reg0__imm20_s12__, Convert__Imm1_2, AMFBS_None, { MCK_auipc, MCK_x0, MCK_Imm }, },
  { 18 /* auipc */, Codasip::i_auipc__opc_auipc__reg0_alias__imm20_s12__, Convert__Imm1_2, AMFBS_None, { MCK_auipc, MCK_zero, MCK_Imm }, },
  { 18 /* auipc */, Codasip::i_auipc__opc_auipc__regs__imm20_s12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_auipc, MCK_regs, MCK_Imm }, },
  { 18 /* auipc */, Codasip::i_auipc_hi__opc_auipc__reg0__imm20_hi__, Convert__Imm1_4, AMFBS_None, { MCK_auipc, MCK_x0, MCK__PCT_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 18 /* auipc */, Codasip::i_auipc_hi__opc_auipc__reg0__imm20_pcrel_hi__, Convert__Imm1_4, AMFBS_None, { MCK_auipc, MCK_x0, MCK__PCT_pcrel_95_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 18 /* auipc */, Codasip::i_auipc_hi__opc_auipc__reg0_alias__imm20_hi__, Convert__Imm1_4, AMFBS_None, { MCK_auipc, MCK_zero, MCK__PCT_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 18 /* auipc */, Codasip::i_auipc_hi__opc_auipc__reg0_alias__imm20_pcrel_hi__, Convert__Imm1_4, AMFBS_None, { MCK_auipc, MCK_zero, MCK__PCT_pcrel_95_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 18 /* auipc */, Codasip::i_auipc_hi__opc_auipc__regs__imm20_hi__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_auipc, MCK_regs, MCK__PCT_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 18 /* auipc */, Codasip::i_auipc_hi__opc_auipc__regs__imm20_pcrel_hi__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_auipc, MCK_regs, MCK__PCT_pcrel_95_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_beq, MCK_x0, MCK_x0, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_beq, MCK_x0, MCK_zero, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_beq, MCK_x0, MCK_regs, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_beq, MCK_zero, MCK_x0, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_beq, MCK_zero, MCK_zero, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_beq, MCK_zero, MCK_regs, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_beq, MCK_regs, MCK_x0, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_beq, MCK_regs, MCK_zero, MCK_Imm }, },
  { 24 /* beq */, Codasip::i_control_conditional__opc_beq__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_beq, MCK_regs, MCK_regs, MCK_Imm }, },
  { 28 /* beqz */, Codasip::i_beqz_alias__reg0__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_beqz, MCK_x0, MCK_Imm }, },
  { 28 /* beqz */, Codasip::i_beqz_alias__reg0_alias__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_beqz, MCK_zero, MCK_Imm }, },
  { 28 /* beqz */, Codasip::i_beqz_alias__regs__rel_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_beqz, MCK_regs, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bge, MCK_x0, MCK_x0, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bge, MCK_x0, MCK_zero, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bge, MCK_x0, MCK_regs, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bge, MCK_zero, MCK_x0, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bge, MCK_zero, MCK_zero, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bge, MCK_zero, MCK_regs, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bge, MCK_regs, MCK_x0, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bge, MCK_regs, MCK_zero, MCK_Imm }, },
  { 33 /* bge */, Codasip::i_control_conditional__opc_bge__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bge, MCK_regs, MCK_regs, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_x0, MCK_regs, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_zero, MCK_regs, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_regs, MCK_x0, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_regs, MCK_zero, MCK_Imm }, },
  { 37 /* bgeu */, Codasip::i_control_conditional__opc_bgeu__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgeu, MCK_regs, MCK_regs, MCK_Imm }, },
  { 42 /* bgez */, Codasip::i_bgez_alias__reg0__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bgez, MCK_x0, MCK_Imm }, },
  { 42 /* bgez */, Codasip::i_bgez_alias__reg0_alias__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bgez, MCK_zero, MCK_Imm }, },
  { 42 /* bgez */, Codasip::i_bgez_alias__regs__rel_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_bgez, MCK_regs, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgt, MCK_x0, MCK_x0, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgt, MCK_x0, MCK_zero, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgt, MCK_x0, MCK_regs, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgt, MCK_zero, MCK_x0, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgt, MCK_zero, MCK_zero, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgt, MCK_zero, MCK_regs, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgt, MCK_regs, MCK_x0, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgt, MCK_regs, MCK_zero, MCK_Imm }, },
  { 47 /* bgt */, Codasip::i_bgt_alias__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgt, MCK_regs, MCK_regs, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_x0, MCK_regs, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_zero, MCK_regs, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_regs, MCK_x0, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_regs, MCK_zero, MCK_Imm }, },
  { 51 /* bgtu */, Codasip::i_bgtu_alias__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bgtu, MCK_regs, MCK_regs, MCK_Imm }, },
  { 56 /* bgtz */, Codasip::i_bgtz_alias__reg0__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bgtz, MCK_x0, MCK_Imm }, },
  { 56 /* bgtz */, Codasip::i_bgtz_alias__reg0_alias__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bgtz, MCK_zero, MCK_Imm }, },
  { 56 /* bgtz */, Codasip::i_bgtz_alias__regs__rel_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_bgtz, MCK_regs, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_ble, MCK_x0, MCK_x0, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_ble, MCK_x0, MCK_zero, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_ble, MCK_x0, MCK_regs, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_ble, MCK_zero, MCK_x0, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_ble, MCK_zero, MCK_zero, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_ble, MCK_zero, MCK_regs, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_ble, MCK_regs, MCK_x0, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_ble, MCK_regs, MCK_zero, MCK_Imm }, },
  { 61 /* ble */, Codasip::i_ble_alias__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_ble, MCK_regs, MCK_regs, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bleu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bleu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bleu, MCK_x0, MCK_regs, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bleu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bleu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bleu, MCK_zero, MCK_regs, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bleu, MCK_regs, MCK_x0, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bleu, MCK_regs, MCK_zero, MCK_Imm }, },
  { 65 /* bleu */, Codasip::i_bleu_alias__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bleu, MCK_regs, MCK_regs, MCK_Imm }, },
  { 70 /* blez */, Codasip::i_blez_alias__reg0__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_blez, MCK_x0, MCK_Imm }, },
  { 70 /* blez */, Codasip::i_blez_alias__reg0_alias__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_blez, MCK_zero, MCK_Imm }, },
  { 70 /* blez */, Codasip::i_blez_alias__regs__rel_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_blez, MCK_regs, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_blt, MCK_x0, MCK_x0, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_blt, MCK_x0, MCK_zero, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_blt, MCK_x0, MCK_regs, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_blt, MCK_zero, MCK_x0, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_blt, MCK_zero, MCK_zero, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_blt, MCK_zero, MCK_regs, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_blt, MCK_regs, MCK_x0, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_blt, MCK_regs, MCK_zero, MCK_Imm }, },
  { 75 /* blt */, Codasip::i_control_conditional__opc_blt__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_blt, MCK_regs, MCK_regs, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bltu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bltu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bltu, MCK_x0, MCK_regs, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bltu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bltu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bltu, MCK_zero, MCK_regs, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bltu, MCK_regs, MCK_x0, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bltu, MCK_regs, MCK_zero, MCK_Imm }, },
  { 79 /* bltu */, Codasip::i_control_conditional__opc_bltu__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bltu, MCK_regs, MCK_regs, MCK_Imm }, },
  { 84 /* bltz */, Codasip::i_bltz_alias__reg0__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bltz, MCK_x0, MCK_Imm }, },
  { 84 /* bltz */, Codasip::i_bltz_alias__reg0_alias__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bltz, MCK_zero, MCK_Imm }, },
  { 84 /* bltz */, Codasip::i_bltz_alias__regs__rel_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_bltz, MCK_regs, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__reg0__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bne, MCK_x0, MCK_x0, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__reg0__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bne, MCK_x0, MCK_zero, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__reg0__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bne, MCK_x0, MCK_regs, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__reg0_alias__reg0__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bne, MCK_zero, MCK_x0, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__reg0_alias__reg0_alias__rel_addr12__, Convert__Imm1_3, AMFBS_None, { MCK_bne, MCK_zero, MCK_zero, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__reg0_alias__regs__rel_addr12__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_bne, MCK_zero, MCK_regs, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__regs__reg0__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bne, MCK_regs, MCK_x0, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__regs__reg0_alias__rel_addr12__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_bne, MCK_regs, MCK_zero, MCK_Imm }, },
  { 89 /* bne */, Codasip::i_control_conditional__opc_bne__regs__regs__rel_addr12__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_bne, MCK_regs, MCK_regs, MCK_Imm }, },
  { 93 /* bnez */, Codasip::i_bnez_alias__reg0__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bnez, MCK_x0, MCK_Imm }, },
  { 93 /* bnez */, Codasip::i_bnez_alias__reg0_alias__rel_addr12__, Convert__Imm1_2, AMFBS_None, { MCK_bnez, MCK_zero, MCK_Imm }, },
  { 93 /* bnez */, Codasip::i_bnez_alias__regs__rel_addr12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_bnez, MCK_regs, MCK_Imm }, },
  { 98 /* call */, Codasip::i_call_alias__rel_addr32_call_tail_simple__, Convert__Imm1_1, AMFBS_None, { MCK_call, MCK_Imm }, },
  { 103 /* call.reg */, Codasip::i_call_reg_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_call_DOT_reg, MCK_x0 }, },
  { 103 /* call.reg */, Codasip::i_call_reg_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_call_DOT_reg, MCK_zero }, },
  { 103 /* call.reg */, Codasip::i_call_reg_alias__regs__, Convert__Reg1_1, AMFBS_None, { MCK_call_DOT_reg, MCK_regs }, },
  { 112 /* csrc */, Codasip::i_csrc_alias__regs_csr__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_csrc, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 112 /* csrc */, Codasip::i_csrc_alias__regs_csr__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_csrc, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 112 /* csrc */, Codasip::i_csrc_alias__regs_csr__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrc, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 112 /* csrc */, Codasip::i_csrci_alias__regs_csr__imm5__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrc, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 112 /* csrc */, Codasip::i_csrc_alias__csr_imm__reg0__, Convert__Imm1_1, AMFBS_None, { MCK_csrc, MCK_Imm, MCK_x0 }, },
  { 112 /* csrc */, Codasip::i_csrc_alias__csr_imm__reg0_alias__, Convert__Imm1_1, AMFBS_None, { MCK_csrc, MCK_Imm, MCK_zero }, },
  { 112 /* csrc */, Codasip::i_csrc_alias__csr_imm__regs__, Convert__Reg1_2__Imm1_1, AMFBS_None, { MCK_csrc, MCK_Imm, MCK_regs }, },
  { 112 /* csrc */, Codasip::i_csrci_alias__csr_imm__imm5__, Convert__Imm1_2__Imm1_1, AMFBS_None, { MCK_csrc, MCK_Imm, MCK_Imm }, },
  { 117 /* csrci */, Codasip::i_csrci_alias2__regs_csr__imm5__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrci, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 117 /* csrci */, Codasip::i_csrci_alias2__csr_imm__imm5__, Convert__Imm1_2__Imm1_1, AMFBS_None, { MCK_csrci, MCK_Imm, MCK_Imm }, },
  { 123 /* csrr */, Codasip::i_csrr_alias__reg0__regs_csr__, Convert__Reg1_2, AMFBS_None, { MCK_csrr, MCK_x0, MCK_codasip_physical_regs_csr }, },
  { 123 /* csrr */, Codasip::i_csrr_alias__reg0__csr_imm__, Convert__Imm1_2, AMFBS_None, { MCK_csrr, MCK_x0, MCK_Imm }, },
  { 123 /* csrr */, Codasip::i_csrr_alias__reg0_alias__regs_csr__, Convert__Reg1_2, AMFBS_None, { MCK_csrr, MCK_zero, MCK_codasip_physical_regs_csr }, },
  { 123 /* csrr */, Codasip::i_csrr_alias__reg0_alias__csr_imm__, Convert__Imm1_2, AMFBS_None, { MCK_csrr, MCK_zero, MCK_Imm }, },
  { 123 /* csrr */, Codasip::i_csrr_alias__regs__regs_csr__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrr, MCK_regs, MCK_codasip_physical_regs_csr }, },
  { 123 /* csrr */, Codasip::i_csrr_alias__regs__csr_imm__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrr, MCK_regs, MCK_Imm }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_csrrc, MCK_x0, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0__regs_csr__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_csrrc, MCK_x0, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0__regs_csr__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrc, MCK_x0, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_csrrc, MCK_x0, MCK_Imm, MCK_x0 }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_csrrc, MCK_x0, MCK_Imm, MCK_zero }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0__csr_imm__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_csrrc, MCK_x0, MCK_Imm, MCK_regs }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_csrrc, MCK_zero, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_csrrc, MCK_zero, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__regs_csr__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrc, MCK_zero, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_csrrc, MCK_zero, MCK_Imm, MCK_x0 }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_csrrc, MCK_zero, MCK_Imm, MCK_zero }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__reg0_alias__csr_imm__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_csrrc, MCK_zero, MCK_Imm, MCK_regs }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrrc, MCK_regs, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__regs__regs_csr__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrrc, MCK_regs, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__regs__regs_csr__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrc, MCK_regs, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrrc, MCK_regs, MCK_Imm, MCK_x0 }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrrc, MCK_regs, MCK_Imm, MCK_zero }, },
  { 128 /* csrrc */, Codasip::i_control_registers_reg__opc_csrrc__regs__csr_imm__regs__, Convert__Reg1_1__Imm1_2__Reg1_3, AMFBS_None, { MCK_csrrc, MCK_regs, MCK_Imm, MCK_regs }, },
  { 134 /* csrrci */, Codasip::i_control_registers_imm__opc_csrrci__reg0__regs_csr__imm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrci, MCK_x0, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 134 /* csrrci */, Codasip::i_control_registers_imm__opc_csrrci__reg0__csr_imm__imm5__, Convert__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrci, MCK_x0, MCK_Imm, MCK_Imm }, },
  { 134 /* csrrci */, Codasip::i_control_registers_imm__opc_csrrci__reg0_alias__regs_csr__imm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrci, MCK_zero, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 134 /* csrrci */, Codasip::i_control_registers_imm__opc_csrrci__reg0_alias__csr_imm__imm5__, Convert__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrci, MCK_zero, MCK_Imm, MCK_Imm }, },
  { 134 /* csrrci */, Codasip::i_control_registers_imm__opc_csrrci__regs__regs_csr__imm5__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrci, MCK_regs, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 134 /* csrrci */, Codasip::i_control_registers_imm__opc_csrrci__regs__csr_imm__imm5__, Convert__Reg1_1__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrci, MCK_regs, MCK_Imm, MCK_Imm }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_csrrs, MCK_x0, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0__regs_csr__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_csrrs, MCK_x0, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0__regs_csr__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrs, MCK_x0, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_csrrs, MCK_x0, MCK_Imm, MCK_x0 }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_csrrs, MCK_x0, MCK_Imm, MCK_zero }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0__csr_imm__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_csrrs, MCK_x0, MCK_Imm, MCK_regs }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_csrrs, MCK_zero, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_csrrs, MCK_zero, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__regs_csr__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrs, MCK_zero, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_csrrs, MCK_zero, MCK_Imm, MCK_x0 }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_csrrs, MCK_zero, MCK_Imm, MCK_zero }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__reg0_alias__csr_imm__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_csrrs, MCK_zero, MCK_Imm, MCK_regs }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrrs, MCK_regs, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__regs__regs_csr__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrrs, MCK_regs, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__regs__regs_csr__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrs, MCK_regs, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrrs, MCK_regs, MCK_Imm, MCK_x0 }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrrs, MCK_regs, MCK_Imm, MCK_zero }, },
  { 141 /* csrrs */, Codasip::i_control_registers_reg__opc_csrrs__regs__csr_imm__regs__, Convert__Reg1_1__Imm1_2__Reg1_3, AMFBS_None, { MCK_csrrs, MCK_regs, MCK_Imm, MCK_regs }, },
  { 147 /* csrrsi */, Codasip::i_control_registers_imm__opc_csrrsi__reg0__regs_csr__imm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrsi, MCK_x0, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 147 /* csrrsi */, Codasip::i_control_registers_imm__opc_csrrsi__reg0__csr_imm__imm5__, Convert__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrsi, MCK_x0, MCK_Imm, MCK_Imm }, },
  { 147 /* csrrsi */, Codasip::i_control_registers_imm__opc_csrrsi__reg0_alias__regs_csr__imm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrsi, MCK_zero, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 147 /* csrrsi */, Codasip::i_control_registers_imm__opc_csrrsi__reg0_alias__csr_imm__imm5__, Convert__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrsi, MCK_zero, MCK_Imm, MCK_Imm }, },
  { 147 /* csrrsi */, Codasip::i_control_registers_imm__opc_csrrsi__regs__regs_csr__imm5__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrsi, MCK_regs, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 147 /* csrrsi */, Codasip::i_control_registers_imm__opc_csrrsi__regs__csr_imm__imm5__, Convert__Reg1_1__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrsi, MCK_regs, MCK_Imm, MCK_Imm }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_csrrw, MCK_x0, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0__regs_csr__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_csrrw, MCK_x0, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0__regs_csr__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrw, MCK_x0, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_csrrw, MCK_x0, MCK_Imm, MCK_x0 }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_csrrw, MCK_x0, MCK_Imm, MCK_zero }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0__csr_imm__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_csrrw, MCK_x0, MCK_Imm, MCK_regs }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_csrrw, MCK_zero, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_csrrw, MCK_zero, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__regs_csr__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrw, MCK_zero, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_csrrw, MCK_zero, MCK_Imm, MCK_x0 }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_csrrw, MCK_zero, MCK_Imm, MCK_zero }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__reg0_alias__csr_imm__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_csrrw, MCK_zero, MCK_Imm, MCK_regs }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrrw, MCK_regs, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__regs__regs_csr__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrrw, MCK_regs, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__regs__regs_csr__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_csrrw, MCK_regs, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrrw, MCK_regs, MCK_Imm, MCK_x0 }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrrw, MCK_regs, MCK_Imm, MCK_zero }, },
  { 154 /* csrrw */, Codasip::i_control_registers_reg__opc_csrrw__regs__csr_imm__regs__, Convert__Reg1_1__Imm1_2__Reg1_3, AMFBS_None, { MCK_csrrw, MCK_regs, MCK_Imm, MCK_regs }, },
  { 160 /* csrrwi */, Codasip::i_control_registers_imm__opc_csrrwi__reg0__regs_csr__imm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrwi, MCK_x0, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 160 /* csrrwi */, Codasip::i_control_registers_imm__opc_csrrwi__reg0__csr_imm__imm5__, Convert__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrwi, MCK_x0, MCK_Imm, MCK_Imm }, },
  { 160 /* csrrwi */, Codasip::i_control_registers_imm__opc_csrrwi__reg0_alias__regs_csr__imm5__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrwi, MCK_zero, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 160 /* csrrwi */, Codasip::i_control_registers_imm__opc_csrrwi__reg0_alias__csr_imm__imm5__, Convert__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrwi, MCK_zero, MCK_Imm, MCK_Imm }, },
  { 160 /* csrrwi */, Codasip::i_control_registers_imm__opc_csrrwi__regs__regs_csr__imm5__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_csrrwi, MCK_regs, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 160 /* csrrwi */, Codasip::i_control_registers_imm__opc_csrrwi__regs__csr_imm__imm5__, Convert__Reg1_1__Imm1_3__Imm1_2, AMFBS_None, { MCK_csrrwi, MCK_regs, MCK_Imm, MCK_Imm }, },
  { 167 /* csrs */, Codasip::i_csrs_alias__regs_csr__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_csrs, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 167 /* csrs */, Codasip::i_csrs_alias__regs_csr__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_csrs, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 167 /* csrs */, Codasip::i_csrs_alias__regs_csr__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrs, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 167 /* csrs */, Codasip::i_csrsi_alias__regs_csr__imm5__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrs, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 167 /* csrs */, Codasip::i_csrs_alias__csr_imm__reg0__, Convert__Imm1_1, AMFBS_None, { MCK_csrs, MCK_Imm, MCK_x0 }, },
  { 167 /* csrs */, Codasip::i_csrs_alias__csr_imm__reg0_alias__, Convert__Imm1_1, AMFBS_None, { MCK_csrs, MCK_Imm, MCK_zero }, },
  { 167 /* csrs */, Codasip::i_csrs_alias__csr_imm__regs__, Convert__Reg1_2__Imm1_1, AMFBS_None, { MCK_csrs, MCK_Imm, MCK_regs }, },
  { 167 /* csrs */, Codasip::i_csrsi_alias__csr_imm__imm5__, Convert__Imm1_2__Imm1_1, AMFBS_None, { MCK_csrs, MCK_Imm, MCK_Imm }, },
  { 172 /* csrsi */, Codasip::i_csrsi_alias2__regs_csr__imm5__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrsi, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 172 /* csrsi */, Codasip::i_csrsi_alias2__csr_imm__imm5__, Convert__Imm1_2__Imm1_1, AMFBS_None, { MCK_csrsi, MCK_Imm, MCK_Imm }, },
  { 178 /* csrw */, Codasip::i_csrw_alias__regs_csr__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_csrw, MCK_codasip_physical_regs_csr, MCK_x0 }, },
  { 178 /* csrw */, Codasip::i_csrw_alias__regs_csr__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_csrw, MCK_codasip_physical_regs_csr, MCK_zero }, },
  { 178 /* csrw */, Codasip::i_csrw_alias__regs_csr__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_csrw, MCK_codasip_physical_regs_csr, MCK_regs }, },
  { 178 /* csrw */, Codasip::i_csrw_alias__csr_imm__reg0__, Convert__Imm1_1, AMFBS_None, { MCK_csrw, MCK_Imm, MCK_x0 }, },
  { 178 /* csrw */, Codasip::i_csrw_alias__csr_imm__reg0_alias__, Convert__Imm1_1, AMFBS_None, { MCK_csrw, MCK_Imm, MCK_zero }, },
  { 178 /* csrw */, Codasip::i_csrw_alias__csr_imm__regs__, Convert__Reg1_2__Imm1_1, AMFBS_None, { MCK_csrw, MCK_Imm, MCK_regs }, },
  { 183 /* csrwi */, Codasip::i_csrwi_alias__regs_csr__imm5__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_csrwi, MCK_codasip_physical_regs_csr, MCK_Imm }, },
  { 183 /* csrwi */, Codasip::i_csrwi_alias__csr_imm__imm5__, Convert__Imm1_2__Imm1_1, AMFBS_None, { MCK_csrwi, MCK_Imm, MCK_Imm }, },
  { 189 /* ebreak */, Codasip::i_ebreak__opc_ebreak__, Convert_NoOperands, AMFBS_None, { MCK_ebreak }, },
  { 196 /* ecall */, Codasip::i_ecall__opc_ecall__, Convert_NoOperands, AMFBS_None, { MCK_ecall }, },
  { 202 /* fence */, Codasip::i_fence_alias__opc_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_hint_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_hint, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_i_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_i, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_io_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_io, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ior_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ior, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iorw_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iorw, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iow_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iow, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ir_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ir, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_irw_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_irw, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_iw_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_iw, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_o_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_o, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_or_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_or, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_orw_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_orw, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_ow_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_ow, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_r_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_r, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_rw_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_rw, MCK_w }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_hint_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_hint }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_i_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_i }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_io_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_io }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_ior_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_ior }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_iorw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_iorw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_iow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_iow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_ir_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_ir }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_irw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_irw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_iw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_iw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_o_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_o }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_or_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_or }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_orw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_orw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_ow_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_ow }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_r_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_r }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_rw_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_rw }, },
  { 202 /* fence */, Codasip::i_fence__opc_fence__opc_w_fence__opc_w_fence__, Convert_NoOperands, AMFBS_None, { MCK_fence, MCK_w, MCK_w }, },
  { 208 /* fence.i */, Codasip::i_fencei__opc_fencei__, Convert_NoOperands, AMFBS_None, { MCK_fence_DOT_i }, },
  { 216 /* get.pc */, Codasip::i_get_pc_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_get_DOT_pc, MCK_x0 }, },
  { 216 /* get.pc */, Codasip::i_get_pc_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_get_DOT_pc, MCK_zero }, },
  { 216 /* get.pc */, Codasip::i_get_pc_alias__regs__, Convert__Reg1_1, AMFBS_None, { MCK_get_DOT_pc, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_x0, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_x0, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_x0, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_zero, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_zero, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_zero, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_regs, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_regs, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_x0, MCK_regs, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_x0, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_x0, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_x0, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_zero, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_zero, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_zero, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_regs, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_regs, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_zero, MCK_regs, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_x0, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_x0, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_x0, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_zero, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_zero, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_zero, MCK_regs }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_regs, MCK_x0 }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_regs, MCK_zero }, },
  { 223 /* hackaton_custom_instr_a */, Codasip::i_ext_hackaton__opc_hackaton_custom_a__regs__regs__regs__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_a, MCK_regs, MCK_regs, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_x0, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_x0, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_x0, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_zero, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_zero, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_zero, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_regs, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_regs, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_x0, MCK_regs, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_x0, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_x0, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_x0, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_zero, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_zero, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_zero, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_regs, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_regs, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_zero, MCK_regs, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_x0, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_x0, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_x0, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_zero, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_zero, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_zero, MCK_regs }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_regs, MCK_x0 }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_regs, MCK_zero }, },
  { 247 /* hackaton_custom_instr_b */, Codasip::i_ext_hackaton__opc_hackaton_custom_b__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_b, MCK_regs, MCK_regs, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_x0, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_x0, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_x0, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_zero, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_zero, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_zero, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_regs, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_regs, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_x0, MCK_regs, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_x0, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_x0, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_x0, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_zero, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_zero, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_zero, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_regs, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_regs, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_zero, MCK_regs, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_x0, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_x0, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_x0, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_zero, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_zero, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_zero, MCK_regs }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_regs, MCK_x0 }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_regs, MCK_zero }, },
  { 271 /* hackaton_custom_instr_c */, Codasip::i_ext_hackaton__opc_hackaton_custom_c__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_c, MCK_regs, MCK_regs, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_x0, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_x0, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_x0, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_zero, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_zero, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_zero, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_regs, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_regs, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_x0, MCK_regs, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_x0, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_x0, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_x0, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_zero, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_zero, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_zero, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_regs, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_regs, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_zero, MCK_regs, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_x0, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_x0, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_x0, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_zero, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_zero, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_zero, MCK_regs }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_regs, MCK_x0 }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_regs, MCK_zero }, },
  { 295 /* hackaton_custom_instr_d */, Codasip::i_ext_hackaton__opc_hackaton_custom_d__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_d, MCK_regs, MCK_regs, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_x0, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_x0, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_x0, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_zero, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_zero, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_zero, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_regs, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_regs, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_x0, MCK_regs, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_x0, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_x0, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_x0, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_zero, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_zero, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_zero, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_regs, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_regs, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_zero, MCK_regs, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_x0, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_x0, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_x0, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_zero, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_zero, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_zero, MCK_regs }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_regs, MCK_x0 }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_regs, MCK_zero }, },
  { 319 /* hackaton_custom_instr_e */, Codasip::i_ext_hackaton__opc_hackaton_custom_e__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_hackaton_95_custom_95_instr_95_e, MCK_regs, MCK_regs, MCK_regs }, },
  { 343 /* j */, Codasip::i_jmp_rel_alias__rel_addr20__, Convert__Imm1_1, AMFBS_None, { MCK_j, MCK_Imm }, },
  { 345 /* jal */, Codasip::i_call_rel_alias__rel_addr20__, Convert__Imm1_1, AMFBS_None, { MCK_jal, MCK_Imm }, },
  { 345 /* jal */, Codasip::i_jal__opc_jal__reg0__rel_addr20__, Convert__Imm1_2, AMFBS_None, { MCK_jal, MCK_x0, MCK_Imm }, },
  { 345 /* jal */, Codasip::i_jal__opc_jal__reg0_alias__rel_addr20__, Convert__Imm1_2, AMFBS_None, { MCK_jal, MCK_zero, MCK_Imm }, },
  { 345 /* jal */, Codasip::i_jal__opc_jal__regs__rel_addr20__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_jal, MCK_regs, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_jalr, MCK_x0 }, },
  { 349 /* jalr */, Codasip::i_jalr_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_jalr, MCK_zero }, },
  { 349 /* jalr */, Codasip::i_jalr_alias__regs__, Convert__Reg1_1, AMFBS_None, { MCK_jalr, MCK_regs }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_jalr, MCK_x0, MCK_x0, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_jalr, MCK_x0, MCK_zero, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_jalr, MCK_x0, MCK_regs, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_jalr, MCK_zero, MCK_x0, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_jalr, MCK_zero, MCK_zero, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_jalr, MCK_zero, MCK_regs, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_jalr, MCK_regs, MCK_x0, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_jalr, MCK_regs, MCK_zero, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_jalr, MCK_regs, MCK_regs, MCK_Imm }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_jalr, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_jalr, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_jalr, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_jalr, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_jalr, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_jalr, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_jalr, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_jalr, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_jalr, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_jalr, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_jalr, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_jalr, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_jalr, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_jalr, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_jalr, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_jalr, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_jalr, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 349 /* jalr */, Codasip::i_jalr__opc_jalr__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_jalr, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 354 /* jr */, Codasip::i_jump_reg_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_jr, MCK_x0 }, },
  { 354 /* jr */, Codasip::i_jump_reg_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_jr, MCK_zero }, },
  { 354 /* jr */, Codasip::i_jump_reg_alias__regs__, Convert__Reg1_1, AMFBS_None, { MCK_jr, MCK_regs }, },
  { 354 /* jr */, Codasip::i_jlr_alias__reg0__simm12_simple__, Convert__Imm1_2, AMFBS_None, { MCK_jr, MCK_x0, MCK_Imm }, },
  { 354 /* jr */, Codasip::i_jlr_alias__reg0_alias__simm12_simple__, Convert__Imm1_2, AMFBS_None, { MCK_jr, MCK_zero, MCK_Imm }, },
  { 354 /* jr */, Codasip::i_jlr_alias__regs__simm12_simple__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_jr, MCK_regs, MCK_Imm }, },
  { 354 /* jr */, Codasip::i_jlr_alias__reg0__simm12_lo__, Convert__Imm1_4, AMFBS_None, { MCK_jr, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 354 /* jr */, Codasip::i_jlr_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_4, AMFBS_None, { MCK_jr, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 354 /* jr */, Codasip::i_jlr_alias__reg0_alias__simm12_lo__, Convert__Imm1_4, AMFBS_None, { MCK_jr, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 354 /* jr */, Codasip::i_jlr_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_4, AMFBS_None, { MCK_jr, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 354 /* jr */, Codasip::i_jlr_alias__regs__simm12_lo__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_jr, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 354 /* jr */, Codasip::i_jlr_alias__regs__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_jr, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 357 /* la */, Codasip::i_la_alias__reg0__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_la, MCK_x0, MCK_Imm }, },
  { 357 /* la */, Codasip::i_la_alias__reg0_alias__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_la, MCK_zero, MCK_Imm }, },
  { 357 /* la */, Codasip::i_la_alias__regs__rel_addr32__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_la, MCK_regs, MCK_Imm }, },
  { 360 /* lb */, Codasip::i_load_global_alias__opc_loadb__reg0__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_x0, MCK_Imm }, },
  { 360 /* lb */, Codasip::i_load_global_alias__opc_loadb__reg0_alias__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_zero, MCK_Imm }, },
  { 360 /* lb */, Codasip::i_load_global_alias__opc_loadb__regs__rel_addr32__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lb, MCK_regs, MCK_Imm }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lb, MCK_x0, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lb, MCK_x0, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lb, MCK_x0, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lb, MCK_zero, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lb, MCK_zero, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lb, MCK_zero, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_lb, MCK_regs, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_lb, MCK_regs, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load_alias__opc_loadb__regs__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_lb, MCK_regs, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lb, MCK_x0, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lb, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lb, MCK_zero, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_simple__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lb, MCK_regs, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_simple__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lb, MCK_regs, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_simple__regs__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lb, MCK_regs, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lb, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lb, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lb, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lb, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lb, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lb, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lb, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lb, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lb, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lb, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lb, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__reg0_alias__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lb, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lb, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lb, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lb, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lb, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lb, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 360 /* lb */, Codasip::i_load__opc_loadb__regs__simm12_pcrel_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lb, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_global_alias__opc_loadbu__reg0__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_x0, MCK_Imm }, },
  { 363 /* lbu */, Codasip::i_load_global_alias__opc_loadbu__reg0_alias__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_zero, MCK_Imm }, },
  { 363 /* lbu */, Codasip::i_load_global_alias__opc_loadbu__regs__rel_addr32__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lbu, MCK_regs, MCK_Imm }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lbu, MCK_x0, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lbu, MCK_x0, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lbu, MCK_x0, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lbu, MCK_zero, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lbu, MCK_zero, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lbu, MCK_zero, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_lbu, MCK_regs, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_lbu, MCK_regs, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load_alias__opc_loadbu__regs__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_lbu, MCK_regs, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lbu, MCK_x0, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lbu, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lbu, MCK_zero, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lbu, MCK_regs, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_simple__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lbu, MCK_regs, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_simple__regs__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lbu, MCK_regs, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lbu, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lbu, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lbu, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lbu, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lbu, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lbu, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lbu, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lbu, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lbu, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lbu, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lbu, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__reg0_alias__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lbu, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lbu, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lbu, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lbu, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lbu, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lbu, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 363 /* lbu */, Codasip::i_load__opc_loadbu__regs__simm12_pcrel_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lbu, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_global_alias__opc_loadh__reg0__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_x0, MCK_Imm }, },
  { 367 /* lh */, Codasip::i_load_global_alias__opc_loadh__reg0_alias__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_zero, MCK_Imm }, },
  { 367 /* lh */, Codasip::i_load_global_alias__opc_loadh__regs__rel_addr32__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lh, MCK_regs, MCK_Imm }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lh, MCK_x0, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lh, MCK_x0, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lh, MCK_x0, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lh, MCK_zero, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lh, MCK_zero, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lh, MCK_zero, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_lh, MCK_regs, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_lh, MCK_regs, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load_alias__opc_loadh__regs__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_lh, MCK_regs, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lh, MCK_x0, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lh, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lh, MCK_zero, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_simple__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lh, MCK_regs, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_simple__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lh, MCK_regs, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_simple__regs__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lh, MCK_regs, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lh, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lh, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lh, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lh, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lh, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lh, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lh, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lh, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lh, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lh, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lh, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__reg0_alias__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lh, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lh, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lh, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lh, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lh, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lh, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 367 /* lh */, Codasip::i_load__opc_loadh__regs__simm12_pcrel_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lh, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_global_alias__opc_loadhu__reg0__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_x0, MCK_Imm }, },
  { 370 /* lhu */, Codasip::i_load_global_alias__opc_loadhu__reg0_alias__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_zero, MCK_Imm }, },
  { 370 /* lhu */, Codasip::i_load_global_alias__opc_loadhu__regs__rel_addr32__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lhu, MCK_regs, MCK_Imm }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lhu, MCK_x0, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lhu, MCK_x0, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lhu, MCK_x0, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lhu, MCK_zero, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lhu, MCK_zero, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lhu, MCK_zero, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_lhu, MCK_regs, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_lhu, MCK_regs, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load_alias__opc_loadhu__regs__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_lhu, MCK_regs, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lhu, MCK_x0, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lhu, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lhu, MCK_zero, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lhu, MCK_regs, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_simple__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lhu, MCK_regs, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_simple__regs__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lhu, MCK_regs, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lhu, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lhu, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lhu, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lhu, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lhu, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lhu, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lhu, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lhu, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lhu, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lhu, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lhu, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__reg0_alias__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lhu, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lhu, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lhu, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lhu, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lhu, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lhu, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 370 /* lhu */, Codasip::i_load__opc_loadhu__regs__simm12_pcrel_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lhu, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 374 /* li */, Codasip::i_li_aalias__reg0__imm32_lui_addi__, Convert__Imm1_2, AMFBS_None, { MCK_li, MCK_x0, MCK_Imm }, },
  { 374 /* li */, Codasip::i_li_aalias__reg0_alias__imm32_lui_addi__, Convert__Imm1_2, AMFBS_None, { MCK_li, MCK_zero, MCK_Imm }, },
  { 374 /* li */, Codasip::i_li_aalias__regs__imm32_lui_addi__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_li, MCK_regs, MCK_Imm }, },
  { 377 /* lla */, Codasip::i_lla_alias__reg0__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lla, MCK_x0, MCK_Imm }, },
  { 377 /* lla */, Codasip::i_lla_alias__reg0_alias__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lla, MCK_zero, MCK_Imm }, },
  { 377 /* lla */, Codasip::i_lla_alias__regs__rel_addr32__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lla, MCK_regs, MCK_Imm }, },
  { 381 /* lui */, Codasip::i_lui__opc_lui__reg0__imm20_s12__, Convert__Imm1_2, AMFBS_None, { MCK_lui, MCK_x0, MCK_Imm }, },
  { 381 /* lui */, Codasip::i_lui__opc_lui__reg0_alias__imm20_s12__, Convert__Imm1_2, AMFBS_None, { MCK_lui, MCK_zero, MCK_Imm }, },
  { 381 /* lui */, Codasip::i_lui__opc_lui__regs__imm20_s12__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lui, MCK_regs, MCK_Imm }, },
  { 381 /* lui */, Codasip::i_lui_hi__opc_lui__reg0__imm20_hi__, Convert__Imm1_4, AMFBS_None, { MCK_lui, MCK_x0, MCK__PCT_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 381 /* lui */, Codasip::i_lui_hi__opc_lui__reg0_alias__imm20_hi__, Convert__Imm1_4, AMFBS_None, { MCK_lui, MCK_zero, MCK__PCT_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 381 /* lui */, Codasip::i_lui_hi__opc_lui__regs__imm20_hi__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lui, MCK_regs, MCK__PCT_hi, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_global_alias__opc_loadw__reg0__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_x0, MCK_Imm }, },
  { 385 /* lw */, Codasip::i_load_global_alias__opc_loadw__reg0_alias__rel_addr32__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_zero, MCK_Imm }, },
  { 385 /* lw */, Codasip::i_load_global_alias__opc_loadw__regs__rel_addr32__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lw, MCK_regs, MCK_Imm }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lw, MCK_x0, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lw, MCK_x0, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lw, MCK_x0, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_lw, MCK_zero, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_lw, MCK_zero, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_lw, MCK_zero, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_lw, MCK_regs, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_lw, MCK_regs, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load_alias__opc_loadw__regs__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_lw, MCK_regs, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lw, MCK_x0, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_lw, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_lw, MCK_zero, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_simple__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lw, MCK_regs, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_simple__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_lw, MCK_regs, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_simple__regs__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_lw, MCK_regs, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lw, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lw, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lw, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lw, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lw, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lw, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lw, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lw, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lw, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_lw, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_lw, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__reg0_alias__simm12_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_lw, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lw, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lw, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lw, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lw, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_lw, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 385 /* lw */, Codasip::i_load__opc_loadw__regs__simm12_pcrel_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_lw, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 388 /* move */, Codasip::i_move_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_move, MCK_x0, MCK_x0 }, },
  { 388 /* move */, Codasip::i_move_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_move, MCK_x0, MCK_zero }, },
  { 388 /* move */, Codasip::i_move_alias__reg0__regs__, Convert__Reg1_2, AMFBS_None, { MCK_move, MCK_x0, MCK_regs }, },
  { 388 /* move */, Codasip::i_move_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_move, MCK_zero, MCK_x0 }, },
  { 388 /* move */, Codasip::i_move_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_move, MCK_zero, MCK_zero }, },
  { 388 /* move */, Codasip::i_move_alias__reg0_alias__regs__, Convert__Reg1_2, AMFBS_None, { MCK_move, MCK_zero, MCK_regs }, },
  { 388 /* move */, Codasip::i_move_alias__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_move, MCK_regs, MCK_x0 }, },
  { 388 /* move */, Codasip::i_move_alias__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_move, MCK_regs, MCK_zero }, },
  { 388 /* move */, Codasip::i_move_alias__regs__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_move, MCK_regs, MCK_regs }, },
  { 393 /* mret */, Codasip::i_xret__opc_mret__, Convert_NoOperands, AMFBS_None, { MCK_mret }, },
  { 398 /* mv */, Codasip::i_mv_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_mv, MCK_x0, MCK_x0 }, },
  { 398 /* mv */, Codasip::i_mv_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_mv, MCK_x0, MCK_zero }, },
  { 398 /* mv */, Codasip::i_mv_alias__reg0__regs__, Convert__Reg1_2, AMFBS_None, { MCK_mv, MCK_x0, MCK_regs }, },
  { 398 /* mv */, Codasip::i_mv_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_mv, MCK_zero, MCK_x0 }, },
  { 398 /* mv */, Codasip::i_mv_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_mv, MCK_zero, MCK_zero }, },
  { 398 /* mv */, Codasip::i_mv_alias__reg0_alias__regs__, Convert__Reg1_2, AMFBS_None, { MCK_mv, MCK_zero, MCK_regs }, },
  { 398 /* mv */, Codasip::i_mv_alias__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_mv, MCK_regs, MCK_x0 }, },
  { 398 /* mv */, Codasip::i_mv_alias__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_mv, MCK_regs, MCK_zero }, },
  { 398 /* mv */, Codasip::i_mv_alias__regs__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_mv, MCK_regs, MCK_regs }, },
  { 401 /* neg */, Codasip::i_neg_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_neg, MCK_x0, MCK_x0 }, },
  { 401 /* neg */, Codasip::i_neg_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_neg, MCK_x0, MCK_zero }, },
  { 401 /* neg */, Codasip::i_neg_alias__reg0__regs__, Convert__Reg1_2, AMFBS_None, { MCK_neg, MCK_x0, MCK_regs }, },
  { 401 /* neg */, Codasip::i_neg_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_neg, MCK_zero, MCK_x0 }, },
  { 401 /* neg */, Codasip::i_neg_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_neg, MCK_zero, MCK_zero }, },
  { 401 /* neg */, Codasip::i_neg_alias__reg0_alias__regs__, Convert__Reg1_2, AMFBS_None, { MCK_neg, MCK_zero, MCK_regs }, },
  { 401 /* neg */, Codasip::i_neg_alias__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_neg, MCK_regs, MCK_x0 }, },
  { 401 /* neg */, Codasip::i_neg_alias__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_neg, MCK_regs, MCK_zero }, },
  { 401 /* neg */, Codasip::i_neg_alias__regs__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_neg, MCK_regs, MCK_regs }, },
  { 405 /* nop */, Codasip::i_nop_alias__, Convert_NoOperands, AMFBS_None, { MCK_nop }, },
  { 409 /* not */, Codasip::i_not_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_not, MCK_x0, MCK_x0 }, },
  { 409 /* not */, Codasip::i_not_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_not, MCK_x0, MCK_zero }, },
  { 409 /* not */, Codasip::i_not_alias__reg0__regs__, Convert__Reg1_2, AMFBS_None, { MCK_not, MCK_x0, MCK_regs }, },
  { 409 /* not */, Codasip::i_not_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_not, MCK_zero, MCK_x0 }, },
  { 409 /* not */, Codasip::i_not_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_not, MCK_zero, MCK_zero }, },
  { 409 /* not */, Codasip::i_not_alias__reg0_alias__regs__, Convert__Reg1_2, AMFBS_None, { MCK_not, MCK_zero, MCK_regs }, },
  { 409 /* not */, Codasip::i_not_alias__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_not, MCK_regs, MCK_x0 }, },
  { 409 /* not */, Codasip::i_not_alias__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_not, MCK_regs, MCK_zero }, },
  { 409 /* not */, Codasip::i_not_alias__regs__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_not, MCK_regs, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_or, MCK_x0, MCK_regs, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_or, MCK_x0, MCK_regs, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_regs, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_or, MCK_x0, MCK_regs, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_or, MCK_zero, MCK_regs, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_or, MCK_zero, MCK_regs, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_regs, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_or, MCK_zero, MCK_regs, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_or, MCK_regs, MCK_x0, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_or, MCK_regs, MCK_x0, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_or, MCK_regs, MCK_x0, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_or, MCK_regs, MCK_x0, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_or, MCK_regs, MCK_zero, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_or, MCK_regs, MCK_zero, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_or, MCK_regs, MCK_zero, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_or, MCK_regs, MCK_zero, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_or, MCK_regs, MCK_regs, MCK_x0 }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_or, MCK_regs, MCK_regs, MCK_zero }, },
  { 413 /* or */, Codasip::i_comp_3reg__opc_or__regs__regs__regs__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_or, MCK_regs, MCK_regs, MCK_regs }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_or, MCK_regs, MCK_regs, MCK_Imm }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_or, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_or, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_or, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_or, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_or, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_or, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_or, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_or, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_or, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_or, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_or, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_or, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_or, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 413 /* or */, Codasip::i_comp_2reg_imm__opc_ori__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_or, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_ori, MCK_x0, MCK_x0, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_ori, MCK_x0, MCK_zero, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_ori, MCK_x0, MCK_regs, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_ori, MCK_zero, MCK_x0, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_ori, MCK_zero, MCK_zero, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_ori, MCK_zero, MCK_regs, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_ori, MCK_regs, MCK_x0, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_ori, MCK_regs, MCK_zero, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_ori, MCK_regs, MCK_regs, MCK_Imm }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_ori, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_ori, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_ori, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_ori, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_ori, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_ori, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_ori, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_ori, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_ori, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_ori, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_ori, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_ori, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_ori, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_ori, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_ori, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_ori, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_ori, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 416 /* ori */, Codasip::i_ori_alias__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_ori, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 420 /* rdcycle */, Codasip::i_timers_counters_aliases__opc_rdcycle__reg0__, Convert_NoOperands, AMFBS_None, { MCK_rdcycle, MCK_x0 }, },
  { 420 /* rdcycle */, Codasip::i_timers_counters_aliases__opc_rdcycle__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_rdcycle, MCK_zero }, },
  { 420 /* rdcycle */, Codasip::i_timers_counters_aliases__opc_rdcycle__regs__, Convert__Reg1_1, AMFBS_None, { MCK_rdcycle, MCK_regs }, },
  { 428 /* rdcycleh */, Codasip::i_timers_counters_aliases__opc_rdcycleh__reg0__, Convert_NoOperands, AMFBS_None, { MCK_rdcycleh, MCK_x0 }, },
  { 428 /* rdcycleh */, Codasip::i_timers_counters_aliases__opc_rdcycleh__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_rdcycleh, MCK_zero }, },
  { 428 /* rdcycleh */, Codasip::i_timers_counters_aliases__opc_rdcycleh__regs__, Convert__Reg1_1, AMFBS_None, { MCK_rdcycleh, MCK_regs }, },
  { 437 /* rdinstret */, Codasip::i_timers_counters_aliases__opc_rdinstret__reg0__, Convert_NoOperands, AMFBS_None, { MCK_rdinstret, MCK_x0 }, },
  { 437 /* rdinstret */, Codasip::i_timers_counters_aliases__opc_rdinstret__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_rdinstret, MCK_zero }, },
  { 437 /* rdinstret */, Codasip::i_timers_counters_aliases__opc_rdinstret__regs__, Convert__Reg1_1, AMFBS_None, { MCK_rdinstret, MCK_regs }, },
  { 447 /* rdinstreth */, Codasip::i_timers_counters_aliases__opc_rdinstreth__reg0__, Convert_NoOperands, AMFBS_None, { MCK_rdinstreth, MCK_x0 }, },
  { 447 /* rdinstreth */, Codasip::i_timers_counters_aliases__opc_rdinstreth__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_rdinstreth, MCK_zero }, },
  { 447 /* rdinstreth */, Codasip::i_timers_counters_aliases__opc_rdinstreth__regs__, Convert__Reg1_1, AMFBS_None, { MCK_rdinstreth, MCK_regs }, },
  { 458 /* rdtime */, Codasip::i_timers_counters_aliases__opc_rdtime__reg0__, Convert_NoOperands, AMFBS_None, { MCK_rdtime, MCK_x0 }, },
  { 458 /* rdtime */, Codasip::i_timers_counters_aliases__opc_rdtime__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_rdtime, MCK_zero }, },
  { 458 /* rdtime */, Codasip::i_timers_counters_aliases__opc_rdtime__regs__, Convert__Reg1_1, AMFBS_None, { MCK_rdtime, MCK_regs }, },
  { 465 /* rdtimeh */, Codasip::i_timers_counters_aliases__opc_rdtimeh__reg0__, Convert_NoOperands, AMFBS_None, { MCK_rdtimeh, MCK_x0 }, },
  { 465 /* rdtimeh */, Codasip::i_timers_counters_aliases__opc_rdtimeh__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_rdtimeh, MCK_zero }, },
  { 465 /* rdtimeh */, Codasip::i_timers_counters_aliases__opc_rdtimeh__regs__, Convert__Reg1_1, AMFBS_None, { MCK_rdtimeh, MCK_regs }, },
  { 473 /* ret */, Codasip::i_ret_alias__, Convert_NoOperands, AMFBS_None, { MCK_ret }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK_x0 }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK_zero }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__reg0__rel_addr32__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK_regs }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK_x0 }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK_zero }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__reg0_alias__rel_addr32__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK_regs }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sb, MCK_regs, MCK_Imm, MCK_x0 }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sb, MCK_regs, MCK_Imm, MCK_zero }, },
  { 477 /* sb */, Codasip::i_store_global_alias__opc_storeb__regs__rel_addr32__regs__, Convert__Reg1_1__Imm1_2__Reg1_3, AMFBS_None, { MCK_sb, MCK_regs, MCK_Imm, MCK_regs }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sb, MCK_x0, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sb, MCK_x0, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sb, MCK_x0, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sb, MCK_zero, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sb, MCK_zero, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sb, MCK_zero, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sb, MCK_regs, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sb, MCK_regs, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store_alias__opc_storeb__regs__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sb, MCK_regs, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sb, MCK_x0, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sb, MCK_zero, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_simple__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sb, MCK_regs, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_simple__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sb, MCK_regs, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_simple__regs__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_sb, MCK_regs, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sb, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_s_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sb, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_s_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sb, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sb, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sb, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0__simm12_s_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sb, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sb, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sb, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_s_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sb, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sb, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sb, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__reg0_alias__simm12_s_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sb, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sb, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_s_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sb, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_s_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_sb, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sb, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sb, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 477 /* sb */, Codasip::i_store__opc_storeb__regs__simm12_s_pcrel_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_sb, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 480 /* scall */, Codasip::i_ecall_alias__, Convert_NoOperands, AMFBS_None, { MCK_scall }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_seqz, MCK_x0, MCK_x0 }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_seqz, MCK_x0, MCK_zero }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__reg0__regs__, Convert__Reg1_2, AMFBS_None, { MCK_seqz, MCK_x0, MCK_regs }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_seqz, MCK_zero, MCK_x0 }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_seqz, MCK_zero, MCK_zero }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__reg0_alias__regs__, Convert__Reg1_2, AMFBS_None, { MCK_seqz, MCK_zero, MCK_regs }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_seqz, MCK_regs, MCK_x0 }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_seqz, MCK_regs, MCK_zero }, },
  { 486 /* seqz */, Codasip::i_seqz_alias__regs__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_seqz, MCK_regs, MCK_regs }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sgtz, MCK_x0, MCK_x0 }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sgtz, MCK_x0, MCK_zero }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__reg0__regs__, Convert__Reg1_2, AMFBS_None, { MCK_sgtz, MCK_x0, MCK_regs }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sgtz, MCK_zero, MCK_x0 }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sgtz, MCK_zero, MCK_zero }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__reg0_alias__regs__, Convert__Reg1_2, AMFBS_None, { MCK_sgtz, MCK_zero, MCK_regs }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sgtz, MCK_regs, MCK_x0 }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sgtz, MCK_regs, MCK_zero }, },
  { 491 /* sgtz */, Codasip::i_sgtz_alias__regs__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sgtz, MCK_regs, MCK_regs }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK_x0 }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK_zero }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__reg0__rel_addr32__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK_regs }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK_x0 }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK_zero }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__reg0_alias__rel_addr32__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK_regs }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sh, MCK_regs, MCK_Imm, MCK_x0 }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sh, MCK_regs, MCK_Imm, MCK_zero }, },
  { 496 /* sh */, Codasip::i_store_global_alias__opc_storeh__regs__rel_addr32__regs__, Convert__Reg1_1__Imm1_2__Reg1_3, AMFBS_None, { MCK_sh, MCK_regs, MCK_Imm, MCK_regs }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sh, MCK_x0, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sh, MCK_x0, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sh, MCK_x0, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sh, MCK_zero, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sh, MCK_zero, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sh, MCK_zero, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sh, MCK_regs, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sh, MCK_regs, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store_alias__opc_storeh__regs__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sh, MCK_regs, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sh, MCK_x0, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sh, MCK_zero, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_simple__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sh, MCK_regs, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_simple__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sh, MCK_regs, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_simple__regs__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_sh, MCK_regs, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sh, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_s_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sh, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_s_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sh, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sh, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sh, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0__simm12_s_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sh, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sh, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sh, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_s_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sh, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sh, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sh, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__reg0_alias__simm12_s_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sh, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sh, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_s_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sh, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_s_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_sh, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sh, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sh, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 496 /* sh */, Codasip::i_store__opc_storeh__regs__simm12_s_pcrel_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_sh, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_x0, MCK_x0, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_x0, MCK_x0, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_x0, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_x0, MCK_Imm }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_x0, MCK_zero, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_x0, MCK_zero, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_zero, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_zero, MCK_Imm }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_sll, MCK_x0, MCK_regs, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sll, MCK_x0, MCK_regs, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_regs, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__reg0__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_sll, MCK_x0, MCK_regs, MCK_Imm }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_zero, MCK_x0, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_zero, MCK_x0, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_x0, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_x0, MCK_Imm }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_zero, MCK_zero, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sll, MCK_zero, MCK_zero, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_zero, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_zero, MCK_Imm }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_sll, MCK_zero, MCK_regs, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sll, MCK_zero, MCK_regs, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_regs, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__reg0_alias__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_sll, MCK_zero, MCK_regs, MCK_Imm }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sll, MCK_regs, MCK_x0, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sll, MCK_regs, MCK_x0, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sll, MCK_regs, MCK_x0, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__regs__reg0__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_sll, MCK_regs, MCK_x0, MCK_Imm }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sll, MCK_regs, MCK_zero, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sll, MCK_regs, MCK_zero, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sll, MCK_regs, MCK_zero, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__regs__reg0_alias__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_sll, MCK_regs, MCK_zero, MCK_Imm }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sll, MCK_regs, MCK_regs, MCK_x0 }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sll, MCK_regs, MCK_regs, MCK_zero }, },
  { 499 /* sll */, Codasip::i_comp_3reg__opc_sll__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sll, MCK_regs, MCK_regs, MCK_regs }, },
  { 499 /* sll */, Codasip::i_comp_2reg_imm_shift__opc_slli__regs__regs__shift_imm__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_sll, MCK_regs, MCK_regs, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_slli, MCK_x0, MCK_x0, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_slli, MCK_x0, MCK_zero, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__reg0__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_slli, MCK_x0, MCK_regs, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_slli, MCK_zero, MCK_x0, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_slli, MCK_zero, MCK_zero, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__reg0_alias__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_slli, MCK_zero, MCK_regs, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__regs__reg0__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_slli, MCK_regs, MCK_x0, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__regs__reg0_alias__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_slli, MCK_regs, MCK_zero, MCK_Imm }, },
  { 503 /* slli */, Codasip::i_comp_2reg_imm_shift_slli_alias__regs__regs__shift_imm__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_slli, MCK_regs, MCK_regs, MCK_Imm }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_x0, MCK_x0, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_x0, MCK_x0, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_slt, MCK_x0, MCK_x0, MCK_regs }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_x0, MCK_zero, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_x0, MCK_zero, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_slt, MCK_x0, MCK_zero, MCK_regs }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_slt, MCK_x0, MCK_regs, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_slt, MCK_x0, MCK_regs, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_slt, MCK_x0, MCK_regs, MCK_regs }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_zero, MCK_x0, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_zero, MCK_x0, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_slt, MCK_zero, MCK_x0, MCK_regs }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_zero, MCK_zero, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_slt, MCK_zero, MCK_zero, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_slt, MCK_zero, MCK_zero, MCK_regs }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_slt, MCK_zero, MCK_regs, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_slt, MCK_zero, MCK_regs, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_slt, MCK_zero, MCK_regs, MCK_regs }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_slt, MCK_regs, MCK_x0, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_slt, MCK_regs, MCK_x0, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_slt, MCK_regs, MCK_x0, MCK_regs }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_slt, MCK_regs, MCK_zero, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_slt, MCK_regs, MCK_zero, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_slt, MCK_regs, MCK_zero, MCK_regs }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_slt, MCK_regs, MCK_regs, MCK_x0 }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_slt, MCK_regs, MCK_regs, MCK_zero }, },
  { 508 /* slt */, Codasip::i_comp_3reg__opc_slt__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_slt, MCK_regs, MCK_regs, MCK_regs }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_slti, MCK_x0, MCK_x0, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_slti, MCK_x0, MCK_zero, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_slti, MCK_x0, MCK_regs, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_slti, MCK_zero, MCK_x0, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_slti, MCK_zero, MCK_zero, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_slti, MCK_zero, MCK_regs, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_slti, MCK_regs, MCK_x0, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_slti, MCK_regs, MCK_zero, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_slti, MCK_regs, MCK_regs, MCK_Imm }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_slti, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_slti, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_slti, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_slti, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_slti, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_slti, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_slti, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_slti, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_slti, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_slti, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_slti, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_slti, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_slti, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_slti, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_slti, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_slti, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_slti, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 512 /* slti */, Codasip::i_comp_2reg_imm__opc_slti__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_slti, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_x0, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_zero, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_regs, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_x0, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_zero, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_regs, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_x0, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_zero, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_regs, MCK_Imm }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 517 /* sltiu */, Codasip::i_comp_2reg_imm__opc_sltiu__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_sltiu, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_x0, MCK_x0, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_x0, MCK_x0, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sltu, MCK_x0, MCK_x0, MCK_regs }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_x0, MCK_zero, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_x0, MCK_zero, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sltu, MCK_x0, MCK_zero, MCK_regs }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_sltu, MCK_x0, MCK_regs, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sltu, MCK_x0, MCK_regs, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sltu, MCK_x0, MCK_regs, MCK_regs }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_zero, MCK_x0, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_zero, MCK_x0, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sltu, MCK_zero, MCK_x0, MCK_regs }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_zero, MCK_zero, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltu, MCK_zero, MCK_zero, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sltu, MCK_zero, MCK_zero, MCK_regs }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_sltu, MCK_zero, MCK_regs, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sltu, MCK_zero, MCK_regs, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sltu, MCK_zero, MCK_regs, MCK_regs }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sltu, MCK_regs, MCK_x0, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sltu, MCK_regs, MCK_x0, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sltu, MCK_regs, MCK_x0, MCK_regs }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sltu, MCK_regs, MCK_zero, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sltu, MCK_regs, MCK_zero, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sltu, MCK_regs, MCK_zero, MCK_regs }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sltu, MCK_regs, MCK_regs, MCK_x0 }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sltu, MCK_regs, MCK_regs, MCK_zero }, },
  { 523 /* sltu */, Codasip::i_comp_3reg__opc_sltu__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sltu, MCK_regs, MCK_regs, MCK_regs }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sltz, MCK_x0, MCK_x0 }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltz, MCK_x0, MCK_zero }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__reg0__regs__, Convert__Reg1_2, AMFBS_None, { MCK_sltz, MCK_x0, MCK_regs }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sltz, MCK_zero, MCK_x0 }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sltz, MCK_zero, MCK_zero }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__reg0_alias__regs__, Convert__Reg1_2, AMFBS_None, { MCK_sltz, MCK_zero, MCK_regs }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sltz, MCK_regs, MCK_x0 }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sltz, MCK_regs, MCK_zero }, },
  { 528 /* sltz */, Codasip::i_sltz_alias__regs__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sltz, MCK_regs, MCK_regs }, },
  { 533 /* snez */, Codasip::i_snez_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_snez, MCK_x0, MCK_x0 }, },
  { 533 /* snez */, Codasip::i_snez_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_snez, MCK_x0, MCK_zero }, },
  { 533 /* snez */, Codasip::i_snez_alias__reg0__regs__, Convert__Reg1_2, AMFBS_None, { MCK_snez, MCK_x0, MCK_regs }, },
  { 533 /* snez */, Codasip::i_snez_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_snez, MCK_zero, MCK_x0 }, },
  { 533 /* snez */, Codasip::i_snez_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_snez, MCK_zero, MCK_zero }, },
  { 533 /* snez */, Codasip::i_snez_alias__reg0_alias__regs__, Convert__Reg1_2, AMFBS_None, { MCK_snez, MCK_zero, MCK_regs }, },
  { 533 /* snez */, Codasip::i_snez_alias__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_snez, MCK_regs, MCK_x0 }, },
  { 533 /* snez */, Codasip::i_snez_alias__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_snez, MCK_regs, MCK_zero }, },
  { 533 /* snez */, Codasip::i_snez_alias__regs__regs__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_snez, MCK_regs, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_x0, MCK_x0, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_x0, MCK_x0, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_x0, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_x0, MCK_Imm }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_x0, MCK_zero, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_x0, MCK_zero, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_zero, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_zero, MCK_Imm }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_sra, MCK_x0, MCK_regs, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sra, MCK_x0, MCK_regs, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_regs, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__reg0__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_sra, MCK_x0, MCK_regs, MCK_Imm }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_zero, MCK_x0, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_zero, MCK_x0, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_x0, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_x0, MCK_Imm }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_zero, MCK_zero, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sra, MCK_zero, MCK_zero, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_zero, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_zero, MCK_Imm }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_sra, MCK_zero, MCK_regs, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sra, MCK_zero, MCK_regs, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_regs, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__reg0_alias__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_sra, MCK_zero, MCK_regs, MCK_Imm }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sra, MCK_regs, MCK_x0, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sra, MCK_regs, MCK_x0, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sra, MCK_regs, MCK_x0, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__regs__reg0__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_sra, MCK_regs, MCK_x0, MCK_Imm }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sra, MCK_regs, MCK_zero, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sra, MCK_regs, MCK_zero, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sra, MCK_regs, MCK_zero, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__regs__reg0_alias__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_sra, MCK_regs, MCK_zero, MCK_Imm }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sra, MCK_regs, MCK_regs, MCK_x0 }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sra, MCK_regs, MCK_regs, MCK_zero }, },
  { 538 /* sra */, Codasip::i_comp_3reg__opc_sra__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sra, MCK_regs, MCK_regs, MCK_regs }, },
  { 538 /* sra */, Codasip::i_comp_2reg_imm_shift__opc_srai__regs__regs__shift_imm__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_sra, MCK_regs, MCK_regs, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srai, MCK_x0, MCK_x0, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srai, MCK_x0, MCK_zero, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__reg0__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srai, MCK_x0, MCK_regs, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srai, MCK_zero, MCK_x0, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srai, MCK_zero, MCK_zero, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__reg0_alias__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srai, MCK_zero, MCK_regs, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__regs__reg0__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srai, MCK_regs, MCK_x0, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__regs__reg0_alias__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srai, MCK_regs, MCK_zero, MCK_Imm }, },
  { 542 /* srai */, Codasip::i_comp_2reg_imm_shift_srai_alias__regs__regs__shift_imm__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_srai, MCK_regs, MCK_regs, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_x0, MCK_x0, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_x0, MCK_x0, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_x0, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_x0, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_x0, MCK_zero, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_x0, MCK_zero, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_zero, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_zero, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_srl, MCK_x0, MCK_regs, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_srl, MCK_x0, MCK_regs, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_regs, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__reg0__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srl, MCK_x0, MCK_regs, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_zero, MCK_x0, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_zero, MCK_x0, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_x0, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_x0, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_zero, MCK_zero, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_srl, MCK_zero, MCK_zero, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_zero, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_zero, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_srl, MCK_zero, MCK_regs, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_srl, MCK_zero, MCK_regs, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_regs, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__reg0_alias__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srl, MCK_zero, MCK_regs, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_srl, MCK_regs, MCK_x0, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_srl, MCK_regs, MCK_x0, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_srl, MCK_regs, MCK_x0, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__regs__reg0__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srl, MCK_regs, MCK_x0, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_srl, MCK_regs, MCK_zero, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_srl, MCK_regs, MCK_zero, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_srl, MCK_regs, MCK_zero, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__regs__reg0_alias__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srl, MCK_regs, MCK_zero, MCK_Imm }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_srl, MCK_regs, MCK_regs, MCK_x0 }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_srl, MCK_regs, MCK_regs, MCK_zero }, },
  { 547 /* srl */, Codasip::i_comp_3reg__opc_srl__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_srl, MCK_regs, MCK_regs, MCK_regs }, },
  { 547 /* srl */, Codasip::i_comp_2reg_imm_shift__opc_srli__regs__regs__shift_imm__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_srl, MCK_regs, MCK_regs, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srli, MCK_x0, MCK_x0, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srli, MCK_x0, MCK_zero, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__reg0__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srli, MCK_x0, MCK_regs, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srli, MCK_zero, MCK_x0, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__reg0_alias__shift_imm__, Convert__Imm1_3, AMFBS_None, { MCK_srli, MCK_zero, MCK_zero, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__reg0_alias__regs__shift_imm__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_srli, MCK_zero, MCK_regs, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__regs__reg0__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srli, MCK_regs, MCK_x0, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__regs__reg0_alias__shift_imm__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_srli, MCK_regs, MCK_zero, MCK_Imm }, },
  { 551 /* srli */, Codasip::i_comp_2reg_imm_shift_srli_alias__regs__regs__shift_imm__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_srli, MCK_regs, MCK_regs, MCK_Imm }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_x0, MCK_x0, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_x0, MCK_x0, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sub, MCK_x0, MCK_x0, MCK_regs }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_x0, MCK_zero, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_x0, MCK_zero, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sub, MCK_x0, MCK_zero, MCK_regs }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_sub, MCK_x0, MCK_regs, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sub, MCK_x0, MCK_regs, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sub, MCK_x0, MCK_regs, MCK_regs }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_zero, MCK_x0, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_zero, MCK_x0, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sub, MCK_zero, MCK_x0, MCK_regs }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_zero, MCK_zero, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sub, MCK_zero, MCK_zero, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sub, MCK_zero, MCK_zero, MCK_regs }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_sub, MCK_zero, MCK_regs, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_sub, MCK_zero, MCK_regs, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_sub, MCK_zero, MCK_regs, MCK_regs }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sub, MCK_regs, MCK_x0, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sub, MCK_regs, MCK_x0, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sub, MCK_regs, MCK_x0, MCK_regs }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sub, MCK_regs, MCK_zero, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sub, MCK_regs, MCK_zero, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sub, MCK_regs, MCK_zero, MCK_regs }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sub, MCK_regs, MCK_regs, MCK_x0 }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_sub, MCK_regs, MCK_regs, MCK_zero }, },
  { 556 /* sub */, Codasip::i_comp_3reg__opc_sub__regs__regs__regs__, Convert__Reg1_1__Reg1_2__Reg1_3, AMFBS_None, { MCK_sub, MCK_regs, MCK_regs, MCK_regs }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK_x0 }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK_zero }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__reg0__rel_addr32__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK_regs }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK_x0 }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK_zero }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__reg0_alias__rel_addr32__regs__, Convert__Reg1_3__Imm1_2, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK_regs }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sw, MCK_regs, MCK_Imm, MCK_x0 }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sw, MCK_regs, MCK_Imm, MCK_zero }, },
  { 560 /* sw */, Codasip::i_store_global_alias__opc_storew__regs__rel_addr32__regs__, Convert__Reg1_1__Imm1_2__Reg1_3, AMFBS_None, { MCK_sw, MCK_regs, MCK_Imm, MCK_regs }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sw, MCK_x0, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sw, MCK_x0, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sw, MCK_x0, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_sw, MCK_zero, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_sw, MCK_zero, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_sw, MCK_zero, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__regs__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_sw, MCK_regs, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__regs__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_sw, MCK_regs, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store_alias__opc_storew__regs__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_sw, MCK_regs, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sw, MCK_x0, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_simple__reg0__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_simple__reg0_alias__, Convert__Imm1_2, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_simple__regs__, Convert__Reg1_4__Imm1_2, AMFBS_None, { MCK_sw, MCK_zero, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_simple__reg0__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sw, MCK_regs, MCK_Imm, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_simple__reg0_alias__, Convert__Reg1_1__Imm1_2, AMFBS_None, { MCK_sw, MCK_regs, MCK_Imm, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_simple__regs__, Convert__Reg1_1__Reg1_4__Imm1_2, AMFBS_None, { MCK_sw, MCK_regs, MCK_Imm, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sw, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_s_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sw, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_s_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sw, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sw, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sw, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0__simm12_s_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sw, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sw, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sw, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_s_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sw, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0__, Convert__Imm1_4, AMFBS_None, { MCK_sw, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__reg0_alias__, Convert__Imm1_4, AMFBS_None, { MCK_sw, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__reg0_alias__simm12_s_pcrel_lo__regs__, Convert__Reg1_7__Imm1_4, AMFBS_None, { MCK_sw, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sw, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_s_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sw, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_s_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_sw, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sw, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_x0, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__reg0_alias__, Convert__Reg1_1__Imm1_4, AMFBS_None, { MCK_sw, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_zero, MCK__41_ }, },
  { 560 /* sw */, Codasip::i_store__opc_storew__regs__simm12_s_pcrel_lo__regs__, Convert__Reg1_1__Reg1_7__Imm1_4, AMFBS_None, { MCK_sw, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_, MCK__40_, MCK_regs, MCK__41_ }, },
  { 563 /* tail */, Codasip::i_tail_alias__rel_addr32_call_tail_simple__, Convert__Imm1_1, AMFBS_None, { MCK_tail, MCK_Imm }, },
  { 568 /* unimp */, Codasip::i_unimp__opc_unimp__, Convert_NoOperands, AMFBS_None, { MCK_unimp }, },
  { 574 /* wfi */, Codasip::i_wfi__opc_wfi__, Convert_NoOperands, AMFBS_None, { MCK_wfi }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_xor, MCK_x0, MCK_regs, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_xor, MCK_x0, MCK_regs, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_regs, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_xor, MCK_x0, MCK_regs, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0__reg0__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0__regs__, Convert__Reg1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0_alias__reg0_alias__, Convert_NoOperands, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__reg0_alias__regs__, Convert__Reg1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__regs__reg0__, Convert__Reg1_2, AMFBS_None, { MCK_xor, MCK_zero, MCK_regs, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__regs__reg0_alias__, Convert__Reg1_2, AMFBS_None, { MCK_xor, MCK_zero, MCK_regs, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__reg0_alias__regs__regs__, Convert__Reg1_2__Reg1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_regs, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_xor, MCK_zero, MCK_regs, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_xor, MCK_regs, MCK_x0, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__reg0__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_xor, MCK_regs, MCK_x0, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__reg0__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_xor, MCK_regs, MCK_x0, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_xor, MCK_regs, MCK_x0, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__reg0_alias__reg0__, Convert__Reg1_1, AMFBS_None, { MCK_xor, MCK_regs, MCK_zero, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__reg0_alias__reg0_alias__, Convert__Reg1_1, AMFBS_None, { MCK_xor, MCK_regs, MCK_zero, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__reg0_alias__regs__, Convert__Reg1_1__Reg1_3, AMFBS_None, { MCK_xor, MCK_regs, MCK_zero, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_xor, MCK_regs, MCK_zero, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__regs__reg0__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_xor, MCK_regs, MCK_regs, MCK_x0 }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__regs__reg0_alias__, Convert__Reg1_1__Reg1_2, AMFBS_None, { MCK_xor, MCK_regs, MCK_regs, MCK_zero }, },
  { 578 /* xor */, Codasip::i_comp_3reg__opc_xor__regs__regs__regs__, Convert__Reg1_1__Reg1_3__Reg1_2, AMFBS_None, { MCK_xor, MCK_regs, MCK_regs, MCK_regs }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_xor, MCK_regs, MCK_regs, MCK_Imm }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xor, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xor, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_xor, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_xor, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xor, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xor, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_xor, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_xor, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_xor, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_xor, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_xor, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_xor, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_xor, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 578 /* xor */, Codasip::i_comp_2reg_imm__opc_xori__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_xor, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_xori, MCK_x0, MCK_x0, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_xori, MCK_x0, MCK_zero, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_xori, MCK_x0, MCK_regs, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__reg0__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_xori, MCK_zero, MCK_x0, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_simple__, Convert__Imm1_3, AMFBS_None, { MCK_xori, MCK_zero, MCK_zero, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__regs__simm12_simple__, Convert__Reg1_2__Imm1_3, AMFBS_None, { MCK_xori, MCK_zero, MCK_regs, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__reg0__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_xori, MCK_regs, MCK_x0, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__reg0_alias__simm12_simple__, Convert__Reg1_1__Imm1_3, AMFBS_None, { MCK_xori, MCK_regs, MCK_zero, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__regs__simm12_simple__, Convert__Reg1_1__Reg1_2__Imm1_3, AMFBS_None, { MCK_xori, MCK_regs, MCK_regs, MCK_Imm }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xori, MCK_x0, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xori, MCK_x0, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xori, MCK_x0, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xori, MCK_x0, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_xori, MCK_x0, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_xori, MCK_x0, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__reg0__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xori, MCK_zero, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__reg0__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xori, MCK_zero, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xori, MCK_zero, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__reg0_alias__simm12_pcrel_lo__, Convert__Imm1_5, AMFBS_None, { MCK_xori, MCK_zero, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__regs__simm12_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_xori, MCK_zero, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__reg0_alias__regs__simm12_pcrel_lo__, Convert__Reg1_2__Imm1_5, AMFBS_None, { MCK_xori, MCK_zero, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__reg0__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_xori, MCK_regs, MCK_x0, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__reg0__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_xori, MCK_regs, MCK_x0, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__reg0_alias__simm12_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_xori, MCK_regs, MCK_zero, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__reg0_alias__simm12_pcrel_lo__, Convert__Reg1_1__Imm1_5, AMFBS_None, { MCK_xori, MCK_regs, MCK_zero, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__regs__simm12_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_xori, MCK_regs, MCK_regs, MCK__PCT_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
  { 582 /* xori */, Codasip::i_xori_alias__regs__regs__simm12_pcrel_lo__, Convert__Reg1_1__Reg1_2__Imm1_5, AMFBS_None, { MCK_xori, MCK_regs, MCK_regs, MCK__PCT_pcrel_95_lo, MCK__40_, MCK_Imm, MCK__41_ }, },
};

#include "llvm/Support/Debug.h"
#include "llvm/Support/Format.h"

unsigned CodasipAsmParser::
MatchInstructionImpl(const OperandVector &Operands,
                     MCInst &Inst,
                     uint64_t &ErrorInfo,
                     FeatureBitset &MissingFeatures,
                     bool matchingInlineAsm, unsigned VariantID) {
  // Eliminate obvious mismatches.
  if (Operands.size() > 9) {
    ErrorInfo = 9;
    return Match_InvalidOperand;
  }

  // Get the current feature set.
  const FeatureBitset &AvailableFeatures = getAvailableFeatures();

  // Get the instruction mnemonic, which is the first token.
  StringRef Mnemonic;
  if (Operands[0]->isToken())
    Mnemonic = ((CodasipOperand&)*Operands[0]).getToken();

  // Some state to try to produce better error messages.
  bool HadMatchOtherThanFeatures = false;
  bool HadMatchOtherThanPredicate = false;
  unsigned RetCode = Match_InvalidOperand;
  MissingFeatures.set();
  // Set ErrorInfo to the operand that mismatches if it is
  // wrong for all instances of the instruction.
  ErrorInfo = ~0ULL;
  // Find the appropriate table for this asm variant.
  const MatchEntry *Start, *End;
  switch (VariantID) {
  default: llvm_unreachable("invalid variant!");
  case 0: Start = std::begin(MatchTable0); End = std::end(MatchTable0); break;
  }
  // Search the table.
  auto MnemonicRange = std::make_pair(Start, End);
  unsigned SIndex = Mnemonic.empty() ? 0 : 1;
  if (!Mnemonic.empty())
    MnemonicRange = std::equal_range(Start, End, Mnemonic.lower(), LessOpcode());

  DEBUG_WITH_TYPE("asm-matcher", dbgs() << "AsmMatcher: found " <<
  std::distance(MnemonicRange.first, MnemonicRange.second) << 
  " encodings with mnemonic '" << Mnemonic << "'\n");

  // Return a more specific error code if no mnemonics match.
  if (MnemonicRange.first == MnemonicRange.second)
    return Match_MnemonicFail;

  for (const MatchEntry *it = MnemonicRange.first, *ie = MnemonicRange.second;
       it != ie; ++it) {
    const FeatureBitset &RequiredFeatures = FeatureBitsets[it->RequiredFeaturesIdx];
    bool HasRequiredFeatures =
      (AvailableFeatures & RequiredFeatures) == RequiredFeatures;
    DEBUG_WITH_TYPE("asm-matcher", dbgs() << "Trying to match opcode "
                                          << MII.getName(it->Opcode) << "\n");
    bool OperandsValid = true;
    for (unsigned FormalIdx = SIndex, ActualIdx = SIndex; FormalIdx != 9; ++FormalIdx) {
      auto Formal = static_cast<MatchClassKind>(it->Classes[FormalIdx]);
      DEBUG_WITH_TYPE("asm-matcher",
                      dbgs() << "  Matching formal operand class " << getMatchClassName(Formal)
                             << " against actual operand at index " << ActualIdx);
      if (ActualIdx < Operands.size())
        DEBUG_WITH_TYPE("asm-matcher", dbgs() << " (";
                        Operands[ActualIdx]->print(dbgs()); dbgs() << "): ");
      else
        DEBUG_WITH_TYPE("asm-matcher", dbgs() << ": ");
      if (ActualIdx >= Operands.size()) {
        DEBUG_WITH_TYPE("asm-matcher", dbgs() << "actual operand index out of range ");
        OperandsValid = (Formal == InvalidMatchClass) || isSubclass(Formal, OptionalMatchClass);
        if (!OperandsValid) ErrorInfo = ActualIdx;
        break;
      }
      MCParsedAsmOperand &Actual = *Operands[ActualIdx];
      unsigned Diag = validateOperandClass(Actual, Formal);
      if (Diag == Match_Success) {
        DEBUG_WITH_TYPE("asm-matcher",
                        dbgs() << "match success using generic matcher\n");
        ++ActualIdx;
        continue;
      }
      // If the generic handler indicates an invalid operand
      // failure, check for a special case.
      if (Diag != Match_Success) {
        unsigned TargetDiag = validateTargetOperandClass(Actual, Formal);
        if (TargetDiag == Match_Success) {
          DEBUG_WITH_TYPE("asm-matcher",
                          dbgs() << "match success using target matcher\n");
          ++ActualIdx;
          continue;
        }
        // If the target matcher returned a specific error code use
        // that, else use the one from the generic matcher.
        if (TargetDiag != Match_InvalidOperand && HasRequiredFeatures)
          Diag = TargetDiag;
      }
      // If current formal operand wasn't matched and it is optional
      // then try to match next formal operand
      if (Diag == Match_InvalidOperand && isSubclass(Formal, OptionalMatchClass)) {
        DEBUG_WITH_TYPE("asm-matcher", dbgs() << "ignoring optional operand\n");
        continue;
      }
      // If this operand is broken for all of the instances of this
      // mnemonic, keep track of it so we can report loc info.
      // If we already had a match that only failed due to a
      // target predicate, that diagnostic is preferred.
      if (!HadMatchOtherThanPredicate &&
          (it == MnemonicRange.first || ErrorInfo <= ActualIdx)) {
        if (HasRequiredFeatures && (ErrorInfo != ActualIdx || Diag != Match_InvalidOperand))
          RetCode = Diag;
        ErrorInfo = ActualIdx;
      }
      // Otherwise, just reject this instance of the mnemonic.
      OperandsValid = false;
      break;
    }

    if (!OperandsValid) {
      DEBUG_WITH_TYPE("asm-matcher", dbgs() << "Opcode result: multiple "
                                               "operand mismatches, ignoring "
                                               "this opcode\n");
      continue;
    }
    if (!HasRequiredFeatures) {
      HadMatchOtherThanFeatures = true;
      FeatureBitset NewMissingFeatures = RequiredFeatures & ~AvailableFeatures;
      DEBUG_WITH_TYPE("asm-matcher", dbgs() << "Missing target features:";
                       for (unsigned I = 0, E = NewMissingFeatures.size(); I != E; ++I)
                         if (NewMissingFeatures[I])
                           dbgs() << ' ' << I;
                       dbgs() << "\n");
      if (NewMissingFeatures.count() <=
          MissingFeatures.count())
        MissingFeatures = NewMissingFeatures;
      continue;
    }

    Inst.clear();

    Inst.setOpcode(it->Opcode);
    // We have a potential match but have not rendered the operands.
    // Check the target predicate to handle any context sensitive
    // constraints.
    // For example, Ties that are referenced multiple times must be
    // checked here to ensure the input is the same for each match
    // constraints. If we leave it any later the ties will have been
    // canonicalized
    unsigned MatchResult;
    if ((MatchResult = checkEarlyTargetMatchPredicate(Inst, Operands)) != Match_Success) {
      Inst.clear();
      DEBUG_WITH_TYPE(
          "asm-matcher",
          dbgs() << "Early target match predicate failed with diag code "
                 << MatchResult << "\n");
      RetCode = MatchResult;
      HadMatchOtherThanPredicate = true;
      continue;
    }

    if (matchingInlineAsm) {
      convertToMapAndConstraints(it->ConvertFn, Operands);
      if (!checkAsmTiedOperandConstraints(*this, it->ConvertFn, Operands, ErrorInfo))
        return Match_InvalidTiedOperand;

      return Match_Success;
    }

    // We have selected a definite instruction, convert the parsed
    // operands into the appropriate MCInst.
    convertToMCInst(it->ConvertFn, Inst, it->Opcode, Operands);

    // We have a potential match. Check the target predicate to
    // handle any context sensitive constraints.
    if ((MatchResult = checkTargetMatchPredicate(Inst)) != Match_Success) {
      DEBUG_WITH_TYPE("asm-matcher",
                      dbgs() << "Target match predicate failed with diag code "
                             << MatchResult << "\n");
      Inst.clear();
      RetCode = MatchResult;
      HadMatchOtherThanPredicate = true;
      continue;
    }

    if (!checkAsmTiedOperandConstraints(*this, it->ConvertFn, Operands, ErrorInfo))
      return Match_InvalidTiedOperand;

    DEBUG_WITH_TYPE(
        "asm-matcher",
        dbgs() << "Opcode result: complete match, selecting this opcode\n");
    return Match_Success;
  }

  // Okay, we had no match.  Try to return a useful error code.
  if (HadMatchOtherThanPredicate || !HadMatchOtherThanFeatures)
    return RetCode;

  ErrorInfo = 0;
  return Match_MissingFeature;
}

#endif // GET_MATCHER_IMPLEMENTATION


#ifdef GET_MNEMONIC_SPELL_CHECKER
#undef GET_MNEMONIC_SPELL_CHECKER

static std::string CodasipMnemonicSpellCheck(StringRef S, const FeatureBitset &FBS, unsigned VariantID) {
  const unsigned MaxEditDist = 2;
  std::vector<StringRef> Candidates;
  StringRef Prev = "";

  // Find the appropriate table for this asm variant.
  const MatchEntry *Start, *End;
  switch (VariantID) {
  default: llvm_unreachable("invalid variant!");
  case 0: Start = std::begin(MatchTable0); End = std::end(MatchTable0); break;
  }

  for (auto I = Start; I < End; I++) {
    // Ignore unsupported instructions.
    const FeatureBitset &RequiredFeatures = FeatureBitsets[I->RequiredFeaturesIdx];
    if ((FBS & RequiredFeatures) != RequiredFeatures)
      continue;

    StringRef T = I->getMnemonic();
    // Avoid recomputing the edit distance for the same string.
    if (T.equals(Prev))
      continue;

    Prev = T;
    unsigned Dist = S.edit_distance(T, false, MaxEditDist);
    if (Dist <= MaxEditDist)
      Candidates.push_back(T);
  }

  if (Candidates.empty())
    return "";

  std::string Res = ", did you mean: ";
  unsigned i = 0;
  for( ; i < Candidates.size() - 1; i++)
    Res += Candidates[i].str() + ", ";
  return Res + Candidates[i].str() + "?";
}

#endif // GET_MNEMONIC_SPELL_CHECKER

