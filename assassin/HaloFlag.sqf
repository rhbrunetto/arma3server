waitUntil{!isNil "tz_util_isAdmin"};
waitUntil{!isNil "tz_util_isDonator"}; 

// Script to teleport players to main base or HALO jump 

private ["_target"];

tz_pp = {
	 player setposATL (getMarkerPos _this);
	 player setDir (markerDir _this); 
};

// The object to initialise
_target = _this select 0;

// Make object indestructable 
_target allowdamage false;

// If flag is in main baSse
if (!(player call tz_util_isDonator) && !(player call tz_util_isAdmin)) then{ 
}

else{
	_target addAction["<t color='#ff9900'> To Donator Area</t>", {"loc_trc" call tz_pp}]; 
	_target addAction["<t color='#ff9900'> To Donator Area Water</t>", {"trc_water" call tz_pp}];
}

