@echo off
echo NetVault binaries will be added to the
echo Allowed Programs list in the 2008 R2 firewall
echo.
echo.
echo IMPORTANT
echo.
echo If your NetVault directory is NOT C:\Program Files (x86)\BakBone Software\NetVault Backup\bin
echo please cancel this script by pressing Ctrl-C and edit the NVPATH parameter 
echo in the script. Otherwise press any key to continue.
echo.
echo.
pause
pause
netsh advfirewall firewall add rule name="NetVault Process Manager" dir=in program="C:\Program Files (x86)\BakBone Software\NetVault Backup\bin\nvpmgr.exe" action=allow
netsh advfirewall firewall add rule name="Netvault Statistics" dir=in program="C:\Program Files (x86)\BakBone Software\NetVault Backup\bin\nvstatsmngr.exe" action=allow
netsh advfirewall firewall add rule name="NetVault Core Plugin" dir=in program="C:\Program Files (x86)\BakBone Software\NetVault Backup\bin\nvcoreplg.exe" action=allow
netsh advfirewall firewall add rule name="NetVault File System Plugin" dir=in program="C:\Program Files (x86)\BakBone Software\NetVault Backup\bin\nvfs.exe" action=allow
netsh advfirewall firewall add rule name="NetVault Raw Device Plugin" dir=in program="C:\Program Files (x86)\BakBone Software\NetVault Backup\bin\nvraw.exe" action=allow
echo NetVault binaries have been added...
pause
exit