@echo off
@setlocal enableextensions enabledelayedexpansion
color a & title AutoCSL v1.2beta by JY
echo: &  echo =================================================================================== & echo: & echo AutoCSL - release 1.1alpha

echo: &  echo =================================================================================== & echo:
echo LMAO so you want it the easy way eh? & goto startup
:startup
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
set "mode=2TDM"
goto :te
:4t
set "mode=4TDM"
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
echo: & echo =================================================================================== & echo:  & echo dl - linode-dallas & echo mi - vultr-miami & echo fr - linode-fremont & echo ld - linode-london  & echo ff - linode-frankfurt  & echo tk - vultr-tokyo  & echo sg - linode-singapore & echo sy - vultr-sydney & echo:
set /p loc=Location: (Enter the code corresponding to the server location.)
if /i "%loc%" EQU "dl" goto :dallas
if /i "%loc%" EQU "mi" goto :miami
if /i "%loc%" EQU "fr" goto :fremont
if /i "%loc%" EQU "ld" goto :london
if /i "%loc%" EQU "ff" goto :frankfurt
if /i "%loc%" EQU "tk" goto :tokyo
if /i "%loc%" EQU "sg" goto :singapore
if /i "%loc%" EQU "sy" goto :sydney
echo: & echo Invalid response!
goto :reg
:dallas
set "loc=linode-dallas"
goto :status
:miami
set "loc=vultr-miami"
goto :status
:fremont
set "loc=linode-fremont"
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
:sydney
set "loc=vultr-sydney"
goto :status
:status
echo: & echo =================================================================================== & echo: 
set /p stt=Enter your server status.
echo: & echo =================================================================================== & echo: 
set /p uuid=Enter the CSL ID. (4 digit number)
echo: & echo =================================================================================== & echo:  & echo Link: https:^/^/%lk% & echo Gamemode:  %mode% & echo Team: %team% & echo Location: %loc% & echo Status: %stt% & echo ID: %uuid% & echo Scoreboard: &  echo ^<image^> & echo: & echo Is this correct? & echo:
set /p ch=(Y/N)
if /i "%ch%" EQU "Y" goto :ok
if /i "%ch%" EQU "N" goto :redo
:ok
echo:  & echo =================================================================================== & echo: & echo Result is written to output.txt in the same file. 
echo.> output.txt
echo =================================================================================== >> output.txt
echo.>> output.txt
echo GENERATED ON %DATE% at %TIME% >> output.txt
echo.>> output.txt
echo =================================================================================== >> output.txt
echo.>> output.txt
echo **Link:** ^<https://%lk%^> >> output.txt
echo **Gamemode:**  %mode% >> output.txt
echo **Team:** %team% >> output.txt
echo **Location:** %loc% >> output.txt
echo **Status:** %stt% >> output.txt
echo **ID:** %uuid% >> output.txt
echo **Scoreboard:** >> output.txt
echo Done^^! Press any key to exit. & pause >nul








