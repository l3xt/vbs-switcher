# 🎮 Valorant vs 🐳 Docker (WSL 2) — VBS/Hyper-V Switcher

🌍 [Read in English](#-english) | 🇷🇺 [Читать на русском](#-русский)

---

## 🇬🇧 English

This script solves a issue: the **Vanguard** anti-cheat blocks the game from starting when virtualization VBS is enabled, while **Docker Desktop** and **WSL 2** cannot run without these features.

With this tool, you can easily toggle your system between "Gaming Mode" and "Work Mode" in just a few clicks.

### 📥 How to Download

1. Go to the **[Releases](../../releases)** tab on the right side of this repository.
2. In the *Assets* section, download the version of the script you need:
   - `SwitchMode_EN.bat` (English version)
   - `SwitchMode_RU.bat` (Russian version)
3. Save the file somewhere convenient, like your Desktop.

### 🚀 How to Use

> **IMPORTANT:** The script modifies the system registry and the Windows bootloader configuration (`bcdedit`), so it **requires Administrator privileges** to work.

1. Right-click the downloaded `.bat` file.
2. Select **"Run as Administrator"**.
3. In the console window that opens, choose your desired mode:
   - **`1` — Valorant Mode**: Disables Hyper-V and VBS. *(Docker and WSL will stop working)*.
   - **`2` — Docker/WSL2 Mode**: Enables Hyper-V and VBS. *(Vanguard will prevent the game from launching)*.
4. Press `Enter`.
5. **You must restart your computer** for the changes to take effect!

### ⚠️ Troubleshooting

#### Blocked by Windows SmartScreen
Since you are downloading a `.bat` file from the internet, Windows Security (SmartScreen) might show a blue warning screen about a potential risk.
* **Solution:** Click **"More info"**, and then click the **"Run anyway"** button.
* *Note: The source code is completely open. You can right-click the file and select "Edit" (or open it with Notepad) to verify that there is no malicious code inside.*

#### Vanguard still shows an error?
If Vanguard still complains after applying "Mode 1" and restarting, check your Core Isolation settings:
1. Open the Start menu and search for `Core Isolation`.
2. Toggle **Memory Integrity** to **Off**.
3. Restart your PC.

### 📄 License
This tool is provided "as is". Use at your own risk.

---

## 🇷🇺 Русский

Этот скрипт решает проблему, когда античит **Vanguard** блокирует запуск игры при включенной виртуализации VBS, в то время как **Docker Desktop** и **WSL 2** не могут работать без этих включенных функций.

С помощью этого инструмента вы можете легко переключать систему между «Игровым режимом» и «Рабочим режимом» в пару кликов.

### 📥 Как скачать

1. Перейдите на вкладку **[Releases](../../releases)** (Релизы) в правой части этого репозитория.
2. В разделе *Assets* скачайте нужную вам версию скрипта:
   - `SwitchMode_RU.bat` (Русская версия)
   - `SwitchMode_EN.bat` (English version)
3. Сохраните файл в удобное место, например, на Рабочий стол.

### 🚀 Как использовать

> **ВАЖНО:** Скрипт вносит изменения в системный реестр и конфигурацию загрузчика Windows (`bcdedit`), поэтому для его работы **обязательно нужны права администратора**.

1. Кликните правой кнопкой мыши по скачанному `.bat` файлу.
2. Выберите **«Запуск от имени администратора»**.
3. В открывшемся консольном окне выберите нужный режим:
   - **`1` — Режим Valorant**: Отключает Hyper-V и VBS. *(Docker и WSL перестанут работать)*.
   - **`2` — Режим Docker/WSL2**: Включает Hyper-V и VBS. *(Vanguard не пустит в игру)*.
4. Нажмите `Enter`.
5. **Обязательно перезагрузите компьютер**, чтобы изменения вступили в силу!

### ⚠️ Возможные проблемы и их решение

#### Блокировка от Windows SmartScreen
Так как вы скачиваете `.bat` файл из интернета, система безопасности Windows (SmartScreen) может показать синее окно с предупреждением о потенциальном риске. 
* **Решение:** Нажмите **«Подробнее»**, а затем кнопку **«Выполнить в любом случае»**. 
* *Примечание: Исходный код скрипта полностью открыт. Вы можете нажать на файл правой кнопкой мыши и выбрать «Изменить» (или открыть через Блокнот), чтобы убедиться, что внутри нет вредоносного кода.*

#### Vanguard всё равно выдает ошибку?
Если после применения «Режима 1» и перезагрузки Vanguard продолжает ругаться, проверьте настройки Изоляции ядра:
1. Откройте меню «Пуск» и введите в поиск `Изоляция ядра`.
2. Переведите переключатель **Целостность памяти** в положение **Откл**.
3. Перезагрузите ПК.

### 📄 Лицензия
Инструмент распространяется "как есть". Используйте на свой страх и риск.
