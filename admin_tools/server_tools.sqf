TZ_Keys_stuff = {
switch (_this) do {

               //Key 1
	case 0x4F: {
		execVM "admin_tools\time_check.sqf";
	};

               //Key 2
	case 0x50: {
		nul = [] execVM "admin_tools\player_check.sqf";
	};

               //Key 3
	case 0x51: {
		nul = [] execVM "admin_tools\health_check.sqf";
	};
};
};

waituntil {!isnull (finddisplay 46)};
(findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call TZ_Keys_stuff;false;"];

	