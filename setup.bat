@echo off
if "%1"=="" (
    set TARGET_FOLDER=ShellApp
) else (
    set TARGET_FOLDER=%1
)

@REM if exist %TARGET_FOLDER% (
@REM     set /p answer="Override exist folder?(y/N) "
@REM     echo %answer%
@REM     if /I %answer% == y (
@REM         echo "remove target folder"
@REM         @REM RMDIR /S /Q %TARGET_FOLDER%
@REM     ) else (
@REM         exit 1
@REM     )
@REM )

git clone --recurse-submodules -j8 https://github.com/PhilXing/ShellApp.git %TARGET_FOLDER%

@ssh -T git@github.com | findstr /i authenticated 
if %errorlevel% == 1 (
    git remote set-url origin git@github.com:PhilXing/ShellApp.git
)

call edk2.bat
call edk2\edksetup.bat rebuild
echo on
