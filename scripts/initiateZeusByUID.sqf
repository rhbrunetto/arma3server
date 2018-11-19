// initiateZeusByUID.sqf
// Retrieves player's UID. If it matches in the zeusID, attach player to a Zeus module.

private ["_uid", "_zeusModule", "_zeusModules"];
_zeusModules = [zeus_1, zeus_2, zeus_3, zeus_4, zeus_5, zeus_6, zeus_7, zeus_8, zeus_9, zeus_10, zeus_11, zeus_12, zeus_13, zeus_14, zeus_15, zeus_16, zeus_17, zeus_18, zeus_19, zeus_20, zeus_21, zeus_22, zeus_23, zeus_24, zeus_25, zeus_26, zeus_27, zeus_28, zeus_29, zeus_30, zeus_31, zeus_32, zeus_33, zeus_34, zeus_35, zeus_36, zeus_37, zeus_38, zeus_39, zeus_40, zeus_41, zeus_42, zeus_43, zeus_44, zeus_45];
_uid = getPlayerUID player;
_zeusModule = zeusUIDs find _uid;

if ( _zeusModule == -1 ) exitWith {};

[player, (_zeusModules select _zeusModule)] remoteExec ["assignCurator", 2];

player setVariable ["isZeus", true, true];[(_zeusModules select _zeusModule)] spawn {	[str "ZEUS ASSIGNED", format["WELCOME %1", profileName]] spawn BIS_fnc_infoText;
	[(_this select 0),[-1,-2,0]] call BIS_fnc_setCuratorVisionModes;};