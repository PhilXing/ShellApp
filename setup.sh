#!/bin/bash
echo "==========================================================================="
echo "clone ShellApp"
echo "==========================================================================="
TARGET_FOLDER=$1
if [ -z "$TARGET_FOLDER" ]; then
  TARGET_FOLDER="ShellApp"
fi
if [ -d "$TARGET_FOLDER" ]; then
  read -p "Do you wish to override current $TARGET_FOLDER folder?" yn
  case $yn in
    [Yy]* )   rm -rf $TARGET_FOLDER;;
    * ) return 1;;
  esac
fi
git clone --recurse-submodules -j8 https://github.com/PhilXing/ShellApp.git $TARGET_FOLDER
if [ "eval $(ssh -T git@github.com | grep -q "authenticated")" != "" ] ; then
  echo "==========================================================================="
  echo "replace HTTPS access with SSH access if authenticated"
  echo "==========================================================================="
  cd $TARGET_FOLDER
  git remote set-url origin git@github.com:PhilXing/ShellApp.git
  cd .. 
fi
echo "==========================================================================="
echo "update system before install tools"
echo "==========================================================================="
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
echo "==========================================================================="
echo "install tools"
echo "==========================================================================="
sudo apt install -y \
  build-essential uuid-dev acpica-tools nasm \
  python3.8 python3-distutils python3-pip \
  gawk bc
cd $TARGET_FOLDER
echo "==========================================================================="
echo "set building environment"
echo "==========================================================================="
. edk2/edksetup.sh --reconfig
. edk2.sh
echo "==========================================================================="
echo "Ready to build !!!"
echo "==========================================================================="