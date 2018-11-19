execVM "admin_tools\blacklist_config.sqf";

["INIT",format["Executing %1 init.sqf",missionName],true] call PO3_fnc_log;

[] execVM "Patrol_Ops_3.sqf";

execVM "Assassin\preMission.sqf";

call compile preprocessFile "scripts\=BTC=_revive\=BTC=_revive_init.sqf";

if(!isDedicated) then {
	Receiving_finish = false;
	onPreloadFinished { Receiving_finish = true; onPreloadFinished {}; };
	WaitUntil{ !(isNull player) && !isNil "PO3_core_init" && Receiving_finish };
}else{
	WaitUntil{!isNil "PO3_core_init"};
};

if(!isDedicated && !PO3_debug) then {
	playMusic "LeadTrack01a_F";
	0 fadeMusic 1;
	[5,""] spawn PO3_fnc_camera_fadein;
	if!(PO3_debug) then { [270,900,150] call PO3_fnc_introsequence };
	[] spawn { sleep 20; 8 fadeMusic 0; };
};

[
		60, // seconds to delete dead bodies (0 means don't delete) 
		5*60, // seconds to delete dead vehicles (0 means don't delete)
		2*60, // seconds to delete dropped weapons (0 means don't delete)
		10*60, // seconds to deleted planted explosives (0 means don't delete)
		0 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM 'scripts\repetitive_cleanup.sqf';

execVM "Assassin\postMission.sqf";

["PO3_taskmaster"] call PO3_fnc_runTaskSequence;

0 = [] execVM 'scripts\unflip_vehicle.sqf';

[] call PO3_fnc_outrosequence;


// SA: Recoil

player enableFatigue FALSE;
player enableStamina FALSE;
player forceWalk FALSE;
player setCustomAimCoef 0.30;
player setUnitRecoilCoefficient 1;
enableEnvironment FALSE;


if (isServer) then {
 [] execVM "time.sqf";  // Time
[] execVM "sa_recoil.sqf";

 }; 

0 setRain 0;
0 setOvercast 0;
0 setFog 0;
forceWeatherChange;
999999 setRain 0;
999999 setOvercast 0;
999999 setFog 0;

_null =[] execVM "scripts\pilotCheck_air.sqf"; 
_null =[] execVM "scripts\pilotCheck.sqf"; 
