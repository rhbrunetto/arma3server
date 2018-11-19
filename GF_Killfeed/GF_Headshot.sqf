


//________________  Author : GEORGE FLOROS [GR] ___________ 27.09.18 _____________

/*
________________ GF Killfeed Script ________________

https://forums.bohemia.net/forums/topic/206593-headshot-killfeed-script/

Please keep the Credits or add them to your Diary

https://community.bistudio.com/wiki/SQF_syntax
Don't try to open this with the simple notepad.
For everything that is with comment  //  in front  or between /*
means that it is disabled , so there is no need to delete the extra lines.

You can open this ex:
with notepad++
https://notepad-plus-plus.org/

and also use the extra pluggins
(this way will be better , it will give also some certain colours to be able to detect ex. problems )
http://www.armaholic.com/page.php?id=8680

or use any other program for editing .

For the Compilation List of my GF Scripts , you can search in:
https://forums.bohemia.net/forums/topic/215850-compilation-list-of-my-gf-scripts/
*/


diag_log "//________________ GF Headshot Script _____________";


/*
3 different type of notification available , 3 now is selected . 
To enable the others remove the  // comments 
*/


GF_Killfeed_Headshot = { 

_this addEventHandler ["hitpart", {
(_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];

if (isPlayer _shooter) then { 

if ("head" in (_this select 0 select 5)) then {
((_this select 0) select 0) RemoveEventHandler ["HitPart",0];


/*
//________________	1. BIS_fnc_typeText	________________
//________________	Letters appear gradually, upper part of the screen, center	________________
any=[
	[
		["Headshot","<t align = 'center' size = '1.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText; 

*/

//________________	or	________________

/*
//________________	2. BIS_fnc_infoText	________________

	//Individual letters appear quickly in random order, then disappear. Bottom right corner.
any= [
"Headshot"
] spawn BIS_fnc_infoText;

*/


//________________	or	________________


//________________	3. BIS_fnc_textTiles	________________		
//	https://community.bistudio.com/wiki/BIS_fnc_textTiles
//	[content, position, tileSize, duration, fadeInOutTime, tileTransparency]	

[parseText format  
//["img size='20' image='02.paa'/>" ], 
["<t align='center' font='PuristaBold' size='2.8'>""HEADSHOT""</t>" ], 
true, nil,  1, 0.7, 0] spawn BIS_fnc_textTiles; 

