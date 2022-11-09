#!/bin/bash
WORKSPACE=$PWD
echo "Tianocore clean BaseTools..."
make -C $WORKSPACE/edk2/BaseTools clean
echo "Tianocore clean Build..."
rm -fr $WORKSPACE/Build/
