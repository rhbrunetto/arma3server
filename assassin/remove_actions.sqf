// Script to remove actions
private ["_trigger","_player"];

_trigger = _this select 0;

_triggerPos = getPos _trigger;

_datatermArray = _triggerPos nearObjects ["Land_DataTerminal_01_F", 1];

_dataterm = _datatermArray select 0;

_datatermPos = getpos _dataterm;

if((player distance _datatermPos) > 15) then{

_player = _this select 1;

_player removeaction tz_action1;

_player removeaction tz_action2;

_player removeaction tz_action3;

_player removeaction tz_action4;

_player removeaction tz_action5;

_player removeaction tz_action6;

_player removeaction tz_action7;

_player removeaction tz_action8;
};