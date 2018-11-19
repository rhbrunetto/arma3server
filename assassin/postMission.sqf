/* Runs scripts after client receives mission.
 Creator: {TRC}THEASSASSINzz
 */
 
// Player Markers
0 = [] execVM "Assassin\map\markers.sqf"; 

[] execVM "scripts\intro.sqf";

[] execVM "scripts\repetitive_cleanup.sqf";

CHHQ_showMarkers = true;

execVM "scripts\NRE_earplugs.sqf";