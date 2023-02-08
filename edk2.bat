set WORKSPACE=%cd%
set NASM_PREFIX=C:\NASM\
set PACKAGES_PATH=%~dp0;%~dp0\edk2
set PYTHON_HOME=C:\Python\Python38
set PYTHON_COMMAND=C:\Python\Python38\python.exe
set HOST_ARCH=X64
call edk2\edksetup.bat
if not exist %WORKSPACE%\edk2\BaseTools\Source\C\bin (
    make -C edk2\BaseTools
)
