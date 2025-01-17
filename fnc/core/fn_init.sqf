PO3_mod_cba_enabled = isClass(configFile/"CfgPatches"/"cba_main");
PO3_mod_ace_enabled = isClass(configFile/"CfgPatches"/"ace_main");
PO3_mod_acre_enabled = isClass(configFile/"CfgPatches"/"acre_main");
PO3_mod_tfr_enabled = isClass(configFile/"CfgPatches"/"task_force_radio");
PO3_mod_STHud_enabled = isClass(configFile/"CfgPatches"/"ST_STHud");
PO3SRV = if(isServer) then {true}else{false};
PO3HLC = if(!isDedicated && !hasInterface) then {true}else{false};
PO3CLI = if(!isDedicated && hasInterface ) then {true}else{false};
if(isNil "PO3_active_units") then { PO3_active_units = [] };
if(isNil "PO3_CfgLogistics_Loadable") then { PO3_CfgLogistics_Loadable = [] };
if(isNil "PO3_CfgLogistics_Liftable") then { PO3_CfgLogistics_Liftable = [] };
if(isNil "PO3_CfgLogistics_Moveable") then { PO3_CfgLogistics_Moveable = [] };
if(isNil "PO3_CfgRespawn_PreDefinedPositions") then { PO3_CfgRespawn_PreDefinedPositions = [] };
if(isNil "PO3_CfgSpawner_PreDefinedSquads") then { PO3_CfgSpawner_PreDefinedSquads = [] };
if(isNil "PO3_CfgSpawner_PreDefinedVehicles") then { PO3_CfgSpawner_PreDefinedVehicles = [] };
if(isNil "PO3_CfgTasks_PreDefinedTasks") then { PO3_CfgTasks_PreDefinedTasks = [] };
if(isNil "PO3_CfgSpawner_DefaultCrewTypes") then { PO3_CfgSpawner_DefaultCrewTypes = ["B_Soldier_F","O_Soldier_F","I_soldier_F"] };
if(isNil "PO3_param_grpmark_allow") then { PO3_param_grpmark_allow = true };
if(isNil "PO3_param_grpmark_squad_allow") then { PO3_param_grpmark_squad_allow = true };
if(isNil "PO3_param_removeVehicleWrecks") then { PO3_param_removeVehicleWrecks = true };
if(isNil "PO3_param_removevehiclebodies") then { PO3_param_removevehiclebodies = true };
if(isNil "PO3_param_respawn_deathcount") then { PO3_param_respawn_deathcount = 0 };
if(isNil "PO3_param_respawn_securezone") then { PO3_param_respawn_securezone = false };
if(isNil "PO3_param_respawn_rallypoint_allow") then { PO3_param_respawn_rallypoint_allow = false };
if(isNil "PO3_param_respawn_halo_allow") then { PO3_param_respawn_halo_allow = false };
if(isNil "PO3_param_respawn_halo_time") then { PO3_param_respawn_halo_time = 0 };
if(isNil "PO3_param_respawn_playertime") then { PO3_param_respawn_playertime = 10 };
if(isNil "PO3_param_baseProtection") then { PO3_param_baseProtection = false };
if(isNil "PO3_param_ambient_weather_enable") then { PO3_param_ambient_weather_enable = false };
if(isNil "PO3_param_player_fatigue") then { PO3_param_player_fatigue = true };
if(isNil "PO3_param_injury_down") then { PO3_param_injury_down = false };
if(isNil "PO3_respawn_halo_nextAvailable") then { PO3_respawn_halo_nextAvailable = 0 };
if(isNil "PO3_param_ai_easyKill") then { PO3_param_ai_easyKill = false };
if(isNil "PO3_hud_screen_display") then { PO3_hud_screen_display = false };
if(isNil "PO3_hud_worldtoscreen_display") then { PO3_hud_worldtoscreen_display = false };
if(isNil "PO3_hud_cursortoscreen_display") then { PO3_hud_cursortoscreen_display = false };
if(isNil "PO3_resupplyPoints") then { PO3_resupplyPoints = [""] };
if(isNil "PO3_logistics_lifthook_active") then { PO3_logistics_lifthook_active = false };
if(isNil "PO3_logistics_liftCables") then { PO3_logistics_liftCables = [] };
if(isNil "PO3_VAR_HealingStatus") then { PO3_VAR_HealingStatus = false }; //<!-- HACK JOB
if(isNil "PO3_playerIsBusy") then { PO3_playerIsBusy = false };
if(isNil "ST_FTHud_assignedTeam") then { ST_FTHud_assignedTeam = { "NONE" }; };
if(isNil "PO3_ammobox_vas_enabled") then { PO3_ammobox_vas_enabled = false; };
if(isNil "PO3_support_ActiveUAV") then { PO3_support_ActiveUAV = objNull; };
if(isNil "PO3_support_ActiveUGV") then { PO3_support_ActiveUGV = objNull; };
if(isNil "PO3_param_ambient_civs_enable") then { PO3_param_ambient_civs_enable = false; };
if(isNil "PO3_param_ambient_civtraffic_enable") then { PO3_param_ambient_civtraffic_enable = false; };
if(isNil "PO3_param_ambient_gaia_enable") then { PO3_param_ambient_gaia_enable = false; };
if(isNil "PO3_param_hud_requireGlasses") then { PO3_param_hud_requireGlasses = false };
if(isNil "PO3_param_missionskill") then { PO3_param_missionskill = (1/3) };
if(isNil "PO3_param_removeVehicleWrecks") then { PO3_param_removeVehicleWrecks = true };
if(isNil "PO3_param_removevehiclebodies") then { PO3_param_removevehiclebodies = true };
if(isNil "PO3_param_hud_worldtoscreen") then { PO3_param_hud_worldtoscreen = true };
if(isNil "PO3_param_hud_grassview") then { PO3_param_hud_grassview = true };
if(isNil "PO3_param_camera_restrict_3dvdriver") then { PO3_param_camera_restrict_3dvdriver = false };
if(isNil "PO3_param_camera_restrict_3dvcrewmn") then { PO3_param_camera_restrict_3dvcrewmn = false };
if(PO3SRV) then {
	"PO3_brdcst_requestOwnerChange" addPublicVariableEventHandler { (_this select 1) call PO3_fnc_setOwner };
};
if(PO3CLI) then {
	"PO3_brdcst_chat" addPublicVariableEventHandler { (_this select 1) call PO3_fnc_chat; };
	"PO3_brdcst_hint" addPublicVariableEventHandler { (_this select 1) call PO3_fnc_hint; };
	"PO3_brdcst_progressBar" addPublicVariableEventHandler { (_this select 1) call PO3_fnc_progressbar; };
	"PO3_brdcst_tactxt" addPublicVariableEventHandler { (_this select 1) call PO3_fnc_text_tactical; };
	"PO3_pVAR_effectLGHTSTRK" addPublicVariableEventHandler { (_this select 1) call PO3_fnc_effectLightningStrike; };
	"PO3_brdcst_SRVCLI" addPublicVariableEventHandler { PO3_brdcst_serverRequest = true };
	"PO3_pVAR_declaredAmmobox" addPublicVariableEventHandler { (_this select 1) call PO3_fnc_handleAmmobox; };
	"PO3_pVAR_declaredSupplybox" addPublicVariableEventHandler { (_this select 1) call PO3_fnc_handleSupplybox; };
};
"PO3_pVAR_changeDateTime" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_changeTime; };
"PO3_pVAR_skipDateTime" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_skipTime; };
"PO3_pVAR_changeFog" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_setFog; };
"PO3_pVAR_changeOvercast" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_setOvercast; };
"PO3_pVAR_changeWind" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_setWind; };
"PO3_pVAR_changeRain" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_setRain; };
"PO3_pVAR_animationState" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_playActionNow; };
"PO3_pVAR_directionState" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_setDir; };
"PO3_pVAR_resupplyVehicle" addPublicVariableEventHandler { _vehicle = (_this select 1) select 1; if(local _vehicle) then { _vehicle call PO3_fnc_resupplyVehicle }; };
"PO3_pVAR_changeGroupID" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_setGroupID; };
"PO3_pVAR_changeGroupLeader" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_setAsLeader; };
"PO3_pVAR_setVehicleHit" addPublicVariableEventHandler { (_this select 1) spawn PO3_fnc_setVehicleHitLocal; };
PO3_a3 = true;
PO3_reference_object = "Sign_Pointer_F";
PO3_reference_heliempty = "Land_HelipadEmpty_F";
PO3_cfg_ammobox = "B_supplyCrate_F";
