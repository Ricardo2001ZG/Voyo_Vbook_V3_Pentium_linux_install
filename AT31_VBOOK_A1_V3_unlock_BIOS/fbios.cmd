@echo off
cd /d %~dp0
echo ***********************************************
echo *                                             *
echo *    ���������ʼˢ��BIOS ��                  *
echo *    ˢ��BIOSǰ��ȷ��AC�͵�ع������� ��      *
echo *    ˢ�¹����в��ܶϵ� �����͹ػ� ��         *
echo *                                             *
echo ***********************************************
pause
FPTW64 -f full_linux_200b.bin /y
pause
REM shutdown.exe -r -t 6 -c "The system will reboot after 6 sec ..."

:exit