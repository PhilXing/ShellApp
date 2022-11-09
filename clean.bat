setlocal
call %~dp0\edk2.bat
set WORKSPACE=%CD%
@REM install "make" from chocolatey package manager: https://chocolatey.org/install
echo "Tianocore clean BaseTools..."
make -C edk2\BaseTools clean
echo "Tianocore clean Build..."
rd /S /Q %WORKSPACE%\Build
