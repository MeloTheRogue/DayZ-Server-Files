@echo off
:start
::Server name
set serverName=DayZ
::Server files location
set serverLocation="C:\Users\melo\Desktop\steamcmd\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=4
::Mods ID1;ID2;ID3 | (should be ID's to match files)
set serverMods=255093221;283288477;171097725;174804474;281937363;254658334;155921203;181895723;278027802;164618775;275708041;280975779;283239584;297119030;229178530;279298472;279298336;280424164;229178543;192808463;289836344;248897291;183244818;297566113;252146049;157778453;236133094;244424739;191223730;180789886;294850775;266316969;321016267;199907695;269297966;212027461;235456860;196170832;226416297;244312211;288348079;291841833;168220590;182843912;179772006;287787736;279361940;
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-dologs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min DayZServer_x64.exe -config=%serverConfig% -profiles=profiles -port=%serverPort% -cpuCount=%serverCPU% -doLogs -netLog -FreezeCheck -mod=%serverMods%

::choosing not to have auto restarts right now
::Time in seconds before kill server process (14400 = 4 hours)
::timeout 14390
::taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
::timeout 10
::Go back to the top and repeat the whole cycle again
::goto start
