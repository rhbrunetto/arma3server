// 3d Text Script by {TRC}Theassassinzz

if(isServer) exitWith{};

private ["_term","_cas","_rules","_info","_teleport","_mhq"];

_term 		= 	_this select 0;
_cas 		=	_this select 1;
_rules 		=	_this select 2;
_info		=	_this select 3;
_teleport	=	_this select 4;
_mhq		=	_this select 5;
_viewDist	=	_this select 6;

_termPos 	= 	getPos _term;

tz_itemPos 	= { 
	_posZ = getPos _term select 2;
	_posZElevated = _posZ + 1.5;
	[
	getPos _term select 0,
	getPos _term select 1,
	_posZElevated
	]
};
tz_itemPos2 = { 
	_posZ = getPos _term select 2;
	_posZElevated = _posZ + 1;
	[
	getPos _term select 0,
	getPos _term select 1,
	_posZElevated
	]
};


tz_vehicleTrig = {
    //_trg setTriggerStatements ["this", "hint 'Civilian near player'", "hint 'no civilian near'"];
    _trg = createTrigger ["EmptyDetector", _term];
    _trg setTriggerArea [15,15, 0, false];
    _trg setTriggerActivation ["WEST", "PRESENT", true];
    _trg = setTriggerStatements [
    	"this",
    	format[ "
    		[ '%1' call BIS_fnc_objectFromNetId, 3 ] call BIS_fnc_dataTerminalAnimate;
    		thisList execVM 'assassin\Player_portal.sqf';
    	", _term call BIS_fnc_netId ],
    	format[ "
    		[ '%1' call BIS_fnc_objectFromNetId, 0 ] call BIS_fnc_dataTerminalAnimate;
    		[thisTrigger,player] execVM 'assassin\remove_actions.sqf';
    	",  _term call BIS_fnc_netId ]
    ];
};

/*
tz_vehicleTrig = {
	//_trg setTriggerStatements ["this", "hint 'Civilian near player'", "hint 'no civilian near'"];
	_trg = createTrigger ["EmptyDetector", _term];
	_trg setTriggerArea [15,15, 0, false];
	_trg setTriggerActivation ["WEST", "PRESENT", true];
	
	_trg = setTriggerStatements ["this", "[_term,3] call BIS_fnc_dataTerminalAnimate;thisList execVM ""assassin\Player_portal.sqf"";", "[_term,0] call BIS_fnc_dataTerminalAnimate;[thisTrigger,player] execVM ""assassin\remove_actions.sqf"";"];
};
*/

if(_cas) 		then {
["<t size='1' shadow='1' color='#ff9900'>CAS Rules Are As Follows<br /><br /></t><img size='8' shadow='0' image='assassin\pics\CASRulesTransparent.paa'/>",_term call tz_itemPos, 10, 1] spawn BIS_fnc_3Dcredits;
};

if(_rules) 		then {
["<img shadow='0' size='6' image='assassin\pics\ProhibitedTransparent2.paa'/>", _term call tz_itemPos, 2.5, 1] spawn BIS_fnc_3Dcredits;
};

if(_info) 		then {
["<img shadow='0' size='6' image='assassin\pics\JoinUsTransparent.jpg'/><t size='1' shadow='0' color='#ff9900'><br /><br />Make Sure to stop by to stay up to date with events</t>", _term call tz_itemPos, 2.5, 1] spawn BIS_fnc_3Dcredits;
};

if(_teleport)	then {
["<img shadow='0' size='6' image='assassin\pics\VehicleTeleporterTransparent2.paa'/><t size='1' shadow='0' color='#ff9900'><br /><br />Where Would You like to go?</t>", _term call tz_itemPos2, 7.5, 1] spawn BIS_fnc_3Dcredits;
};

if(_mhq)		then {
["<img shadow='0' size='6' image='assassin\pics\MobileHQTransparent.paa'/><t size='1' shadow='0' color='#ff9900'><br /><br />MHQ Teleportaion</t>", _term call tz_itemPos, 2.5, 1] spawn BIS_fnc_3Dcredits;
};

//["<t size='1' shadow='0' color='#ff9900'>CAS Rules Are As Follows<br /><br /></t><img shadow='0' size='6' image='transparency.paa'/>", getMarkerPos "loco_cas", 2.5, 1] spawn BIS_fnc_3Dcredits;