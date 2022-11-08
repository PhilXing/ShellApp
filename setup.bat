@echo off
if "%1"=="" (
    set TARGET_FOLDER=ShellApp
) else (
    set TARGET_FOLDER=%1
)

setlocal EnableDelayedExpansion
if exist %TARGET_FOLDER% (
    set /p answer="Override exist folder?(y/N) "
    if /I !answer! == y (
        @echo "remove target folder..."
        @RMDIR /S /Q %TARGET_FOLDER%
    ) else (
        goto end
    )
)
endlocal

git clone --recurse-submodules -j8 https://github.com/PhilXing/ShellApp.git %TARGET_FOLDER%
@cd %TARGET_FOLDER%

@ssh -T git@github.com | findstr /i authenticated 
if %errorlevel% == 1 (
    echo switch remote to SSH connection URL
    git remote set-url origin git@github.com:PhilXing/ShellApp.git
)

call edk2.bat
call edk2\edksetup.bat rebuild

:end
endlocal
echo on
