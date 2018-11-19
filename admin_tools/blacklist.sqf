waitUntil{!isNil "tz_isExempt"};
waitUntil{!isNil "tz_util_isAdmin"};
// hint "tz_isExempt loaded";
sleep 2;
_name = name player;

_i = 0;
_o = 0;

if (player call tz_isExempt) exitWith{hint format ["Welcome %1 I hope you had a good day *Middle Finger*", _name]};


if (tz_warning == 0) then 
{		
	{
	tz_blacklist = _X;
		for "_n" do {
			if(isClass(configFile>>"CfgPatches">>_X))then { 
			_i = _i + 1;
			};
		};
	}forEach tz_blacklist;

	if (_i > 0)then{ 
	hintC format ["%1 You will now be kicked back to the lobby", tz_kick_message];
	sleep .01;
	_o = _o + 1;
		if (_o > 0)then{
		endMission "END3";};
		{
		tz_isExempt = _X;
			for "_n" do {
			hint str format ["%1 was kicked for have %2 mods on", _name, _i];
			};
		}forEach tz_isExempt;
	};
};

if (tz_warning == 1) then 
{
	{
		tz_blacklist = _X;
			for "_n" do {
				if(isClass(configFile>>"CfgPatches">>_X))then 
				{ 
				_i = _i + 1;
				};
			};
		}forEach tz_blacklist;

		if (_i > 0)then
		{ 
			hintC format ["%1 You will now be kicked back to the lobby", tz_warning_message];
			sleep .01;
			_o = _o + 1;
			if (_o > 0)then
			{
				{
				tz_isExempt = _X;
					for "_n" do 
					{
						hint str format ["%1 has %2 mods on", _name, _i];
					};
				}forEach tz_isExempt;
			};
		};
};

/*
if ((player call tz_util_bannedName)) then
{
	
	_o = _o + 1;
	
	if (_o > 0) then{
	hintC format ["%1", tz_name_message];
	sleep .01;
		if (_o > 0) then{
		endMission "END3";
		};
	};
};
*/