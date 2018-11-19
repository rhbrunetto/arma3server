/* 	
	Here you can add mods that you wish to be blacklisted and
	add exempt players 
	By {TRC}Theassassinzz
*/

tz_blacklist = ["KA_Suitcase_Nuke", "SSPCM", "NSS_Admin_Console", "balca_debug_tool","LAGO_SCannon","LAGO_KU3K","LAGO_CP","CCS_Armour_BlackSun","Jaffa_Hand_Mounted_Cannon"];

tz_banned_names = ["Admin","Moderator","Nigger","Fuck","owner","Owner","OWNER","FUCK","ADMIN","Administrator","administrator","kike","asshole","cunt","vagina"]

tz_exemptPlayers = [
	"76561198068745049"/* Undyne */,
	"76561197971214712"/* Bigwavedave */,
	"76561198124393064"/* Danny */,
	"76561197972721941"/* BigSky */,
	];
	
// Message for player if caught with a blacklisted mod goes below
tz_kick_message = "You have a Mod that is blacklisted on our server, please ask an admin or check our website for a full list of blacklisted mods!!! tacticalrabbits.org";

tz_name_message = "You have a name that is banned from our server, please change it and come back soon!!!";

tz_warning_message = "You have a Mod that is blacklisted on our server, please ask an admin or check our website for a full list of blacklisted mods!!! tacticalrabbits.org";


tz_warning = 0; // if 1 player will be warned of mods, if 0 player will be kicked back to the lobby

/*
------------------------------------------------------------------------
-----------------------End of Config------------------------------------
------------------------------------------------------------------------
*/

tz_isExempt = {
	(getPlayerUID player) in tz_exemptPlayers};
	
execVM "assassin\blacklist.sqf";