# Ultimate Kernel A50

Custom kernel for the Samsung Galaxy A50 (Exynos 9610), built for One UI 8.5 / Android 16 ports.
Based on FreshROMs Mint (android-14.0 branch, Linux 4.14.194), the same kernel base the One UI 8.5 port ships.

## Changes vs Mint
- CONFIG_KALLSYMS_ALL=y (+ DEBUG_KERNEL, with debug overhead options kept off) for full APatch / KernelPatch support
- Samsung uH/RKP off and EROFS on (inherited from Mint)

## Build
Toolchain: Proton Clang 13 (gitlab.com/TenSeventy7/exynos9610_toolchains_fresh, branch proton) at ~/toolchains/proton.
Tip: rename ld and as in the toolchain bin folder (keep the aarch64-linux-gnu-* ones) so host tools link with the system linker.

    ./build_ultimate.sh

## Root with APatch
Flash the kernel, then patch boot with APatch (or on PC with kptools if the app's repack fails),
and install a metamodule (e.g. meta-overlayfs) so modules get mounted.

## Credits
FreshROMs / TenSeventy7 (Mint), Samsung OSRC, bmax121 (APatch / KernelPatch).
