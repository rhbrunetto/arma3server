titleText ["", "BLACK OUT"];

disableSerialization;
_ctrl = findDisplay 46 createDisplay "RscDisplayEmpty" ctrlCreate ["RscStructuredText", -1]; 
_ctrl ctrlSetPosition [.05,.05,1,1]; 
_ctrl ctrlCommit 0; 
_ctrl ctrlSetStructuredText parseText "<a size='15' href='http://tacticalrabbits.com'><img image='assassin\pics\JoinUsTransparent.jpg' /></a>";

HintC "_ctrl";
waitUntil {isnull _ctrl};
titleText ["", "BLACK IN"];