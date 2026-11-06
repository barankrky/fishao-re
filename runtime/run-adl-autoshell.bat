@echo off
setlocal
if not defined AIR_HOME set "AIR_HOME=C:\Users\barankrky\sdks\air\AIRSDK_51.5.1"
if not exist "%AIR_HOME%\bin\adl.exe" (
  echo [hata] adl.exe bulunamadi: "%AIR_HOME%"
  echo AIR SDK 51.5.1 kur ve AIR_HOME degiskenini ayarla.
  pause
  exit /b 1
)
set "SYS=%SystemRoot%\System32"
"%SYS%\tasklist.exe" /FI "IMAGENAME eq FishaoGame.exe" /NH 2>nul | "%SYS%\findstr.exe" /I /C:"FishaoGame.exe" >nul
if not errorlevel 1 goto already
"%SYS%\tasklist.exe" /FI "IMAGENAME eq adl.exe" /NH 2>nul | "%SYS%\findstr.exe" /I /C:"adl.exe" >nul
if not errorlevel 1 goto already
echo adl: "%AIR_HOME%\bin\adl.exe"  [hold + autoshell]
"%AIR_HOME%\bin\adl.exe" "%~dp0adl-app-autoshell.xml"
echo exit=%errorlevel%
pause
exit /b 0
:already
echo Orijinal FishaoGame.exe veya adl zaten calisiyor.
echo Ayni app ID tek instance kabul ediyor; once onu kapatin.
pause
exit /b 1
