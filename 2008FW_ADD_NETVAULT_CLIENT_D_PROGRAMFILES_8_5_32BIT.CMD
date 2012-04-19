@echo off
echo NetVault binaries will be added to the
echo Allowed Programs list in the 2003 firewall
echo.
echo.
echo IMPORTANT
echo.
echo If your NetVault directory is NOT D:\Program Files\BakBone Software\NetVault Backup\bin
echo please cancel this script by pressing Ctrl-C and edit the NVPATH parameter 
echo in the script. Otherwise press any key to continue.
echo.
echo.
pause
set NVPATH="D:\Program Files\BakBone Software\NetVault Backup\bin"
netsh firewall add allowedprogram program = %NVPATH%\nvpmgr.exe name = "NetVault Process Manager" mode = ENABLE profile = ALL
netsh firewall add allowedprogram program = %NVPATH%\nvstatsmngr.exe name = "NetVault Statistics" mode = ENABLE profile = ALL
netsh firewall add allowedprogram program = %NVPATH%\nvcoreplg.exe name = "NetVault Core Plugin" mode = ENABLE profile = ALL
netsh firewall add allowedprogram program = %NVPATH%\nvfs.exe name = "NetVault File System Pluggin" mode = ENABLE profile = ALL
netsh firewall add allowedprogram program = %NVPATH%\nvraw.exe name = "NetVault Raw Device Plugin" mode = ENABLE profile = ALL
echo NetVault binaries have been added...
pause
exit