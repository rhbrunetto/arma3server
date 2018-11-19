if ((name player) find "{TRC}" != 0) then {
	private _vehicle = vehicle player;
	if (_vehicle in _this) then {
		hintC "This is a Members only area!";
		_vehicle setPos (getMarkerPos (["vehicle_teleport", "respawn_west"] select (_vehicle == player)));
	};
};