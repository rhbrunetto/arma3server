// Original pilotcheck by Kamaradski [AW]. 
// Since then been tweaked by many hands!
// Notable contributors: chucky [allFPS], Quiksilver.

_pilots = ["B_Helipilot_F","B_Helicrew_F"];
_aircraft_nocopilot = ["B_Heli_Transport_01_camo_F", "B_Heli_Transport_01_F", "I_Heli_Transport_02_F", "O_Heli_Light_02_F", "O_Heli_Light_02_unarmed_F", "B_Heli_Light_01_armed_F","B_Heli_Light_01_F", "B_Heli_Light_01_dynamicLoadout_F","I_Heli_Light_03_dynamicLoadout_F", "B_Heli_Transport_03_F","I_Heli_Light_03_unarmed_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_bench_F","C_IDAP_Heli_Transport_02_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F"];

waitUntil {player == player};

_iampilot = ({typeOf player == _x} count _pilots) > 0;

while { true } do {
	_oldvehicle = vehicle player;
	waitUntil {vehicle player != _oldvehicle};

	if(vehicle player != player) then {
		_veh = vehicle player;

		//------------------------------ pilot can be pilot seat only
		
		if((_veh isKindOf "Helicopter") && !(_veh isKindOf "ParachuteBase")) then {
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
					systemChat "Voce deve ser um piloto de TRANSPORTE para pilotar esta aeronave";
					player action ["getOut", _veh];
				};
			};
		};
	};
};
