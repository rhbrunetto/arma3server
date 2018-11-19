private ["_trigger", "_list", "_act", "_deAct", "_param1", "_param2"];

_trigger 	= _this select 0;
_list 		= _this select 1;
_act		= _this select 2;
_deAct		= _this select 4;
_param1		= _this select 3;
_param2		= _this select 5;

_triggerPos = getPos _trigger;

_datatermArray = _triggerPos nearObjects ["Land_DataTerminal_01_F", 1];

_dataterm = _datatermArray select 0;

_datatermPos = getpos _dataterm;

if(_act) then {
[_dataterm,3] call BIS_fnc_dataTerminalAnimate;	[_list] execVM "assassin\Player_portal.sqf"; 
};
//[term_3,0] call BIS_fnc_dataTerminalAnimate;	[thisTrigger,player] execVM "assassin\remove_actions.sqf";