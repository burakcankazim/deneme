@REM Getting directory of the script to run it independant of current working directory.
for %%i in ("%~dp0.") do SET "mypath=%%~fi"
cd mypath

ECHO "Activating commit-msg githook..."
ECHO "################################"

ECHO "Copying .githooks/commit-msg to .git/hooks/commit-msg..."
COPY commit-msg ..\.git\hooks\commit-msg
ECHO "################################"

ECHO "Editing the permissions of the file to make it executable..."
ICACLS ..\.git\hooks\commit-msg /grant %USERNAME%:RX 