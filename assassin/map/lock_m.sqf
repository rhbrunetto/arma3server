waitUntil{!isNil "tz_util_isDonator"};
waitUntil{!isNil "tz_util_isMember"};

{ 

	if ((vehicle player) == _x && ((getPos _x) select 2 < 1) && !(player call tz_util_isDonator) && !(player call tz_util_isAdmin) && !(player call tz_util_isMember)) then {

		{
			// Let player know this is members area and they are being removed
			hintC "This is a Member only area!";
			// Teleport them
			_x setPos (getMarkerPos "respawn_west");
		} forEach (crew _x);
	
	// Teleport vehicle to spawn
	_x setPos (getMarkerPos "vehicle_teleport");
	};
	
	// Teleports single person
	if (player == _x && !(_x call tz_util_isDonator) && !(player call tz_util_isAdmin)&& !(player call tz_util_isMember)) then {
		// Let player know this is members area and they are being removed
		hintC "This is a Member only area!";
		// Teleport them
		_x setPos (getMarkerPos "respawn_west");
	};
} forEach _this;
	
	



