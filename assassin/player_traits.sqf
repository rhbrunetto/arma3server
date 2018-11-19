waitUntil {!isNull player};
waitUntil {(vehicle player) == player};

private ["_target", "_isMedic", "_isEngi", "_audioCo", "_camoCo", "_isExp", "_loadCo", "_isUAV"];

_target	 	= _this select 0;

_isMedic 	= _this select 1;

_isEngineer	= _this select 2;

_audioCo	= _this select 3;

_camoCo		= _this select 4;

_isExp		= _this select 5;

_loadCo		= _this select 6;

_isUAV		= _this select 7;

/*
if (_isMedic) then {
	
		_target setUnitTrait ["Medic",true];
		hintC "Should be a medic now";
};
*/

if (_isEngineer) then {
		
		_target setUnitTrait ["Engineer",true];
		hintC "Should be a engineer now";
}
