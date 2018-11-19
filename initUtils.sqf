waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};

uidListA = [
	"76561197971214712"/* =BR=Alexandre */,
	
	"_SP_PLAYER_"
	];

uidListD = [
	

	];

uidListM = [

	];

tz_util_isAdmin = {
	(getPlayerUID player) in uidListA};

tz_util_isDonator = {
	(getPlayerUID player) in uidListD};

tz_util_isMember = {
	(getPlayerUID player) in uidListM};

tz_playercount = {
	_w = playersNumber west;
	_e = playersNumber east;
	_i = playersNumber independent;
	_count = _w + _e + _i;
	};
