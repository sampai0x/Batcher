:phantom
@echo off
color d
title phantom coded by dqrk
cls                                                                                                      
@echo                ,dPYb,                                I8                                 
@echo                IP'`Yb                                I8                                 
@echo                I8  8I                             88888888                              
@echo                I8  8'                                I8                                 
@echo    gg,gggg,    I8 dPgg,     ,gggg,gg   ,ggg,,ggg,    I8     ,ggggg,    ,ggg,,ggg,,ggg,  
@echo    I8P"  "Yb   I8dP" "8I   dP"  "Y8I  ,8" "8P" "8,   I8    dP"  "Y8ggg,8" "8P" "8P" "8, 
@echo    I8'    ,8i  I8P    I8  i8'    ,8I  I8   8I   8I  ,I8,  i8'    ,8I  I8   8I   8I   8I 
@echo   ,I8 _  ,d8' ,d8     I8,,d8,   ,d8b,,dP   8I   Yb,,d88b,,d8,   ,d8' ,dP   8I   8I   Yb,
@echo    PI8 YY88888P88P     `Y8P"Y8888P"`Y88P'   8I   `Y88P""Y8P"Y8888P"   8P'   8I   8I   `Y8
@echo    I8                                                                                   
@echo    I8                                                                                   
@echo    I8                                                                                   
@echo    I8                                                                                   
@echo    I8                                                                                   
@echo    I8                                                                                   
@echo.                                                                        
@echo.                                                                        
@echo.
@echo 	             SELECIONE A OPÇÃO QUE DESEJA:
@echo.
@echo                [1] - Optimizer           [2] - Limpeza Cache
@echo                [3] - Limpeza Profunda    [4] - Otimização NET
@echo                [5] - Bypass              [6] - Medir PING
@echo.
@echo.
set /p op=
if %op% equ 1 goto 1
if %op% equ 2 goto 2
if %op% equ 3 goto 3
if %op% equ 4 goto 4
if %op% equ 5 goto 5
if %op% equ 6 goto ping
PAUSE

:1
echo Cleaner - Aguarde o processo para otimizar o seu PC!
ping n- 2 127.0.0.1>nul
cls
echo Cleaner - Otimizacaoo iniciada!
ping n- 2 127.0.0.1>nul
cls
ping n- 2 127.0.0.1>nul
echo Carregando [10]
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
echo Carregando [39]
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
echo Carregando [98]
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
echo Carregando [100], pronto!
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
echo O processo irá iniciar em breve...
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
Del C:\Windows\Prefetch\*.* /q.
FOR /F "tokens=1, 2 * " %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
cls
ping n- 2 127.0.0.1>nul
echo O primeiro processo foi concluido!
ping n- 2 127.0.0.1>nul
cls
echo O segundo processo ira iniciar em segundos...
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
del /s /f /q %userprofile%\Recent\*.*
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\Temp\*.*
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
echo Limpando o disco..
ping n- 2 127.0.0.1>nul
cls
ping n- 2 127.0.0.1>nul
C:\Windows\System32\cleanmgr.exe /sagerun:10﻿
ping n- 2 127.0.0.1>nul
cls
echo Seu PC foi melhorado (;)!
pause
:noAdmin
echo Você precisa ser administrador para utilizar a ferramenta !
echo ^<aperte qualquer tecla^>
cls
pause
goto phantom 

:2
@echo Essa opção irá limpar todos o cache do seu computador.
@echo Recomendado: Fechar todos os aplicativos abertos para melhores
@echo resultados após a limpeza.
@echo.
PAUSE
 IF EXIST c:\windows\%temp%\ del /f /s /q /i /h c:\windows\%temp%\
 DEL /f /s /q %temp%\
 IF EXIST c:\windows\prefetch\ del /f /s /q c:\windows\prefetch\
 DEL /f /s /q prefetch\
 IF EXIST c:\windows\temp\ del /f /s /q /i /h c:\windows\temp\
 DEL /f /s /q %temp%\
cls
@echo Cache deletado com sucesso.
PAUSE
goto phantom

:3
@echo Essa opção irá deletar arquivos das seguintes pastas:
@echo.
@echo temp, %temp%, prefetch
@echo Liberar cache de Hibernação da máquina
PAUSE
 IF EXIST c:\windows\%temp%\ del /f /s /q /i /h c:\windows\%temp%\
 DEL /f /s /q %temp%\
 IF EXIST c:\windows\prefetch\ del /f /s /q c:\windows\prefetch\
 DEL /f /s /q prefetch\
 IF EXIST c:\windows\temp\ del /f /s /q /i /h c:\windows\temp\
 DEL /f /s /q %temp%\
PAUSE
goto phantom

:4
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider /v "DnsPriority"=dword:00000006 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider /v "HostsPriority"=dword:00000005 /f 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider /v "LocalPriority"=dword:00000004 /f 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider /v "NetbtPriority"=dword:00000007 /f 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings /v "MaxConnectionsPerServer"=dword:00000010 /f 
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings /v "MaxConnectionsPer1_0Server"=dword:00000010 /f 
 reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0 /v "0200"=hex:00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
 00,00,00,00,00,00,02,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
 00,00,00,ff,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
 ff,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00 /f 
 reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0 /v "1700"=hex:00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
 00,00,00,00,00,00,02,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
 00,00,00,ff,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
 ff,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00 /f 
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched /v "NonBestEffortLimit"=dword:00000000 /f 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\QoS /v "Do not use NLA"="1" /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters /v "TCPNoDelay"=dword:0000001 /f 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v "MaxUserPort"=dword:0000fffe /f 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v "TcpTimedWaitDelay"=dword:0000001e /f 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v "EnableWsd"=dword:00000000 /f 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v "Tcp1323Opts"=dword:00000001 /f 
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v "TCPCongestionControl"=dword:00000001 /f 
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile /v "NetworkThrottlingIndex"=dword:0000000a /f 
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile /v "SystemResponsiveness"=dword:00000000 /f
goto phantom

:5
@echo off
title bypass para randolas
color B
echo Procurando rastros 
ping n- 2 127.0.0.1>nul
cls
echo Aguarde 
ping n- 2 127.0.0.1>nul
cls
echo Aguarde
ping n- 2 127.0.0.1>nul
cls
ping n- 2 127.0.0.1>nul
echo Carregando [10]
ping n- 2 127.0.0.1>nul
cls
echo Carregando [39]
ping n- 2 127.0.0.1>nul
cls
echo Carregando [98]
ping n- 2 127.0.0.1>nul
cls
echo Carregando [100], pronto!
ping n- 2 127.0.0.1>nul
cls
echo O processo irá iniciar em breve...
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
Del C:\Windows\Prefetch\*.* /q.
FOR /F "tokens=1, 2 * " %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
cls
ping n- 2 127.0.0.1>nul
echo O primeiro processo foi concluido!
ping n- 2 127.0.0.1>nul
cls
echo Lugares provaveis com strings limpos 
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
del /s /f /q %userprofile%\Recent\*.*
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\Temp\*.*
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers 
deltree c:\WIN386.SWP
ping n- 2 127.0.0.1>nul
ping n- 2 127.0.0.1>nul
cls
echo Limpando o disco..
ping n- 2 127.0.0.1>nul
cls
ping n- 2 127.0.0.1>nul
C:\Windows\System32\cleanmgr.exe /sagerun:10﻿
ping n- 2 127.0.0.1>nul
cls
echo Rastros Limpos!
pause
:noAdmin
echo Você precisa ser administrador para utilizar a ferramenta !
echo ^<aperte ENTER para prosseguir^>
cls
pause
@echo off
color d
echo Iniciando segundo processo, aguarde!
ping n- 2 127.0.0.1>nul
cls
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\Temp\*.*
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
rmdir /s /q %userprofile%\AppData\Roaming\Microsoft\Windows\Recent
del /s /f /q %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations\*.*
ping n- 2 127.0.0.1>nul
cls
color f
echo Foram limpo alguns rastros, mas o processo ainda nao terminou, aguarde!
ping n- 2 127.0.0.1>nul
cls
color c
echo Limpando rastros da regedit!
ping n- 2 127.0.0.1>nul
cls
color f
ping n- 2 127.0.0.1>nul
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist /f
reg delete HKEY_USERS\S-1-5-21-388864338-3198854620-2322039091-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs /f
cls
color c
echo Limpando JournalTrace!
ping n- 2 127.0.0.1>nul
FSUTIL USN DELETEJOURNAL /D C:
FSUTIL USN DELETEJOURNAL /D D:
FSUTIL USN DELETEJOURNAL /D E:
ping n- 2 127.0.0.1>nul
cls
echo Rastros apagados xD.
ping n- 2 127.0.0.1>nul
cls
color d
pause
goto phantom

:6
:ping
color f
ping -n 1 8.8.8.8
IF NOT ERRORLEVEL 1 goto OK
IF ERRORLEVEL 1 goto ERRO

:OK
color 2
cls
@echo.
@echo.
@echo   A conexão IP está boa para uso.
@echo   Caso queira melhores resultados, comunique sua provedora.
@echo.
@echo   O teste é feito com ping europeu!
@echo   O resultado não é 100% preciso!
@echo.
PAUSE
goto phantom

:ERRO
color 4
cls
@echo.
@echo   A conexão IP está ruim para uso.
@echo.
@echo   O teste é feito com ping europeu!
@echo   O resultado não é 100% preciso!
PAUSE
goto phantom
