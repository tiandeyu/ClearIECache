@ ECHO OFF
SET PROG=一键清除IE缓存/设置兼容性模式/信任站点
COLOR 3F
@ ECHO.
@ ECHO.                     说                  明
@ ECHO.
@ ECHO --------------------------------------------------------------------------------
@ ECHO.
@ ECHO.  这是一个批处理程序，用于解决您在使用基建数字化系统中遇到的浏览器设置问题
@ ECHO.  
@ ECHO.                                               用友：田德钰 制作
@ ECHO.                                               2015年06月10日
@ ECHO --------------------------------------------------------------------------------
TITLE %PROG%
PAUSE
CLS
@ ECHO.
@ ECHO.         ☆☆☆       请选择您的需要进行的操作     ☆☆☆
@ ECHO.
@ ECHO.
ECHO     ║     [1] 清除浏览器缓存/cookies（用于解决批量数据不能插入的问题）   ║
ECHO     ║     [2] 设置兼容性模式（用于解决流程页面显示不正常的问题）         ║
ECHO     ║     [3] 添加信任站点（用于解决文档查看不了或者频繁弹窗的问题）     ║
ECHO     ║     [4] 执行上面所有步骤                                           ║
ECHO     ║     [5] 退出                                                       ║
@ ECHO.
@ ECHO.
SET /P CHOICE=   请按(1、2、3、4、5)选择您的需要进行的操作,然后按回车进行操作：
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
ECHO 操作完成按任意键退出
PAUSE > NUL
