waitUntil{!isNil "tz_util_isAdmin"};

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
if (!(player call tz_util_isAdmin)) then{ 
}

else{
	_target addAction["<t color='#ff9900'> To Admin Fortress</t>", {"TRC_base" call tz_pp}];
}
