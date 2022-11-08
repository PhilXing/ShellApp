@echo off
git clone --recurse-submodules -j8 https://github.com/PhilXing/ShellApp.git

@ssh -T git@github.com | findstr /i authenticated 
if %errorlevel% == 1 (
    git remote set-url origin git@github.com:PhilXing/ShellApp.git
)

call edk2.bat
call edk2\edksetup.bat rebuild
echo on
