# ShellApp
edk2 shell applications
# Windows 10 instructions
## Toolchain
### Visual Studio 2019 community: https://learn.microsoft.com/zh-tw/visualstudio/releases/2019/release-notes
### Python 3.7.9: https://www.python.org/downloads/release/python-379/
### NASM: https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/win64/
### ASL(not used): https://acpica.org/downloads/binary-tools
## Setup
### install "git": https://git-scm.com/downloads
### for SSH connection
#### enable OpenSSH service of Windows 10: "services.msc"
#### setup your SSH connection to github.com
### run "setup.bat"
## Building initialization
### customize sample "edk2.bat" to fit your emvironment, and run it.
### run "edk2\edksetup.bat Rebuild" to make base tools.
## Building shell application
### run "buildapp.bat" to build ShellApp.
## Clean.bat
### will remove basetool binaries and build folder, install "make.exe" (run "choco install make") before run it: https://chocolatey.org/install
# Ubuntu insturctions