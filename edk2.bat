@set PACKAGES_PATH=%~dp0;%~dp0\edk2
@set NASM_PREFIX=C:\NASM\
@set PYTHON_HOME=C:\Python\Python37
@set PYTHON_COMMAND=C:\Python\Python37\python.exe
@REM @set path=C:\iasl-win-20221020_Signed;%path%
@REM @set path=C:\NASM;%path%;
@REM set CYGWIN_HOME=C:\cygwin64
@REM # Environment Variables setting for Visual Studio 2019 Community
@REM @set PATH=C:\Windows\System32\WindowsPowerShell\v1.0\;
@REM @call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat"
@set CLANG_BIN="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\Llvm\bin"
@call edk2\edksetup.bat
