waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};

uidListA = [
	"76561198165541461","76561198159316342", "76561198341113897", "76561198282680445",
	
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
