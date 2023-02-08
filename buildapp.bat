@echo off
setlocal
call edk2.bat
build -a X64 -t VS2019 -b RELEASE -p %~dp0\ShellApp\ShellApp.dsc
endlocal
echo on
