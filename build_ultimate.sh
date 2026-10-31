#!/bin/bash
# Ultimate Kernel A50 - build helper (Mint android-14.0 base)
set -e
cd "$(dirname "$0")"
[ -e toolchain ] || ln -sfn ~/toolchains/proton toolchain
export KBUILD_BUILD_USER=gord KBUILD_BUILD_HOST=UltimateKernel-A50
./build.sh -d a50 -v oneui -a 12
