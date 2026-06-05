@echo off
chcp 65001 >nul
color 0B
title VBS/Hyper-V Switcher (Valorant vs Docker)

:: Check for Administrator privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :menu
) else (
    echo [ERROR] Please right-click the file and select "Run as Administrator".
    pause
    exit
)

:menu
cls
echo =======================================================
echo        MODE SWITCHER: VALORANT vs DOCKER/WSL2
echo =======================================================
echo.
echo 1. Valorant Mode (Disable VBS and Hypervisor)
echo 2. Docker/WSL2 Mode (Enable VBS and Hypervisor)
echo 3. Exit
echo.
set /p choice="Enter a number (1, 2, or 3) and press Enter: "

if "%choice%"=="1" goto :valorant
if "%choice%"=="2" goto :docker
if "%choice%"=="3" exit

goto :menu

:valorant
cls
echo [Applying settings for Valorant]
echo Disabling hypervisor launch...
bcdedit /set hypervisorlaunchtype off
echo Disabling VBS in the registry...
reg add "HKLM\System\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 0 /f
echo.
echo DONE! Please restart your computer for the changes to take effect.
echo Docker and WSL 2 will NOT work until you switch back.
pause
exit

:docker
cls
echo [Applying settings for Docker/WSL 2]
echo Enabling hypervisor launch...
bcdedit /set hypervisorlaunchtype auto
echo Enabling VBS in the registry...
reg add "HKLM\System\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 1 /f
echo.
echo DONE! Please restart your computer for the changes to take effect.
echo Vanguard may complain about VBS again.
pause
exit