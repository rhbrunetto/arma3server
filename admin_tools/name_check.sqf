/* Script to check name and kick players with bad names 
	Author {TRC}Theassassinz
*/
waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};
waitUntil {!isNil "tz_banned_names"};

private ["_unit", "_playerNameOriginal","_namelengthOrigial","_name"];

_playerNameOriginal = name player; 

_namelengthOrigial = toArray _playerNameOriginal;


_i = 0;

{
	tz_banned_names = _X;

	for "_n" do 
	{
		_bannedNameLength = toArray _X;
		
		_bannedNameCount = count _bannedNameLength;
		
		_playerNameResized = _namelengthOrigial resize _bannedNameCount;
		
		_playerNameResizedLetters = (toString _playerNameResized);
		
			if (_playerNameResizedLetters == _X) then {
				hintC str format ["%1", tz_name_message];
				_i = _i + 1;
				if (_i > 0) then {
				endMission "END3";
				};
			};
	}forEach tz_banned_names;
};
		