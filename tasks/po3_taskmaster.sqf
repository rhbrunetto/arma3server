private["_list","_j","_next","_prev","_lim","_script"];

// ==== PO3 Mission Types ==================================================================================
PO3_missions = [
	 "PO3_task_m01_attackBase"	
	,"PO3_task_m01_attackBase"	
	,"PO3_task_m01_attackBase"			
//	,"PO3_task_m02_attackConvoyArmour"	// <!-- Broken
//	,"PO3_task_m03_attackConvoySupply"	// <!-- TEST
//	,"PO3_task_m04_captureIntel"		// <!-- Broken
	,"PO3_task_m05_captureOfficer"		
	,"PO3_task_m06_captureTown"			
	,"PO3_task_m06_captureTown"			
	,"PO3_task_m06_captureTown"			
	,"PO3_task_m07_captureVehicle"		
	,"PO3_task_m08_clearMinefield"		
//  ,"PO3_task_m09_clearRunway"			// <!-- Doesn't spawn holes
//	,"PO3_task_m10_clearSeaMinefield"	
//	,"PO3_task_m11_createSupplies"		// <!-- Fails imediately
//	,"PO3_task_m12_createTower"			
	,"PO3_task_m13_defendBase"		
	,"PO3_task_m13_defendBase"		
	,"PO3_task_m13_defendBase"			
//	,"PO3_task_m14_defendDamagedBoat"	// <!-- I don't even know
	,"PO3_task_m15_defendTown"			
	,"PO3_task_m16_destroyArtillery"	
	,"PO3_task_m17_destroyCaches"		
	,"PO3_task_m18_destroyTower"		
	,"PO3_task_m19_intelDrone"			
	,"PO3_task_m20_rescuePilots"		
];

_list = PO3_missions;
//_list = ["PO3_task_m07_captureVehicle"];

_j = (count _list - 1) min (round random (count _list));
_next = _list select _j;
_prev = _list;
_missioncount = if(isNil "PO3_param_missioncount") then { 3 }else{ PO3_param_missioncount };
if !(PO3_debug) then { sleep 30 };
while { _missioncount != 0 } do {
	_lim = 0;
	while{ _next IN _prev && _lim < count _list } do {
		_j = (count _list - 1) min (round random (count _list));
		_next = _list select _j;
		_lim = _lim + 1;
	};
	_prev = if(count _prev >= count _list) then { [_next] }else{ _prev + [_next] };
	_missioncount = _missioncount - 1;
	sleep 5;
	
	_script = [] execVM format["tasks\%1.sqf",_next];
	
	waitUntil{ sleep 10; scriptdone _script || !(isNil "PO3_force_TASKEND") };
	if!(isNil "PO3_force_TASKEND") then {
		terminate _script;
		[format["TASK%1",PO3_TASK__IDD],"canceled"] call PO3_fnc_updateTask;

		{ if(alive _x) then { _x setDamage 1 }; }forEach PO3_TOTAL_UNITS;
		{ if( {isPlayer _x} count (crew _x) == 0 ) then { _x setDamage 1 }; }forEach PO3_TOTAL_VEHICLES;

		PO3_force_TASKEND = nil;
		_missioncount = _missioncount + 1;
	};
};

_counter = 0;
{
	switch (_x select 5) do {
		case "succeeded" : {
			_counter = _counter + 1;
		};
		case "failed" : {
			_counter = _counter - 1;
		};
	};
} foreach PO3_tasks_Tasks;

PO3_mission_Status = if(_counter >= 0) then { true }else{ false }; publicVariable "PO3_mission_Status";