setlocal
call %~dp0\edk2.bat
@REM @set PATH=%PATH%;"C:\Program Files (x86)\GnuWin32\bin\"
set WORKSPACE=%CD%
@REM echo "Tianocore clean BaseTools..."
@REM make -C edk2\BaseTools clean
echo "Tianocore clean Build..."
rd /S /Q %WORKSPACE%\Build
