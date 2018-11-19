// Original pilotcheck by Kamaradski [AW]. 
// Since then been tweaked by many hands!
// Notable contributors: chucky [allFPS], Quiksilver.

_pilots = ["B_Pilot_F"];
_aircraft_nocopilot = ["B_Plane_CAS_01_dynamicLoadout_F","B_Plane_Fighter_01_Stealth_F","I_Plane_Fighter_04_F"];

waitUntil {player == player};

_iampilot = ({typeOf player == _x} count _pilots) > 0;

while { true } do {
	_oldvehicle = vehicle player;
	waitUntil {vehicle player != _oldvehicle};

	if(vehicle player != player) then {
		_veh = vehicle player;

		//------------------------------ pilot can be pilot seat only
		
		if((_veh isKindOf "Plane") && !(_veh isKindOf "ParachuteBase")) then {
			if(({typeOf _veh == _x} count _aircraft_nocopilot) > 0) then {
				_forbidden = [_veh turretUnit [0]];
				if(player in _forbidden) then {
					if (!_iampilot) then {
						systemChat "O copiloto está desativado nesta aeronave";
						player action ["getOut",_veh];
					};
				};
			};
			if(!_iampilot) then {
				_forbidden = [driver _veh];
				if (player in _forbidden) then {
					systemChat "Voce deve ser um piloto de ATACK para pilotar esta aeronave";
					player action ["getOut", _veh];
				};
			};
		};
	};
};
