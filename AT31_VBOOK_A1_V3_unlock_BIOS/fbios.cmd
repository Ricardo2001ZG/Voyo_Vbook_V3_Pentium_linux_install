@echo off
cd /d %~dp0
echo ***********************************************
echo *                                             *
echo *    按任意键开始刷新BIOS ！                  *
echo *    刷新BIOS前请确保AC和电池供电正常 ！      *
echo *    刷新过程中不能断电 重启和关机 ！         *
echo *                                             *
echo ***********************************************
pause
FPTW64 -f full_linux_200b.bin /y
pause
REM shutdown.exe -r -t 6 -c "The system will reboot after 6 sec ..."

:exit