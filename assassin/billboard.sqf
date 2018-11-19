private ["_target","_type"];

_target = _this select 0;
_type 	= _this select 1;

switch (_type) do {

	case 1: {_target SetObjectTexture [0, "assassin\pics\CASRulesTransparent.paa"]};
	case 2: {_target SetObjectTexture [0, "assassin\pics\JoinUsTransparent.jpg"]};
	case 3: {_target SetObjectTexture [0, "assassin\pics\InfantryTeleporter.paa"]};
	case 4: {_target SetObjectTexture [0, "assassin\pics\MobileHQTransparentAlternate.paa"]};
	case 5: {_target SetObjectTexture [0, "assassin\pics\ProhibitedTransparent2.paa"]};
	case 6: {_target SetObjectTexture [0, "assassin\pics\VehicleTeleporterTransparent.paa"]};

};