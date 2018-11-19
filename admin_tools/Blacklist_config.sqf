/* 	
	Here you can add mods that you wish to be blacklisted and
	add exempt players 
	By {TRC}Theassassinzz
	
	Run this through init with  
	[] execVM "admin_tools\blacklist_config.sqf";
*/
waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};

tz_blacklist = ["KA_Suitcase_Nuke", "SSPCM", "NSS_Admin_Console", "balca_debug_tool","LAGO_SCannon","LAGO_KU3K","LAGO_CP","CCS_Armour_BlackSun","Jaffa_Hand_Mounted_Cannon"];

tz_banned_names = ["Admin","Moderator","Nigger","Fuck","owner","Owner","OWNER","FUCK","ADMIN","Administrator","administrator","kike","asshole","cunt","vagina"];

tz_admin_tag = "{TRC}";

tz_exemptPlayers = [
	"76561198035729712"/* Assassinzz */,
	"76561198174395718"/* Halvix */,
	"76561198143973255"/* Elikat */,
	"76561198297150643"/* Grunt */,
	"76561198064498681"/* God Dammit */,
	"76561197992961023"/* CrushDawg */,
	"76561197965061649"/* Ashnik */,
	"76561198077950994"/* Atlas */,
	"76561198066322258"/* Meanie Martini */,
	"76561198253029444"/* Aidan */,
	"76561198026000500"/* VVerker */,
	"76561198037996498"/* Kris */,
	"76561198077846047"/* Juggernaut */,
	"76561197971214712"/* Bigwavedave */,
	"76561198028066267"/* Ron Swanson */,
	"76561198081864510"/* 3rd EchelonActual */,
	"76561197982428896"/* Kadaire */
	];
	
// Message for player if caught with a blacklisted mod goes below
tz_kick_message 	= "You have a Mod that is blacklisted on our server, please ask an admin or check our website for a full list of blacklisted mods!!! tacticalrabbits.org";

tz_name_message 	= "You have a name that is banned from our server, please change it and come back soon!!!";

tz_tag_message 		= "stuff" ;

tz_warning_message 	= "You have a Mod that is blacklisted on our server, please ask an admin or check our website for a full list of blacklisted mods!!! tacticalrabbits.org";

tz_tag_check 		= 	0;	 	//

tz_warning 			= 	0; 		// if 1 player will be warned of mods, if 0 player will be kicked back to the lobby

/*
------------------------------------------------------------------------
-----------------------End of Config------------------------------------
------------------------------------------------------------------------
*/


tz_util_isTRC = {
    private ["_unit", "_name"];
    
    _name = toArray name _this;
    _name resize 5;

    (toString _name == tz_admin_tag);

};

tz_isExempt = { (getPlayerUID player) in tz_exemptPlayers };
execVM "admin_tools\blacklist.sqf";

execVM "admin_tools\name_check.sqf";

execVM "admin_tools\server_tools.sqf";