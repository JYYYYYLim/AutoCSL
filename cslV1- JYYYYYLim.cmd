@echo off
@setlocal enableextensions enabledelayedexpansion
color a & title AutoCSL v1.0alpha by JY
echo LMAO so you want it the easy way eh? & goto startup
:startup
pause
:redo
echo: &  echo =================================================================================== & echo:
set /p lk=Link: (Paste the link WITHOUT https:// or http://)
:tdm
echo: &  echo =================================================================================== & echo: & echo 1 - 2TDM & echo 2 - 4TDM & echo:
set /p mode=Gamemode: (type in the corresponding number.)
if /i "%mode%" EQU "1" goto :2t
if /i "%mode%" EQU "2" goto :4t
echo: & echo Invalid response.
goto :tdm
:2t
set "mode=2tdm"
goto :te
:4t
set "mode=4tdm"
goto :te
:te
echo:  & echo =================================================================================== & echo: & echo 1 - Blue  & echo 2 - Purple  & echo 3 - Green  & echo 4 - Red & echo:
set /p team=Team: (Type in the number corresponding to the team color.)
if /i "%team%" EQU "1" goto :1
if /i "%team%" EQU "2" goto :2
if /i "%team%" EQU "3" goto :3
if /i "%team%" EQU "4" goto :4
echo: & echo Invalid response.
goto :te
:1
set "team=Blue"
goto :reg
:2
set "team=Purple"
goto :reg
:3
set "team=Green"
goto :reg
:4
set "team=Red"
goto :reg
:reg
echo: & echo =================================================================================== & echo:  & echo sy - vultr-sydney  & echo dl - linode-dallas  & echo ld - linode-london  & echo ff - linode-frankfurt  & echo tk - vultr-tokyo  & echo sg - linode-singapore
set /p loc=Location: (Enter the code corresponding to the server location.)
if /i "%loc%" EQU "sy" goto :sydney
if /i "%loc%" EQU "dl" goto :dallas
if /i "%loc%" EQU "ld" goto :london
if /i "%loc%" EQU "ff" goto :frankfurt
if /i "%loc%" EQU "tk" goto :tokyo
if /i "%loc%" EQU "sg" goto :singapore
echo: & echo Invalid response!
goto :reg
:sydney
set "loc=vultr-sydney"
goto :status
:dallas
set "loc=linode-dallas"
goto :status
:london
set "loc=linode-london"
goto :status
:frankfurt
set "loc=linode-frankfurt"
goto :status
:tokyo
set "loc=vultr-tokyo"
goto :status
:singapore
set "loc=linode-singapore" 
goto :status
:status
echo: & echo =================================================================================== & echo: 
set /p stt=Enter your server status.
echo: & echo =================================================================================== & echo: 
set /p uuid=Enter the CSL ID. Minimum 3 digits.
echo: & echo =================================================================================== & echo:  & echo **Link:** %lk% & echo **Gamemode:**  %mode% & echo **Team:** %team% & echo **Location:** %loc% & echo **Status:** %stt% & echo **ID:** %uuid% & echo **Scoreboard:** &  echo ^<image^> & echo: & echo Is this correct? & echo:
set /p ch=(Y/N)
if /i "%ch%" EQU "Y" goto :ok
if /i "%ch%" EQU "N" goto :redo
:ok
echo:  & echo =================================================================================== & echo: & echo Result is written to output.txt in the same file. 
echo **Link:** ^<https://%lk%^> > output.txt
echo **Gamemode:**  %mode% >> output.txt
echo **Team:** %team% >> output.txt
echo **Location:** %loc% >> output.txt
echo **Status:** %stt% >> output.txt
echo **ID:** %uuid% >> output.txt
echo **Scoreboard:** >> output.txt
echo Thanks for using my script! Its a great encouragement. & echo Press any key to exit. & pause >nul








