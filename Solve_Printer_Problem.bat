@echo off
color 0B
title Fix Printer Error 0x0000011b (Admin Required)

:: Check for administrative privileges and re-run if necessary
NET SESSION >NUL 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Requesting Administrative Privileges...
    POWERSHELL -Command "Start-Process -FilePath '%~dpnx0' -Verb RunAs"
    EXIT /B
)

echo.
echo =======================================================
echo     Fixing Printer Error 0x0000011b (RPC Auth Level)
echo =======================================================
echo.

echo Adding Registry Key...
:: Add the registry key
REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Print" /v RpcAuthnLevelPrivacyEnabled /t REG_DWORD /d 0 /f
if %errorlevel% equ 0 (
    echo Registry key "RpcAuthnLevelPrivacyEnabled" added/updated successfully.
) else (
    echo ERROR: Failed to add/update registry key.
    goto :end
)

echo.
echo Restarting Print Spooler service...
:: Stop the Print Spooler service
net stop "Print Spooler" >nul 2>&1
timeout /t 2 /nobreak >nul

:: Start the Print Spooler service
net start "Print Spooler" >nul 2>&1
if %errorlevel% equ 0 (
    echo Print Spooler service restarted successfully.
) else (
    echo ERROR: Failed to restart Print Spooler service.
)

echo.
echo =======================================================
echo     Operation Complete.
echo     Please try connecting to the printer again.
echo =======================================================
echo.

:end
pause
exit /b 0