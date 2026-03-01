@echo off
wmic process where "name='wscript.exe' and CommandLine like '%%main.vbs%%'" call terminate >nul 2>&1
wmic process where "name='cscript.exe' and CommandLine like '%%main.vbs%%'" call terminate >nul 2>&1
exit