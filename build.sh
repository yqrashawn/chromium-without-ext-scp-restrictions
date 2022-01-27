#!/usr/bin/env bash

../../depot_tools/gn gen out/Default # --args='cc_wrapper="ccache"'
cp ../../args.gn out/Default/
export CCACHE_CPP2=yes
export CCACHE_SLOPPINESS=time_macros
export PATH=$(pwd)/third_party/llvm-build/Release+Asserts/bin:$PATH
../../depot_tools/autoninja -C out/Default chrome
