#!/bin/bash
export CTEST_OUTPUT_ON_FAILURE=true
./tools/polly/bin/polly --reconfig --toolchain gcc-7-cxx17 --test --config-all Debug --fwd CMAKE_EXE_LINKER="-fuse-ld=gold" ENABLE_COVERAGE=yes
./tools/polly/bin/polly --reconfig --toolchain gcc-7-cxx17 --config-all Debug --target gcov
gcovr -r  .
