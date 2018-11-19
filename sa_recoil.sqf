if(!isDedicated) then {

	if(alive player and ("PARAM_Recoil" call BIS_fnc_getParamValue == 0)) then {
		player setCustomAimCoef 0.30;
		player setUnitRecoilCoefficient 1;
	};

	player addEventHandler ["Respawn", {
		if(alive player and ("PARAM_Recoil" call BIS_fnc_getParamValue == 0)) then {
			player setCustomAimCoef 0.30;
			player setUnitRecoilCoefficient 1;
		};
	}];
	
};