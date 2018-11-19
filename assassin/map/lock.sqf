waitUntil{!isNil "tz_util_isAdmin"};
{ 

	if ((vehicle player) == _x && ((getPos _x) select 2 < 1) && !(player call tz_util_isAdmin)) then {

		{
			// Let player know this is members area and they are being removed
			hintC "This is an Admin only area!";
			// Teleport them
			_x setPos (getMarkerPos "respawn_west");
		} forEach (crew _x);
	
	// Teleport vehicle to spawn
	_x setPos (getMarkerPos "vehicle_teleport");
	};
	
	// Teleports single person
	if (player == _x && !(_x call tz_util_isAdmin)) then {
		// Let player know this is members area and they are being removed
		hintC "This is an Admin only area!";
		// Teleport them
		_x setPos (getMarkerPos "respawn_west");
	};
} forEach _this;