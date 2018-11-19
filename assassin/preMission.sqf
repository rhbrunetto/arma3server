/* Runs scripts before client receives mission.
 Creator: {TRC}THEASSASSINzz
 */

// Client-side initialisation
if (!isDedicated) then {
    execVM "scripts\crew_list\crew.sqf";
}

execVM "initUtils.sqf";

execVM "assassin\initPlayer.sqf";

execVM "R3F_LOG\init.sqf";