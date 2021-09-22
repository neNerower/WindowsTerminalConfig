@echo off

echo Start installing Windows Terminal Config...

@REM SET PATH VALUES
set path = %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe
set settings_path = %path%\LocalState
set assets_path = %path%\RoamingState

echo Ready !

@REM COPY ASSETS INFO
xcopy /s assets/icons %assets_path%
xcopy /s assets/wallpapers %assets_path%

echo Assets successfully loaded !

@REM COPY SETTINGS CONFIG
xcopy settings.json %settings_path%

echo Config successfully loaded !
echo Done !

pause
