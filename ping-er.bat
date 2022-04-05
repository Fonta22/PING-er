@echo off

cls
color A
title PING-er

echo.
echo " __________ .___  _______     ________                        "
echo " \______   \|   | \      \   /  _____/          ____ _______  "
echo "  |     ___/|   | /   |   \ /   \  ___  _______/ __ \\_  __ \ "
echo "  |    |    |   |/    |    \\    \_\  \/_____/\  ___/ |  | \/ "
echo "  |____|    |___|\____|__  / \______  /        \___  >|__|    "
echo "                         \/         \/             \/         "

set /p IP=Enter IP: 

:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo %IP% is down.)
color %in%
ping -n 2 127.0.0.1 >nul
GoTo top