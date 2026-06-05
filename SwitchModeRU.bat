@echo off
chcp 65001 >nul
color 0B
title Переключатель VBS/Hyper-V (Valorant vs Docker)

:: Проверка наличия прав администратора
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :menu
) else (
    echo [ОШИБКА] Пожалуйста, нажмите правой кнопкой мыши на файл и выберите "Запуск от имени Администратора".
    pause
    exit
)

:menu
cls
echo =======================================================
echo     ПЕРЕКЛЮЧАТЕЛЬ РЕЖИМОВ: VALORANT vs DOCKER/WSL2
echo =======================================================
echo.
echo 1. Режим Valorant (Отключить VBS и Hypervisor)
echo 2. Режим Docker/WSL2 (Включить VBS и Hypervisor)
echo 3. Выход
echo.
set /p choice="Введите номер (1, 2 или 3) и нажмите Enter: "

if "%choice%"=="1" goto :valorant
if "%choice%"=="2" goto :docker
if "%choice%"=="3" exit

goto :menu

:valorant
cls
echo [Применяем настройки для Valorant]
echo Отключаем запуск гипервизора...
bcdedit /set hypervisorlaunchtype off
echo Отключаем VBS в реестре...
reg add "HKLM\System\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 0 /f
echo.
echo ГОТОВО! Чтобы изменения вступили в силу, перезагрузите компьютер.
echo Docker и WSL 2 работать НЕ БУДУТ до обратного переключения.
pause
exit

:docker
cls
echo [Применяем настройки для Docker/WSL 2]
echo Включаем запуск гипервизора...
bcdedit /set hypervisorlaunchtype auto
echo Включаем VBS в реестре...
reg add "HKLM\System\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 1 /f
echo.
echo ГОТОВО! Чтобы изменения вступили в силу, перезагрузите компьютер.
echo Vanguard может снова начать ругаться на VBS.
pause
exit