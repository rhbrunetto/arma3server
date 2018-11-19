_list = (_this select 0);
_ignore = "ignore-nothing";

if (count _this == 2) then {
	_ignore = (_this select 1);
};

{
	// If the player is in a vehicle, The vehicle is on the ground and the player is not a member...
	if ((vehicle player) == _x 
	&& ((getPos _x) select 2 < 1)  
	&& !(_x isKindOf "Man")
	&& !((vehicleVarName _x) != _ignore)) then {
		_targetX = (getMarkerPos "b3_spawn_vehicle_protection") select 0;
		_targetY = (getMarkerPos "b3_spawn_vehicle_protection") select 1;
		_targetZ = 150;
			
		_x setPos [_targetX, _targetY, _targetZ];
		_x setVelocity [0, 0, 0];
		
		sleep 1;
		
		_x setDamage 1;
	};
} forEach _list;