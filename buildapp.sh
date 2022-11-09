#!/bin/bash
OPATH=$PATH
. edk2.sh
build -a AARCH64 -t GCC5 -b RELEASE -p ShellApp/ShellApp.dsc
export PATH=$OPATH
