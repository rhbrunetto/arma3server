// Original pilotcheck by Kamaradski [AW]. 
// Since then been tweaked by many hands!
// Notable contributors: chucky [allFPS], Quiksilver.

/*
_attack_pilots = ["B_Pilot_F"];
_aircraft_nocopilot = ["B_Plane_CAS_01_dynamicLoadout_F","B_Plane_Fighter_01_Stealth_F","I_Plane_Fighter_04_F"];

waitUntil {player == player};

_iamatkpilot = ({typeOf player == _x} count _attack_pilots) > 0;

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
					if (!_iamatkpilot) then {
						systemChat "O copiloto est� desativado nesta aeronave";
						player action ["getOut",_veh];
					};
				};
			};
			if(!_iamatkpilot) then {
				_forbidden = [driver _veh];
				if (player in _forbidden) then {
					systemChat "Voce deve ser um piloto de ATACK para pilotar esta aeronave";
					player action ["getOut", _veh];
				};
			};
		};
	};
};
*/

/*// Original pilotcheck by Kamaradski [AW]. 
// Since then been tweaked by many hands!
// Notable contributors: chucky [allFPS], Quiksilver.

_attack_pilots = ["B_Helipilot_F","B_Helicrew_F"];
_aircraft_nocopilot = ["B_Heli_Transport_01_camo_F", "B_Heli_Transport_01_F", "I_Heli_Transport_02_F", "O_Heli_Light_02_F", "O_Heli_Light_02_unarmed_F", "B_Heli_Light_01_armed_F","B_Heli_Light_01_F", "B_Heli_Light_01_dynamicLoadout_F","I_Heli_Light_03_dynamicLoadout_F", "B_Heli_Transport_03_F","I_Heli_Light_03_unarmed_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_bench_F","C_IDAP_Heli_Transport_02_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F"];

waitUntil {player == player};

_iamatkpilot = ({typeOf player == _x} count _attack_pilots) > 0;

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
					if (!_iamatkpilot) then {
						systemChat "O copiloto está desativado nesta aeronave";
						player action ["getOut",_veh];
					};
				};
			};
			if(!_iamatkpilot) then {
				_forbidden = [driver _veh];
				if (player in _forbidden) then {
					systemChat "Voce deve ser um piloto de TRANSPORTE para pilotar esta aeronave";
					player action ["getOut", _veh];
				};
			};
		};
	};
};
*/

// Original pilotcheck by Kamaradski [AW].
// Since then been tweaked by many hands!
// Notable contributors: chucky [allFPS], Quiksilver.

_attack_pilots = ["B_Pilot_F"];
_heli_pilots   = ["B_Helipilot_F"];
//_aircraft_nocopilot = ["B_Heli_Transport_01_camo_F", "B_Heli_Transport_01_F", "I_Heli_Transport_02_F", "O_Heli_Light_02_F", "O_Heli_Light_02_unarmed_F", "B_Heli_Light_01_armed_F","B_Heli_Transport_03_F","I_Heli_light_03_unarmed_F","B_Heli_Light_01_F","O_Heli_Transport_04_bench_F","B_CTRG_Heli_Transport_01_sand_F","B_CTRG_Heli_Transport_01_tropic_F","B_T_VTOL_01_infantry_F","C_Plane_Civil_01_racing_F","C_Plane_Civil_01_F"];
/*
_cacas = [	"B_T_VTOL_01_armed_F",
			"B_Plane_CAS_01_dynamicLoadout_F",
			"O_Plane_CAS_02_dynamicLoadout_F",
			"I_Plane_Fighter_03_dynamicLoadout_F",
			"O_Plane_Fighter_02_F",
			"O_Plane_Fighter_02_Stealth_F",
			"I_Plane_Fighter_04_F",
			"B_Plane_Fighter_01_Stealth_F"];
*/
waitUntil {player == player};

_iamatkpilot = ({typeOf player == _x} count _attack_pilots) > 0;
_iamhpilot   = ({typeOf player == _x} count _heli_pilots) > 0;

// Remove comments and insert UIDs into the whitelist to exempt individuals from this script
//LINHAS DE CODIGO PARA LIBERAR ACESSO AO HELICOPTERO PELO ID DO JOGADOR - DAQUI
_uid = getPlayerUID player;
//_whitelist = ["76561198165541461","76561198159316342", "76561198341113897", "76561198282680445", "76561198033589256"];
_whitelist = [];

if (_uid in _whitelist) exitWith {};
//ATÉ AQUI

while { true } do {
	_oldvehicle = vehicle player;
	waitUntil {vehicle player != _oldvehicle};

	if(vehicle player != player) then {
		_veh = vehicle player;

		//------------------------------ pilot can be pilot seat only

		if((_veh isKindOf "Helicopter") && !(_veh isKindOf "ParachuteBase")) then {

			_veh addEventHandler ["ControlsShifted", {
				_innerpilot_h = ({typeOf (_this select 1) == _x} count ["B_Helipilot_F"]) > 0;
				if(!_innerpilot_h) then {
					systemChat "Apenas Pilotos de Helicóptero podem voar.";
					(_this select 1) action ["getOut", (_this select 0)];
				};
			}];		

			if(!_iamhpilot) then {
				_forbidden = [driver _veh];
				//_forbiddenCop = [_veh turretUnit [0]];
				if (player in _forbidden) then { //Piloto || Co-piloto
					systemChat "Apenas Pilotos de Helicóptero podem voar.";
					player action ["getOut", _veh];
				};
			};

		};

		if((_veh isKindOf "Plane") && !(_veh isKindOf "ParachuteBase")) then {

			_veh addEventHandler ["ControlsShifted", {
				_innerpilot_a = ({typeOf (_this select 1) == _x} count ["B_Pilot_F"]) > 0;
				if(!_innerpilot_a) then {
					systemChat "Apenas Pilotos de Caça podem voar.";
					(_this select 1) action ["getOut", (_this select 0)];
				};
			}];		

			if(!_iamatkpilot) then {
				_forbidden = [driver _veh];
				//_forbiddenCop = [_veh turretUnit [0]];
				if (player in _forbidden) then { //Piloto || Co-piloto
					systemChat "Apenas Pilotos de Caça podem voar.";
					player action ["getOut", _veh];
				};
			};

		};
	};
};

/*
//Co-piloto em helis normais desativado se não for piloto
			_veh addEventHandler ["ControlsShifted", {
				//_hpilot = ({typeOf (_this select 1) == _x} count _heli_pilots) > 0;
				_hpilot = ({typeOf (_this select 1) == _r} count _heli_pilots) > 0;
				if(!_hpilot) then {
					systemChat "Apenas Pilotos de Helicóptero podem assumir controles nesta aeronave.";
					(_this select 1) action ["getOut", (_this select 0)];
				};
			}];		

			if(!_iamhpilot) then {
				_forbidden = [driver _veh];
				//_forbiddenCop = [_veh turretUnit [0]];
				if (player in _forbidden) then { //Piloto || Co-piloto
					systemChat "Apenas Pilotos de Helicóptero podem pilotar esta aeronave.";
					player action ["getOut", _veh];
				};
			};

		} else {
			
			if ((_veh isKindOf "Plane") && !(_veh isKindOf "ParachuteBase")){
				//Co-piloto em helis normais desativado se não for piloto
				_veh addEventHandler ["ControlsShifted", {
					_atkpilot = ({typeOf (_this select 1) == _r} count _attack_pilots) > 0;
					if(!_atkpilot) then {
						systemChat "Apenas Pilotos de Caça podem assumir controles nesta aeronave.";
						(_this select 1) action ["getOut", (_this select 0)];
					};
				}];		

				if(!_iamatkpilot) then {
					_forbidden = [driver _veh];
					//_forbiddenCop = [_veh turretUnit [0]];
					if (player in _forbidden) then { //Piloto || Co-piloto
						systemChat "Apenas Pilotos de Caça podem pilotar esta aeronave.";
						player action ["getOut", _veh];
					};
				};
*/