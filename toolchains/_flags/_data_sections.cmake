if(DEFINED _TOOLCHAIN_FLAGS_DATA_SECTIONS)
  return()
else()
  set(_TOOLCHAIN_FLAGS_DATA_SECTIONS 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/../_utilities/_add_cache_flags.cmake")

string(COMPARE EQUAL "${ANDROID_NDK_VERSION}" "" _not_android)
if(_not_android)
  _add_cache_flags(CMAKE_CXX_FLAGS "-fdata-sections")
  _add_cache_flags(CMAKE_C_FLAGS "-fdata-sections")
else()
  _add_cache_flags(CMAKE_CXX_FLAGS_INIT "-fdata-sections")
  _add_cache_flags(CMAKE_C_FLAGS_INIT "-fdata-sections")
endif()