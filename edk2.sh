export WORKSPACE=$PWD
export PACKAGES_PATH=$WORKSPACE:$WORKSPACE/edk2
export GCC5_ARM_PREFIX=$GCC5_AARCH64_PREFIX
export CROSS_COMPILE=$GCC5_AARCH64_PREFIX
export PYTHON_COMMAND=/usr/bin/python3.8
export HOST_ARCH=X64
#
#following 2 settings leverage Ampere toolchain, could be replaced by standard GCC5
#
export PATH=/home/pxing/edk2_aadp/edk2-ampere-tools/toolchain/ampere/bin:"${PATH}" # path for GCC
export GCC5_AARCH64_PREFIX=aarch64-ampere-linux-gnu-
source edk2/edksetup.sh
if ! [ -d "$WORKSPACE/edk2/BaseTools/Source/C/bin" ] ; then
    make -C edk2/BaseTools
fi
