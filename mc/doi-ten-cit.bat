@echo off
chcp 65001 >nul
REM Doi ten file CIT xuat (vi du 001-P001.mp3) thanh 001.mp3. Dat file .bat nay cung thu muc voi cac file mp3.
for %%f in (*-P*.mp3) do (
  for /f "delims=-" %%a in ("%%~nf") do ren "%%f" "%%a.mp3"
)
echo Da doi ten xong.
pause
