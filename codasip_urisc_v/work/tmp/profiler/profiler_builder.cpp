#ifndef _PROFILER_BUILDER_H_
#define _PROFILER_BUILDER_H_
#include "simulator/profilerl/profiler_interface.h"
#include "codasip_profiler_MI15codasip_urisc_v_Profiler.h"
namespace codasip {
namespace profiler {
ProfilerInterface* BuildProfiler() {
return new codasip::profiler::MI15codasip_urisc_v::Profiler();
}
}
}
#endif
