/**

	Teleport player and vehicle to select area
	Creator Theassassinzz
	
**/

private ["_target", "_isMainBase"];

tz_tp = {
	_center = MarkerPos _this;
	
	_pos = _center findEmptyPosition [ 0 , 15 , "B_Truck_01_Repair_F" ];
	
	_dir = markerDir _this;
	
	(vehicle player) setposATL _pos;
	(vehicle player) setDir _dir; 
	
};
	
// The Object to initialise
_target = _this select 0;
// If the object is the main base
_isMainBase = _this select 1;

// Make the object indestructable
_target allowDamage false;

// If Main Base 
if (_isMainBase) then {
	// Teleport To UAV
	_target addAction["<t color='#cc0000'>To UAV</t>", {"vehicle_portal_UAV" call tz_tp}];
	// Teleport To Camp Wolfpack
	_target addAction["<t color='#cc0000'>To FOB Wolfpack</t>", {"vehicle_portal_Wolfpack" call tz_tp}];
	// Teleport To Camp Molos
	_target addAction["<t color='#cc0000'>To FOB Molos</t>", {"vehicle_portal_Molos" call tz_tp}];
	// Teleport To Camp Rebel
	_target addAction["<t color='#cc0000'>To FOB Kat</t>", {"vehicle_portal_Rebel" call tz_tp}];
	// Teleport To Camp Therissa
	_target addAction["<t color='#cc0000'>To FOB Therissa</t>", {"vehicle_portal_Therissa" call tz_tp}];
	// Teleport To Check Point Alpha
	_target addAction["<t color='#cc0000'>Check Point Alpha</t>", {"cp_3" call tz_tp}];
	// Teleport To Check Point Bravo
	_target addAction["<t color='#cc0000'>Check Point Bravo</t>", {"cp_2" call tz_tp}];
	// Teleport To Check Point Charlie
	_target addAction["<t color='#cc0000'>Check Point Charlie</t>", {"cp_7" call tz_tp}];
	// Teleport To Check Point Delta
	//_target addAction["<t color='#cc0000'>Check Point Delta</t>", {"cp_4" call tz_tp}];
	// Teleport To Check Point Echo
	//_target addAction["<t color='#cc0000'>Check Point Echo</t>", {"cp_5" call tz_tp}];
	// Teleport To Check Point Foxtrot
	//_target addAction["<t color='#cc0000'>Check Point Foxtrot</t>", {"cp_6" call tz_tp}];
	// Teleport To Check Point Golf
	//_target addAction["<t color='#cc0000'>Check Point Golf</t>", {"cp_7" call tz_tp}];
}

// Otherwise Teleport to Main Base
else{
	// Add Teleport To Main Base Parkinglot
	_target addAction["<t color='#ff111694'>To Main Base Parking Lot</t>", {"vehicle_portal_MBP" call tz_tp}];
}





