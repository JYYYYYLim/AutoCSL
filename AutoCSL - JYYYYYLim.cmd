@echo off
@setlocal enableextensions enabledelayedexpansion
set "ver=1.7.3b"
color a & title AutoCSL v%ver% by JY
echo: &  echo =================================================================================== & echo: & echo AutoCSL - release %ver% & echo: &  echo =================================================================================== & echo: & echo LMAO so you want it the easy way eh? 
if NOT exist config.cmd (
	echo config.cmd not found. redirecting to config page...
	goto :setup	
)
call config.cmd & echo: & echo =================================================================================== & echo: 
echo loading config file from %cfgtime%... 
if /i "%browser%" EQU "cr" start chrome.exe diep.io & goto :startup
if /i "%browser%" EQU "ed" start microsoft-edge:https://diep.io & goto :startup
if /i "%browser%" EQU "none" goto :startup
:redo
call config.cmd
:startup
echo: &  echo =================================================================================== & echo:
set /p lk=link: (paste the link WITHOUT https:// or http://) http://
if /i "%lk%" EQU "%lk2%" goto :err
:tdm
echo: &  echo =================================================================================== & echo: & echo 1 - 2TDM & echo 2 - 4TDM & echo:
set /p mode=gamemode: (type in the corresponding number.) 
if /i "%mode%" EQU "1" set "mode=2TDM" & goto :2te
if /i "%mode%" EQU "2" set "mode=4TDM" & goto :te
echo: & echo invalid response.
goto :tdm
:2te
echo:  & echo =================================================================================== & echo: & echo 1 - Blue  & echo 2 - Red & echo:
set /p team=team: (type in the number corresponding to the team color.) 
if /i "%team%" EQU "1" set "team=Blue" & goto :reg
if /i "%team%" EQU "b" set "team=Blue" & goto :reg
if /i "%team%" EQU "2" set "team=Red" & goto :reg
if /i "%team%" EQU "r" set "team=Red" & goto :reg
echo: & echo invalid response.
goto :2te
:te
echo:  & echo =================================================================================== & echo: & echo 1 - Blue  & echo 2 - Purple  & echo 3 - Green  & echo 4 - Red & echo:
set /p team=team: (type in the number corresponding to the team color.) 
if /i "%team%" EQU "1" set "team=Blue" & goto :reg
if /i "%team%" EQU "b" set "team=Blue" & goto :reg
if /i "%team%" EQU "2" set "team=Purple" & goto :reg
if /i "%team%" EQU "p" set "team=Purple" & goto :reg
if /i "%team%" EQU "3" set "team=Green" & goto :reg
if /i "%team%" EQU "g" set "team=Green" & goto :reg
if /i "%team%" EQU "4" set "team=Red" & goto :reg
if /i "%team%" EQU "r" set "team=Red" & goto :reg
echo: & echo invalid response.
goto :te
:reg
echo: & echo =================================================================================== & echo:  & echo dl - linode-dallas *& echo mi - vultr-miami & echo la - vultr-la & echo fr - linode-fremont *& echo ld - linode-london  *& echo am - vultr-amsterdam & echo ff - linode-frankfurt  *& echo tk - vultr-tokyo  *& echo sg - vultr-singapore & echo sy - vultr-sydney & echo: & echo * - obsolete & echo:
set /p loc=location: (enter the region code corresponding to the server location.) 
if /i "%loc%" EQU "dl" set "loc=linode-dallas" & set "mention=@US Notify" & goto :status
if /i "%loc%" EQU "mi" set "loc=vultr-miami" & set "mention=@US Notify" & goto :status
if /i "%loc%" EQU "la" set "loc=vultr-la" & set "mention=@US Notify" & goto :status
if /i "%loc%" EQU "fr" set "loc=linode-fremont" & set "mention=@US Notify" & goto :status
if /i "%loc%" EQU "ld" set "loc=linode-london" & set "mention=@EU Notify" & goto :status
if /i "%loc%" EQU "am" set "loc=vultr-amsterdam" & set "mention=@EU Notify" & goto :status
if /i "%loc%" EQU "ff" set "loc=linode-frankfurt" & set "mention=@EU Notify" & goto :status
if /i "%loc%" EQU "tk" set "loc=vultr-tokyo" & set "mention=@Asia^/Oceania Notify" & goto :status
if /i "%loc%" EQU "sg" set "loc=vultr-singapore"  & set "mention=@Asia^/Oceania Notify" & goto :status
if /i "%loc%" EQU "sy" set "loc=vultr-sydney" & set "mention=@Asia^/Oceania Notify" & goto :status
echo: & echo Invalid response!
goto :reg
:status
echo: & echo =================================================================================== & echo: 
set /p stt=status? 
echo: & echo =================================================================================== & echo: 
set /p uuid=csl id? 
echo: & echo =================================================================================== & echo:  & echo Link: https:^/^/%lk% & echo Gamemode:  %mode% & echo Team: %team% & echo Location: %loc% & echo Status: %stt% & echo ID: %uuid% & echo Scoreboard: &  echo ^<image^> & echo: & echo is this correct? & echo:
:loooop
set /p ch=(Y/N) 
if /i "%ch%" EQU "Y" goto :ok
if /i "%ch%" EQU "N" goto :redo
echo: & echo invalid response lmao
goto :loooop
:ok
echo:  & echo =================================================================================== & echo: & echo result is written to output.txt in %~dp0.
echo.> output.txt
echo =================================================================================== >> output.txt
echo.>> output.txt
echo GENERATED ON %DATE% at %TIME% >> output.txt
echo.>> output.txt
echo =================================================================================== >> output.txt
echo.>> output.txt
echo %mention% >> output.txt
echo **Link:** ^<https://%lk%^> >> output.txt
echo **Gamemode:**  %mode% >> output.txt
echo **Team:** %team% >> output.txt
echo **Location:** %loc% >> output.txt
echo **Status:** %stt% >> output.txt
echo **ID:** %uuid% >> output.txt
echo **Scoreboard:** >> output.txt
echo %mention% > raw.txt
echo **Link:** ^<https://%lk%^> >> raw.txt
echo **Gamemode:**  %mode% >> raw.txt
echo **Team:** %team% >> raw.txt
echo **Location:** %loc% >> raw.txt
echo **Status:** %stt% >> raw.txt
echo **ID:** %uuid% >> raw.txt
echo **Scoreboard:** >> raw.txt
type raw.txt | clip
echo done^^!
set "lk2=%lk%"
if /i "%doLoop%" EQU "0" goto :exit
if /i "%doLoop%" EQU "1" goto :loop
if /i "%doLoop%" EQU "2" goto :pause
if /i "%doLoop%" EQU "3" goto :cstm
::=====EVENTS=====
:exit
exit
:loop
goto :redo
:pause
echo press any key to exit. & pause >nul & exit
:cstm
echo: & echo =================================================================================== & echo:  & echo ex - exit & echo lp - loop & echo ps - pause & echo:
set /p act=what do
if /i "%act%" EQU "ex" goto :exit
if /i "%act%" EQU "lp" goto :redo
if /i "%act%" EQU "ps" goto :pause
echo: & echo invalid response!
:err
set /p cfmn=you have entered the same link twice. ya sure about that? type Y to confirm, or N to return. 
if /i "%cfmn%" EQU "y" goto :tdm
if /i "%cfmn%" EQU "n" goto :startup
echo: & echo invalid response!
goto :err
::=====SETUP=====
:setup
echo: &  echo =================================================================================== & echo: & echo - C O N F I G - & echo: & echo =================================================================================== & echo:
:brows
echo - Chrome & echo - Edge & echo - None & echo:
set /p browser=select your default startup browser. Type "none" if you have an unsupported browser/don't want autostart. 
if /i "%browser%" EQU "chrome" goto :cr
if /i "%browser%" EQU "edge" goto :ed
if /i "%browser%" EQU "none" goto :nu
echo: & echo invalid response!
goto :brows
:cr
set "browser=cr" & goto :stloop
:ed
set "browser=ed" & goto :stloop
:nu
set "browser=none" & goto :stloop
:stloop
echo: &  echo =================================================================================== & echo:
echo exit - exit immediately & echo loop - loop. useful when generating multiple csls. & echo nul - pause before exiting. & echo cust - tell the script what to do after every generation. & echo:
set /p doLoop=what would you like the script to do after generating a CSL? 
if /i "%doLoop%" EQU "exit" goto :noloop
if /i "%doLoop%" EQU "loop" goto :loop
if /i "%doLoop%" EQU "nul" goto :pause
if /i "%doLoop%" EQU "cust" goto :custom
echo: & echo Invalid response!
goto :stloop
:noloop
set "doLoop=0" & goto :write
:loop
set "doLoop=1" & goto :write
:pause
set "doLoop=2" & goto :write
:custom
set "doLoop=3" & goto :write
:write
echo: &  echo =================================================================================== & echo:
echo :: =================================================================================== > config.cmd
echo.>> config.cmd
echo :: CONFIG GENERATED ON %DATE% - %TIME% >> config.cmd
echo.>> config.cmd
echo :: delete config.cmd and use autocsl normally to change any parameters. >> config.cmd
echo.>> config.cmd
echo :: =================================================================================== >> config.cmd 
echo.>> config.cmd
echo set "cfgtime=%DATE%: %TIME%" >>config.cmd
echo set "browser=%browser%" >> config.cmd
echo set "doLoop=%doLoop%" >> config.cmd
echo done. delete config.cmd to change any parameters. & echo restart autocsl to use normally. & pause >nul
