// Script to teleport players to main base or HALO jump 

private ["_target", "_isMainBase", "_isTRCBase"];

tz_pp = {
	 player setposATL (getMarkerPos _this);
	 player setDir (markerDir _this); 
};

// The object to initialise
_target = _this select 0;

// If main Base add teleport to FOB's
_isMainBase = _this select 1;

_isTRCBase = _this select 2;

// Make object indestructable 
_target allowdamage false;

// If flag is in main baSse
if (_isMainBase) then{
	// Teleport To Camp Wolfpack
	_target addAction["<t color='#ff9900'>To FOB Wolfpack</t>", {"PO3_loc_airport_4" call tz_pp}];
	// Teleport To Camp Molos
	_target addAction["<t color='#ff9900'>To FOB Molos</t>", {"PO3_loc_airport_3" call tz_pp}];
	// Teleport To Camp Rebel
	_target addAction["<t color='#ff9900'>To FOB Kat</t>", {"PO3_loc_airport_2" call tz_pp}];
	// Teleport To Camp Therissa
	_target addAction["<t color='#ff9900'>To FOB Therissa</t>", {"PO3_loc_airport_5" call tz_pp}];
	// Teleport To Marina
	_target addAction["<t color='#ff9900'>To Marina</t>", {"redeploy_west_marine_1" call tz_pp}];
	// Teleport To Firing Range
	_target addAction["<t color='#ff9900'>To Firing Range</t>", {"loc_firing_range" call tz_pp}];
	
}	



else {
	// Add Teleport To Main Base 
	_target addAction["<t color='#ff9900'>Back to base</t>", {"respawn_west" call tz_pp}];
}

