@ ECHO OFF
SET PROG=һ�����IE����/���ü�����ģʽ/����վ��
COLOR 3F
@ ECHO.
@ ECHO.                     ˵                  ��
@ ECHO.
@ ECHO --------------------------------------------------------------------------------
@ ECHO.
@ ECHO.  ����һ��������������ڽ������ʹ�û������ֻ�ϵͳ���������������������
@ ECHO.  
@ ECHO.                                               ���ѣ������ ����
@ ECHO.                                               2015��06��10��
@ ECHO --------------------------------------------------------------------------------
TITLE %PROG%
PAUSE
CLS
@ ECHO.
@ ECHO.         ����       ��ѡ��������Ҫ���еĲ���     ����
@ ECHO.
@ ECHO.
ECHO     �U     [1] ������������/cookies�����ڽ���������ݲ��ܲ�������⣩   �U
ECHO     �U     [2] ���ü�����ģʽ�����ڽ������ҳ����ʾ�����������⣩         �U
ECHO     �U     [3] �������վ�㣨���ڽ���ĵ��鿴���˻���Ƶ�����������⣩     �U
ECHO     �U     [4] ִ���������в���                                           �U
ECHO     �U     [5] �˳�                                                       �U
@ ECHO.
@ ECHO.
SET /P CHOICE=   �밴(1��2��3��4��5)ѡ��������Ҫ���еĲ���,Ȼ�󰴻س����в�����
IF /I '%CHOICE%'=='1' GOTO Cookie
IF /I '%CHOICE%'=='2' GOTO Compatibility
IF /I '%CHOICE%'=='3' GOTO Trust
IF /I '%CHOICE%'=='4' GOTO All
IF /I '%CHOICE%'=='5' EXIT
:Cookie
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
CLS
GOTO SUCCESS
:Trust
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range10" /v ":Range" /t REG_SZ /d 10.82.1.126 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range10" /v "http" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1001" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1004" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1200" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1201" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1405" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2201" /t REG_DWORD /d 0 /f
CLS
GOTO SUCCESS
:Compatibility
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\BrowserEmulation\ClearableListData" /v "UserFilter" /t REG_BINARY /d "411f00005308adba010000003400000001000000010000000c000000ad228b1018a3d001010000000b00310030002e00380032002e0031002e00310032003600" /f
CLS
GOTO SUCCESS
:All
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range10" /v ":Range" /t REG_SZ /d 10.82.1.126 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range10" /v "http" /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1001" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1004" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1200" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1201" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "1405" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2" /v "2201" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\BrowserEmulation\ClearableListData" /v "UserFilter" /t REG_BINARY /d "411f00005308adba010000003400000001000000010000000c000000ad228b1018a3d001010000000b00310030002e00380032002e0031002e00310032003600" /f
CLS
GOTO SUCCESS
:SUCCESS
ECHO ������ɰ�������˳�
PAUSE > NUL
