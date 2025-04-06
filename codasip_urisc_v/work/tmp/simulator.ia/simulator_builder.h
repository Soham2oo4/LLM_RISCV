#ifndef _SIMULATOR_BUILDER_H_
#define _SIMULATOR_BUILDER_H_
#include "simulator/simbase/codasip_interface.h"
#include "codasip_simulator_MI15codasip_urisc_v_Sim.h"
namespace codasip {
namespace simulator {
inline std::unique_ptr<SimulatorPrivateInterface> BuildSimulator(const char* const codalParameters) {
return std::unique_ptr<SimulatorPrivateInterface>(new codasip::simulator::MI15codasip_urisc_v::Sim("codasip_urisc_v", 0, codalParameters));
}
const char * GetCodalParamsHelp() {
return codasip::simulator::MI15codasip_urisc_v::Sim::GetCodalParamsHelp();
}
}
}
#endif
