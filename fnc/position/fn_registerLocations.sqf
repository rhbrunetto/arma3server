/*private["_worldradius","_all","_locations","_locBSE","_locCTY","_locHIL","_locPOI","_locTWN","_locWTR"];

{
	_position = _x call PO3_fnc_getPos;
	if(_position distance [0,0,0] > 10) then {
		_location = createLocation ["NameLocal", _position, 200, 200];
		_location setText "Military Post";
		_location setName "Military Post";
	};
}forEach [
	 "PO3_loc_military_1","PO3_loc_military_2","PO3_loc_military_3","PO3_loc_military_4","PO3_loc_military_5"
	,"PO3_loc_military_6","PO3_loc_military_7","PO3_loc_military_8","PO3_loc_military_9","PO3_loc_military_10"
	,"PO3_loc_military_11","PO3_loc_military_12","PO3_loc_military_13","PO3_loc_military_14","PO3_loc_military_15"
	,"PO3_loc_military_16","PO3_loc_military_17","PO3_loc_military_18","PO3_loc_military_19","PO3_loc_military_20","PO3_loc_military_21","PO3_loc_military_22", "PO3_loc_military_23"
];

{
	_position = _x call PO3_fnc_getPos;
	if(_position distance [0,0,0] > 10) then {
		_location = createLocation ["NameLocal", _position, 100, 100];
		_location setText "Resupply Base";
		_location setName "Resupply Base";
	};
}forEach ["PO3_loc_resupplybase_1","PO3_loc_resupplybase_2","PO3_loc_resupplybase_3","PO3_loc_resupplybase_4"];

{
	_position = _x call PO3_fnc_getPos;
	if(_position distance [0,0,0] > 10) then {
		_location = createLocation ["Airport", _position, 300, 300];
		_location setText "Airfield";
		_location setName "Airfield";
	};
}forEach ["PO3_loc_airport_1","PO3_loc_airport_2","PO3_loc_airport_3","PO3_loc_airport_4","PO3_loc_airport_5"];

_worldradius = 1500*Log(PO3_worldsize/1000);
_all = nearestLocations [[0,0],["Airport","CityCenter","Hill","NameCity","NameCityCapital","NameLocal","NameMarine","NameVillage"],100000];

_locations = [];
_locAIR = [];
_locBSE = [];
_locCTY = [];
_locHIL = [];
_locPOI = [];
_locTWN = [];
_locWTR = [];
_locOTH = [];
_locRSP = [];

PO3_gvar_locations = [];
{
	if(	position _x distance getMarkerPos "respawn_west" > _worldradius &&
		position _x distance getMarkerPos "respawn_east" > _worldradius &&
		!(toLower(text _x) IN ["sagonisi","katalaki bay","melanera bay","pefkas bay","tonos bay"])
	) then {
		_text = switch (toLower (type _x)) do {
			case "airport"			: { _locAIR set [count _locAIR,[_x,"ColorOrange"]]; "Airport" };
			case "citycenter";
			case "namecitycaptial"	: { _locCTY set [count _locCTY,[_x,"ColorOrange"]]; "City" };
			case "namecity";
			case "namevillage"		: { _locTWN set [count _locTWN, [_x,"ColorWhite"]]; "Town" };
			case "namemarine"		: { _locWTR set [count _locWTR, [_x,"ColorBlue" ]]; "Bay" };
			case "hill"				: { _locHIL set [count _locHIL, [_x,"ColorGreen"]]; "Hill" };
			case "namelocal"		: {
				switch ( toLower(text _x) ) do {
					case "castle"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "POI" };
					case "factory"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "storage"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "mine"				: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Mine" };
					case "quarry"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Mine" };
					case "stadium"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Stadium" };
					case "power plant"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Power" };
					case "military post"	: { _locBSE set [count _locBSE,[_x,"ColorOPFOR"]]; "Military" };
					case "resupply base"	: { _locRSP set [count _locRSP,[_x,"ColorRed"]]; "Resupply" };
					default { _locOTH set [count _locOTH,[_x,"ColorBlack"]]; "Other" };
				};
			};
			default { _locOTH set [count _locOTH,[_x,"ColorBlack"]]; "Other" };
		};
		PO3_gvar_locations set [count PO3_gvar_locations,[_text,_x,_x call PO3_fnc_getPos]];
	};
} foreach _all;

if(PO3_debug) then {
	{
		_marker = createMarkerlocal [format["PO3_LOC_%1",_x select 0],position (_x select 0)];
		_marker setMarkerShapelocal "ICON";
		_marker setMarkerTypelocal "mil_dot";
		_marker setMarkerColorlocal (_x select 1);
		_marker setMarkerSizeLocal [0.5,0.5];
		_marker setMarkerAlpha 0.3;
	} foreach (_locPOI+_locTWN+_locCTY+_locBSE+_locHIL+_locWTR+_locRSP);
};

PO3_pos_allowed = [_locBSE,_locCTY,_locHIL,_locTWN,_locWTR,_locPOI,_locAIR,_locOTH,_locRSP];
["PO3_fnc_registerLocations",format["Locations Registered: %1",PO3_pos_allowed]] call PO3_fnc_log;
["PO3_fnc_registerLocations",format["Locations Registered: %1",PO3_gvar_locations]] call PO3_fnc_log;

PO3_pos_allowed;*/

private["_worldradius","_all","_locations","_locBSE","_locCTY","_locHIL","_locPOI","_locTWN","_locWTR"];

{
	_position = _x call PO3_fnc_getPos;
	if(_position distance [0,0,0] > 10) then {
		_location = createLocation ["NameLocal", _position, 200, 200];
		_location setText "Military Post";
		_location setName "Military Post";
	};
}forEach [

	 "PO3_loc_military_1","PO3_loc_military_2","PO3_loc_military_3","PO3_loc_military_4","PO3_loc_military_5"
	,"PO3_loc_military_6","PO3_loc_military_7","PO3_loc_military_8","PO3_loc_military_9","PO3_loc_military_10"
	,"PO3_loc_military_11","PO3_loc_military_12","PO3_loc_military_13","PO3_loc_military_14"
	/* TEROX EDIT  I had to edit these as i added more Po3_loc_military_* post markers */
	,"PO3_loc_military_15","PO3_loc_military_16","PO3_loc_military_17","PO3_loc_military_18","PO3_loc_military_19"
];

{
	_position = _x call PO3_fnc_getPos;
	if(_position distance [0,0,0] > 10) then {
		_location = createLocation ["NameLocal", _position, 100, 100];
		_location setText "Resupply Base";
		_location setName "Resupply Base";
	};
}forEach
[
	"PO3_loc_resupplybase_1","PO3_loc_resupplybase_2","PO3_loc_resupplybase_3","PO3_loc_resupplybase_4"
	/* TEROX EDIT  I had to edit these as i added more Po3_loc_resupplybase_* post markers */
	,"PO3_loc_resupplybase_5","PO3_loc_resupplybase_6"
];

{
	_position = _x call PO3_fnc_getPos;
	if(_position distance [0,0,0] > 10) then {
		_location = createLocation ["Airport", _position, 300, 300];
		_location setText "Airfield";
		_location setName "Airfield";
	};
		/* TEROX EDIT  I had to remove "PO3_loc_airport_5"   not enough airports on Tanoa */
}forEach ["PO3_loc_airport_1","PO3_loc_airport_2","PO3_loc_airport_3","PO3_loc_airport_4"];

_worldradius = 1500*Log(PO3_worldsize/1000);
_all = nearestLocations [[0,0],["Airport","CityCenter","Hill","NameCity","NameCityCapital","NameLocal","NameMarine","NameVillage"],100000];

_locations = [];
_locAIR = [];
_locBSE = [];
_locCTY = [];
_locHIL = [];
_locPOI = [];
_locTWN = [];
_locWTR = [];
_locOTH = [];
_locRSP = [];

PO3_gvar_locations = [];
{
	if(	position _x distance getMarkerPos "respawn_west" > _worldradius &&
		position _x distance getMarkerPos "respawn_east" > _worldradius &&
		!(toLower(text _x) IN
		  [
		  	"sagonisi","katalaki bay","melanera bay","pefkas bay","tonos bay"
		  	/* TEROX EDIT Do I need to add any for Tanoa */
		  ])
	) then {
		_text = switch (toLower (type _x)) do {
			case "airport"			: { _locAIR set [count _locAIR,[_x,"ColorOrange"]]; "Airport" };
			case "citycenter";
			case "namecitycapital"	: { _locCTY set [count _locCTY,[_x,"ColorOrange"]]; "City" };
			case "namecity"			: { _locCTY set [count _locCTY,[_x,"ColorOrange"]]; "City" };
			case "namevillage"		: { _locTWN set [count _locTWN, [_x,"ColorWhite"]]; "Town" };
			case "namemarine"		: { _locWTR set [count _locWTR, [_x,"ColorBlue" ]]; "Bay" };
			case "hill"				: { _locHIL set [count _locHIL, [_x,"ColorGreen"]]; "Hill" };
			case "namelocal"		: {
				switch ( toLower(text _x) ) do {
					case "castle"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "POI" };
					case "factory"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "storage"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "mine"				: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Mine" };
					case "quarry"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Mine" };
					case "stadium"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Stadium" };
					case "power plant"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Power" };
					case "military post"	: { _locBSE set [count _locBSE,[_x,"ColorOPFOR"]]; "Military" };
					case "resupply base"	: { _locRSP set [count _locRSP,[_x,"ColorRed"]]; "Resupply" };
					/* TEROX EDIT Added these for Tanoa */
					case "Comms Alpha"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Transmitter" };
					case "Comms Bravo"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Transmitter" };
					case "Comms Whiskey"	: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Transmitter" };
					case "GSM station"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Transmitter" };
					case "ferry": { _locWTR  set [count _locWTR ,[_x,"ColorIndependent"]]; "Ferry" };
					case "Red Spring surface mine": { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Mine" };
					case "hotel resort"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Hotel" };
					case "plantation"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Plantation" };
					case "banana plantations":{ _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Plantation" };
					case "cocoa plantations": { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Plantation" };
					case "Tanoa Sugar Company":{ _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "sawmill"			: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "lumberyard"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "fuel depot"		: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "railway depot"	: { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Factory" };
					case "diesel power plant": { _locPOI set [count _locPOI,[_x,"ColorIndependent"]]; "Power" };
					case "Forbidden Village": { _locTWN set [count _locTWN,[_x,"ColorWhite"]]; "Town" };
					case "training base"	: { _locBSE set [count _locBSE,[_x,"ColorOPFOR"]]; "Military" };
					case "camp remnants"	: { _locBSE set [count _locBSE,[_x,"ColorOPFOR"]]; "Military" };
					case "vehicle range"	: { _locBSE set [count _locBSE,[_x,"ColorOPFOR"]]; "Military" };
					case "firing range"		: { _locBSE set [count _locBSE,[_x,"ColorOPFOR"]]; "Military" };
					case "fortress ruins"	: { _locBSE set [count _locBSE,[_x,"ColorOPFOR"]]; "Military" };
					default { _locOTH set [count _locOTH,[_x,"ColorBlack"]]; "Other" };
				};
			};
			default { _locOTH set [count _locOTH,[_x,"ColorBlack"]]; "Other" };
		};
		PO3_gvar_locations set [count PO3_gvar_locations,[_text,_x,_x call PO3_fnc_getPos]];
	};
} foreach _all;

if(PO3_debug) then {
	{
		_marker = createMarkerlocal [format["PO3_LOC_%1",_x select 0],position (_x select 0)];
		_marker setMarkerShapelocal "ICON";
		_marker setMarkerTypelocal "mil_dot";
		_marker setMarkerColorlocal (_x select 1);
		_marker setMarkerSizeLocal [0.5,0.5];
		_marker setMarkerAlpha 0.3;
	} foreach (_locPOI+_locTWN+_locCTY+_locBSE+_locHIL+_locWTR+_locRSP);
};

PO3_pos_allowed = [_locBSE,_locCTY,_locHIL,_locTWN,_locWTR,_locPOI,_locAIR,_locOTH,_locRSP];
["PO3_fnc_registerLocations",format["Locations Registered: %1",PO3_pos_allowed]] call PO3_fnc_log;
["PO3_fnc_registerLocations",format["Locations Registered: %1",PO3_gvar_locations]] call PO3_fnc_log;


/*
TEROX EDIT  Returning the values for debugging
	diag_log format [""];
	diag_log format [""];
	diag_log format ["--- Po3_pos_allowed---"];
	_id = 0;
{
	diag_log format [""];
	diag_log format ["select %1 -> %2",_id,_x];
	_id = _id + 1;
}foreach PO3_pos_allowed;

*/




PO3_pos_allowed;