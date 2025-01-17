private["_location","_position","_locaname", "_captured", "_allDead"];
// =========================================================================================================
//	Define Random Location
// =========================================================================================================

_location = "town" call PO3_fnc_getNewPos;

PO3_TASK__DIF	= PO3_param_missionskill;
PO3_TASK__POS	= _location select 0;
PO3_TASK__IDD	= format["%1%2:%3",round(PO3_TASK__POS select 0),round(PO3_TASK__POS select 1),(round random 99)];

_position = [PO3_TASK__POS,0,0,false] call PO3_fnc_getPos;
_locaname = _location select 1;
_locRadis = _location select 2;

// =========================================================================================================
//	Create Tasks
// =========================================================================================================

[ format["TASK%1",PO3_TASK__IDD],
	format[localize "STR_PO3_M15_TITLE",_locaname],
	format[localize "STR_PO3_M15_DESCR",PO3_TASK__IDD,_locaname,(PO3_side_3 select 2)],
	(PO3_side_1 select 0),
	[format["MRKR%1",PO3_TASK__IDD],_position,"mil_objective",(PO3_side_1 select 0) call PO3_fnc_getUnitMarkerColour,format[localize "STR_PO3_M15_TITLE",_locaname]],
	"assigned",
	_position,
	format[localize "STR_PO3_M15_TITLE",_locaname]
] call PO3_fnc_addTask;

// =========================================================================================================
//	WAIT UNTIL ARRIVAL
// =========================================================================================================
PO3_TOTAL_UNITS = [];
PO3_TOTAL_VEHICLES = [];

for "_i" from 1 to 2 do {
	_grp = nil;
	_grp = [ _position, (PO3_side_3 select 0), "EN_PatrolGroup0", 20 ] call PO3_fnc_createGroup;
	if !(isNil "_grp") then {
		[ _position, _grp ] spawn PO3_fnc_groupDefendPos;
		PO3_TOTAL_UNITS = PO3_TOTAL_UNITS + (units _grp);
		sleep 1;
	};
};

waitUntil{ sleep 1; count([_position,100,(PO3_side_3 select 0),["CAManBase"]] call PO3_fnc_getNearbyUnits) == 0 };

[(PO3_side_1 select 0),"SIDE",format[localize "STR_PO3_M15_MSG_1",(PO3_side_3 select 2)]] call PO3_fnc_sendChat;

// =========================================================================================================
//	Create Hostiles
// =========================================================================================================

_spawnAmbush = {
	private["_position","_b","_ingress","_grp"];

	_position = _this select 0;
	_b = _this select 1;
	_ingress = [_position ,[400,500],random 360,false] call PO3_fnc_getPos;

	_vehClass = [];
	if(_b <= 3) then { _vehClass set [count _vehClass,4]; };
	if(_b >= 3 && _b < 9)  then { _vehClass set [count _vehClass,5]; };
	if(_b >= 6) then { _vehClass set [count _vehClass,3]; };

	for "_i" from 0 to _b do {
		_grp = nil;
		_grp = [ _ingress, (PO3_side_3 select 0), format["EN_GroupForce_%1",round random 15], 50 ] call PO3_fnc_createGroup;
		if !(isNil "_grp") then {
			[ _position, _grp ] spawn PO3_fnc_groupAttackPos;
			PO3_TOTAL_UNITS = PO3_TOTAL_UNITS + (units _grp);
			sleep 1;
		};
	};

	for "_i" from 0 to (floor(_b/2)) do {
		if(random 4 > 0.5 || _b > 6) then {
			_class = _vehClass call PO3_fnc_getVehicleTypes;
			if(count _class > 0) then {
				_ingress = [_position ,[500,600],random 360,false] call PO3_fnc_getPos;
				_veh = ([ _ingress,_class call PO3_fnc_getArrayRandom,random 360,100,(PO3_side_3 select 0)] call PO3_fnc_createVehicle) select 0;
				if !(isNil "_veh") then {
					[ _position, _veh ] spawn PO3_fnc_groupAttackPos;
					PO3_TOTAL_UNITS = PO3_TOTAL_UNITS + (units _veh);
					PO3_TOTAL_VEHICLES set [ count PO3_TOTAL_VEHICLES, vehicle (leader _veh) ];
				};
			};
		};
	};

	_equation = round(((playersNumber(PO3_side_1 select 0) max 1)*PO3_param_missionskill max 1) * abs(log(( (playersNumber(PO3_side_1 select 0) max 1)/2)/64)));
	if(random 1 > 0.4 || _equation >= 3) then { [_position,(PO3_side_3 select 0),([7] call PO3_fnc_getVehicleTypes) call PO3_fnc_getArrayRandom,format["EN_GroupForce_%1",round random 9]] call PO3_fnc_supportCreateHeloReinforcements; };
	if(random 1 > 0.3 && _equation >= 7) then { [_position,(PO3_side_3 select 0),([7] call PO3_fnc_getVehicleTypes) call PO3_fnc_getArrayRandom,format["EN_GroupForce_%1",round random 9]] call PO3_fnc_supportCreateHeloReinforcements; };
};

	_intelpercent = 0;
	_increment = 0.01 / (PO3_TASK__DIF*3) / 3;
	_nextWave = 0.1;

	_captured = false;
	_allDead = false;
	
	_b = 1 max (round((playersNumber(PO3_side_1 select 0) max 1)/5));
	
	while { !_captured && !_allDead } do {
		if (_intelpercent < 1) then {
			sleep 1;

			//player sideChat format["%1 : %2", _intelpercent, _nextWave];
			
			if (_intelpercent >= _nextWave) then {
				[_position,(_b/2)] spawn _spawnAmbush;
				_nextWave = _nextWave + 0.1;
				
				_intelpercent = _intelpercent + _increment;
			} else {
				_intelpercent = _intelpercent + _increment;
			};
		} else {
			_allDead = (count([_position,1000,(PO3_side_3 select 2)] call PO3_fnc_getNearbyUnits) <= 5);
		};
		
		_captured = (count([_position,10,(PO3_side_3 select 2)] call PO3_fnc_getNearbyUnits) >= 5);

		//player sideChat format ["%1 : %2", _allDead, _captured];
	};

// =========================================================================================================
//	WAIT UNTIL COMPLETE/FAIL
// =========================================================================================================

sleep 1;
if(!_captured) then {
	[format["TASK%1",PO3_TASK__IDD],"succeeded"] call PO3_fnc_updateTask;
}else{
	[format["TASK%1",PO3_TASK__IDD],"failed"] call PO3_fnc_updateTask;
};

// =========================================================================================================
//	Cleanup
// =========================================================================================================

[_position,PO3_TOTAL_UNITS,PO3_TOTAL_VEHICLES] spawn {
	private["_target","_units","_vehicles"];

	_target = _this select 0;
	_units = _this select 1;
	_vehicles = _this select 2;

	waitUntil { count ([_target,500,(PO3_side_1 select 0),["CAManBase"]] call PO3_fnc_getNearbyPlayers) == 0 };

	{ if(alive _x) then { _x setDamage 1 }; }forEach _units;
	{ if( {isPlayer _x} count (crew _x) == 0 ) then { _x setDamage 1 }; }forEach _vehicles;
};

if(true) exitWith {};