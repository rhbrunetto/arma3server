/**

	Teleport player and vehicle to select area
	Creator Theassassinzz
	
**/

private ["_target","_trigger", "_isMainBase"];

_trigger = _this select 1;

_isMainBase = _this select 2;

_target = player;

tz_tp = {
	_center = MarkerPos _this;
	
	_pos = _center findEmptyPosition [ 0 , 15 , "B_Truck_01_Repair_F" ];
	
	_dir = markerDir _this;
	
	(vehicle player) setposATL _pos;
	(vehicle player) setDir _dir; 
	
};

// The Object to initialise
if (_isMainBase) then {
	{
		_target removeaction tz_action1;

		_target removeaction tz_action2;

		_target removeaction tz_action3;

		_target removeaction tz_action4;

		_target removeaction tz_action5;

		_target removeaction tz_action6;

		_target removeaction tz_action7;

		_target removeaction tz_action8;

		// Teleport To UAV
		tz_action1 = _target addAction["<t color='#cc0000'>To UAV</t>", {"vehicle_portal_UAV" call tz_tp}];
		// Teleport To Camp Wolfpack
		tz_action2 = _target addAction["<t color='#cc0000'>To FOB Wolfpack</t>", {"vehicle_portal_Wolfpack" call tz_tp}];
		// Teleport To Camp Molos
		tz_action3 = _target addAction["<t color='#cc0000'>To FOB Molos</t>", {"vehicle_portal_Molos" call tz_tp}];
		// Teleport To Camp Rebel
		tz_action4 = _target addAction["<t color='#cc0000'>To FOB Kat</t>", {"vehicle_portal_Rebel" call tz_tp}];
		// Teleport To Camp Therissa
		tz_action5 = _target addAction["<t color='#cc0000'>To FOB Therissa</t>", {"vehicle_portal_Therissa" call tz_tp}];
		// Teleport To Check Point Alpha
		tz_action6 = _target addAction["<t color='#cc0000'>Check Point Alpha</t>", {"cp_3" call tz_tp}];
		// Teleport To Check Point Bravo
		tz_action7 = _target addAction["<t color='#cc0000'>Check Point Bravo</t>", {"cp_2" call tz_tp}];
		// Teleport To Check Point Charlie
		tz_action8 =  _target addAction["<t color='#cc0000'>Check Point Charlie</t>", {"cp_7" call tz_tp}]; 

		
		_triggerPos = getPos _trigger;


		waitUntil{(player distance _triggerPos) > 20};

		_target removeaction tz_action1;

		_target removeaction tz_action2;

		_target removeaction tz_action3;

		_target removeaction tz_action4;

		_target removeaction tz_action5;

		_target removeaction tz_action6;

		_target removeaction tz_action7;

		_target removeaction tz_action8;

	}forEach (_this select 0);
}

else {
	{

		_target removeaction tz_action9;

		tz_action9 = _target addAction["<t color='#ff111694'>To Main Base Parking Lot</t>", {"vehicle_portal_MBP" call tz_tp}];

		_triggerPos = getPos _trigger;

		waitUntil{(player distance _triggerPos) > 20};

		_target removeaction tz_action9;
	}forEach (_this select 0);
}