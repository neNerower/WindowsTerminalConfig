@echo off

echo Start installing Windows Terminal Config...

@REM SET PATH VALUES
set settings_path=%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
set assets_path=%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState

echo Ready!

@REM COPY ASSETS INFO
xcopy assets\style\ %assets_path% /e /i

echo Assets successfully loaded !

@REM COPY SETTINGS CONFIG
xcopy settings.json %settings_path% /y

echo Config successfully loaded !
echo Done !

pause
