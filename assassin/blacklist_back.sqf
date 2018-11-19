waitUntil{!isNil "tz_isExempt"};
// hint "tz_isExempt loaded";
sleep 2;
_name = name player;

if (tz_warning == 1) then {

	if (!(player call tz_isExempt)) then {
		// hint "Cycle started";
		sleep .01;
		_i = 0;
		{
			tz_blacklist = _X;
				//hint "Blacklist read";
				sleep .01;
				for "_n" do {
					//hint format ["%1 is being checked",_X];
					sleep .01;
					if(isClass(configFile>>"CfgPatches">>_X)) then {
					hintC format ["%1",tz_warning_message];
					_i = _i + 1;
					};
				};
		}forEach tz_blacklist;
		//hint "Done";
		//sleep 5;
		//hintC str format ["Detected %1", _i];
		//sleep 5;
		//hintC format ["%1", _name];
	};
}

else {
	if (!(player call tz_isExempt)) then {
		// hint "Cycle started";
		sleep .01;
		_i = 0;
		{
			tz_blacklist = _X;
				//hint "Blacklist read";
				sleep .01;
				for "_n" do {
				
					if(isClass(configFile>>"CfgPatches">>_X)) then {
					//hint format ["%1 is being checked",_X];
					sleep .01;
					
					_i = _i + 1;
					};
				};
			}forEach tz_blacklist;
			
			if (_i > 0) then {
			hintC format ["%1 You have %2 mods that are blacklisted",tz_kick_message, _i];
			sleep .01;
			hintC format ["You will now be returned to the lobby. Have a nice day %1", _name];
			endMission "END1";
		};
	
	};
}