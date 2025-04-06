#ifndef __REGISTERS_CODASIP_HPP__
#define __REGISTERS_CODASIP_HPP__

#ifdef CODASIP_RVE
#define INT_REGISTER 16
#else
#define INT_REGISTER 32
#endif

#define MAX_REGISTER INT_REGISTER

#ifdef CODASIP_RV64
#define REG_SIZE uint64_t
#else
#define REG_SIZE uint32_t
#endif

/// Registers_codasip holds the register state of a thread in a codasip_urisc_v.
class _LIBUNWIND_HIDDEN Registers_codasip : public Registers_codasip_base<REG_SIZE> {
public:
  Registers_codasip();
  Registers_codasip(const void *registers);

  void*       getRegisterAddr() const override { return (void *) &_registers; }
  bool        validRegister(int num) const override;
  REG_SIZE    getRegister(int num) const override;
  void        setRegister(int num, REG_SIZE value) override;

  REG_SIZE  getSP() const override         { return _registers.__r[2]; }
  void      setSP(REG_SIZE value) override { _registers.__r[2] = value; }
  REG_SIZE  getIP() const override         { return _registers.__r[1]; }
  void      setIP(REG_SIZE value) override { _registers.__r[1] = value; }
private:
  struct GPRs {
      REG_SIZE __r[MAX_REGISTER];
  };
  GPRs _registers;
};

inline Registers_codasip::Registers_codasip(const void *registers) {
  static_assert((check_fit<Registers_codasip, unw_context_t>::does_fit),
                "Registers_codasip do not fit into unw_context_t");
  memcpy(&_registers, static_cast<const uint8_t *>(registers),
         sizeof(_registers));
}

inline Registers_codasip::Registers_codasip() {
  memset(&_registers, 0, sizeof(_registers));
}

inline bool Registers_codasip::validRegister(int regNum) const {
  // Register -1 is IP and -2 is SP
  if (regNum >= UNW_REG_SP && regNum < MAX_REGISTER)
    return true;
  return false;
}

inline REG_SIZE Registers_codasip::getRegister(int regNum) const {
  if(regNum == UNW_REG_IP)
    return getIP();
  if(regNum == UNW_REG_SP)
    return getSP();
  if (regNum >= 0 && regNum < MAX_REGISTER)
    return (uint64_t)_registers.__r[regNum];
  _LIBUNWIND_ABORT("Unsupported register number!");
}

inline void Registers_codasip::setRegister(int regNum, REG_SIZE value) {
  if(regNum == UNW_REG_IP)
    return setIP(value);
  if(regNum == UNW_REG_SP)
    return setSP(value);
  if (regNum >= 0 && regNum < MAX_REGISTER) {
    _registers.__r[regNum] = value;
    return;
  }
  _LIBUNWIND_ABORT("Unsupported register number!");
}

#endif // __REGISTERS_HPP__
