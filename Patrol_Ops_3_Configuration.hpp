	// ==== PO3 Side Configuration =============================================================================
	PO3_side_1 = [ west, "BLU_F", "NATO" ];		// Player Side
	PO3_side_2 = [ east, "OPF_F", "CSAT" ];		// Player Side 2 (TvT)
	PO3_side_3 = [ east, "OPF_F", "CSAT" ];		// AI Side (Tasks and Ambien+t)

// ==== PO3 Enemy Unit Groups ==============================================================================
PO3_preDefinedEnemySquads = [
/* NATO Forces
	 ["EN_GroupForce_0", ["B_Soldier_TL_F","B_Soldier_GL_F","B_Soldier_AR_F","B_Soldier_AAR_F"]		// Fireteam 0
	,["EN_GroupForce_1", ["B_Soldier_TL_F","B_Soldier_GL_F","B_Soldier_AT_F","B_Soldier_AAT_F"]		// Fireteam 1
	,["EN_GroupForce_2", ["B_Soldier_TL_F","B_Soldier_GL_F","B_Soldier_AT_F","B_Soldier_LAT_F"]		// Fireteam 2
	,["EN_GroupForce_3", ["B_Soldier_TL_F","B_Soldier_GL_F","B_Soldier_AA_F","B_Soldier_AAA_F"]		// Fireteam 3
	,["EN_GroupForce_4", ["B_Soldier_TL_F","B_Soldier_F","B_Soldier_AR_F","B_Soldier_AAR_F"]		// Fireteam 4
	,["EN_GroupForce_5", ["B_Soldier_TL_F","B_Soldier_F","B_Soldier_AT_F","B_Soldier_AAT_F"]		// Fireteam 5
	,["EN_GroupForce_6", ["B_Soldier_TL_F","B_Soldier_F","B_Soldier_AT_F","B_soldier_exp_F"]		// Fireteam 6
	,["EN_GroupForce_7", ["B_Soldier_TL_F","B_Soldier_F","B_Soldier_AA_F","B_Soldier_AAA_F"]		// Fireteam 7
	,["EN_GroupForce_8", ["B_Soldier_TL_F","B_Soldier_F","B_Soldier_GL_F","B_Soldier_A_F"]			// Fireteam 8
	,["EN_GroupForce_9", ["B_Soldier_TL_F","B_Soldier_F","B_Soldier_A_F","B_Soldier_LAT_F"]			// Fireteam 9
	,["EN_PatrolGroup0", ["B_recon_TL_F","B_recon_F","B_recon_LAT_F","B_recon_M_F"] ]				// Fireteam Recon 0
	,["EN_PatrolGroup1", ["B_recon_TL_F","B_recon_F","B_recon_LAT_F","B_recon_medic_F"] ]			// Fireteam Recon 1
	,["EN_PatrolGroup2", ["B_recon_TL_F","B_recon_JTAC_F","B_recon_M_F","B_recon_exp_F"] ]			// Fireteam Recon 2
	,["EN_PatrolGroup3", ["B_recon_TL_F","B_recon_JTAC_F","B_recon_LAT_F","B_recon_exp_F"] ]		// Fireteam Recon 3
	,["EN_PatrolGroup4", ["B_recon_TL_F","B_recon_JTAC_F","B_recon_LAT_F","B_recon_medic_F"] ]		// Fireteam Recon 4
	,["EN_Squad_Divers", ["B_diver_TL_F","B_diver_F","B_diver_F","B_diver_exp_F"] ]					// Diver Team 0
	,["EN_Squad_Sniper", ["B_sniper_F","B_spotter_F"] ]												// Sniper Team 0
*/
/* CSAT Forces */
	 ["EN_GroupForce_0", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_AAR_F"]]	// Fireteam 0
	,["EN_GroupForce_1", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AT_F","I_Soldier_AAT_F"]]	// Fireteam 1
	,["EN_GroupForce_2", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AT_F","I_Soldier_LAT_F"]]	// Fireteam 2
	,["EN_GroupForce_3", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AA_F","I_Soldier_AAA_F"]]	// Fireteam 3
	,["EN_GroupForce_4", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_AAR_F"]]		// Fireteam 4
	,["EN_GroupForce_5", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AT_F","I_Soldier_AAT_F"]]		// Fireteam 5
	,["EN_GroupForce_6", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AT_F","I_soldier_exp_F"]]		// Fireteam 6
	,["EN_GroupForce_7", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AA_F","I_Soldier_AAA_F"]]		// Fireteam 7
	,["EN_GroupForce_8", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_GL_F","I_Soldier_A_F"]]			// Fireteam 8
	,["EN_GroupForce_9", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_A_F","I_Soldier_LAT_F"]]		// Fireteam 9
	,["EN_PatrolGroup0", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_LAT_F","I_Soldier_M_F"]]		// Fireteam Recon 0
	,["EN_PatrolGroup1", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_LAT_F","I_medic_F"]]			// Fireteam Recon 1
	,["EN_PatrolGroup2", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_M_F","I_Soldier_exp_F"]]		// Fireteam Recon 2
	,["EN_PatrolGroup3", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_LAT_F","I_Soldier_exp_F"]]	// Fireteam Recon 3
	,["EN_PatrolGroup4", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_LAT_F","I_medic_F"]]			// Fireteam Recon 4
	,["EN_Squad_Divers", ["I_diver_TL_F","I_diver_F","I_diver_F","I_diver_exp_F"]]					// Diver Team 0
	,["EN_Squad_Sniper", ["I_sniper_F","I_spotter_F"]]												// Sniper Team 0
/* AAF Forces
	 ["EN_GroupForce_0", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_AAR_F"]		// Fireteam 0
	,["EN_GroupForce_1", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AT_F","I_Soldier_AAT_F"]		// Fireteam 1
	,["EN_GroupForce_2", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AT_F","I_Soldier_LAT_F"]		// Fireteam 2
	,["EN_GroupForce_3", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AA_F","I_Soldier_AAA_F"]		// Fireteam 3
	,["EN_GroupForce_4", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AR_F","I_Soldier_AAR_F"]		// Fireteam 4
	,["EN_GroupForce_5", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AT_F","I_Soldier_AAT_F"]		// Fireteam 5
	,["EN_GroupForce_6", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AT_F","I_soldier_exp_F"]		// Fireteam 6
	,["EN_GroupForce_7", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_AA_F","I_Soldier_AAA_F"]		// Fireteam 7
	,["EN_GroupForce_8", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_GL_F","I_Soldier_A_F"]			// Fireteam 8
	,["EN_GroupForce_9", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_A_F","I_Soldier_LAT_F"]			// Fireteam 9
	,["EN_PatrolGroup0", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_LAT_F","I_Soldier_M_F"] ]		// Fireteam Recon 0
	,["EN_PatrolGroup1", ["I_Soldier_TL_F","I_Soldier_F","I_Soldier_LAT_F","I_medic_F"] ]			// Fireteam Recon 1
	,["EN_PatrolGroup2", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_M_F","I_Soldier_exp_F"] ]	// Fireteam Recon 2
	,["EN_PatrolGroup3", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_LAT_F","I_Soldier_exp_F"] ]	// Fireteam Recon 3
	,["EN_PatrolGroup4", ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_LAT_F","I_medic_F"] ]		// Fireteam Recon 4
	,["EN_Squad_Divers", ["I_diver_TL_F","I_diver_F","I_diver_F","I_diver_exp_F"] ]					// Diver Team 0
	,["EN_Squad_Sniper", ["I_sniper_F","I_spotter_F"] ]												// Sniper Team 0
*/
];
PO3_CfgSpawner_PreDefinedSquads = PO3_preDefinedEnemySquads;

// ==== PO3 Friendly Unit Groups ===========================================================================
PO3_preDefinedFriendlySquads = [
	 ["FR_GroupRescuePilots",	["B_Helipilot_F","B_Helipilot_F"] ]
	,["FR_GroupRescueCrew",		["B_Helipilot_F"] ]
	,["FR_GroupRescueCargo",	["O_Soldier_TL_F","O_Soldier_AR_F","O_Soldier_AT_F","O_Soldier_AA_F","O_soldier_exp_F","O_medic_F"] ]
];
PO3_CfgSpawner_PreDefinedSquads = PO3_CfgSpawner_PreDefinedSquads + PO3_preDefinedFriendlySquads;

// ==== PO3 Enemy vehicle Spawner ==========================================================================
PO3_preDefinedEnemyVehicles = [
/* NATO Forces */
/* 0 - Anti Air Vehicles 		 ["B_APC_Tracked_01_AA_F"] */
/* 1 - Attack Helos 		,["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F"] */
/* 2 - Attack Planes 		,["B_UAV_02_CAS_F","B_UAV_02_F"] */
/* 3 - Heavy Vehicles 		,["B_MBT_01_cannon_F","B_MBT_01_TUSK_F"] */
/* 4 - Light Vehicles 		,["B_MRAP_01_hmg_F","B_MRAP_01_gmg_F"] */
/* 5 - Medium Vehicles 		,["B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F"] */
/* 6 - Mobile Artillery 	,["B_MBT_01_arty_F","B_MBT_01_mlrs_F"] */
/* 7 - Transport Helos 		,["B_Heli_Light_01_F","B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F"] */
/* 8 - Transport Planes 	,[] */
/* 9 - Transport Trucks 	,["B_Truck_01_covered_F","B_Truck_01_transport_F"] */
/*10 - Static Defence		,["B_GMG_01_high_F","B_HMG_01_high_F","B_static_AA_F","B_static_AT_F","B_Mortar_01_F"] */
/*11 - Boats 				,["B_Boat_Armed_01_minigun_F"] */
/*12 - UAV 					,["B_UAV_02_CAS_F","B_UAV_02_F"] */
/*13 - UGV					,["B_UGV_01_F","B_UGV_01_rcws_F"] */
/*14 - Support 				,["B_APC_Tracked_01_CRV_F","B_Truck_01_ammo_F","B_Truck_01_fuel_F"] */
/*15 - Submarines 			,["B_SDV_01_F"] */

/* CSAT Forces */
/* 0 - Anti Air Vehicles */	 [] 
/* 1 - Attack Helos	*/		,["I_Heli_light_03_F","I_Plane_Fighter_03_CAS_F"]
/* 2 - Attack Planes */		,["I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F"] 
/* 3 - Heavy Vehicles */	,["I_MBT_03_cannon_F","I_APC_tracked_03_cannon_F","I_MBT_03_cannon_F"] 
/* 4 - Light Vehicles */	,["I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_Truck_02_covered_F"] 
/* 5 - Medium Vehicles */	,["I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F"] 
/* 6 - Mobile Artillery */	,["O_MBT_02_arty_F"] 
/* 7 - Transport Helos */	,["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F"] 
/* 8 - Transport Planes */	,[] 
/* 9 - Transport Trucks */	,["I_Truck_02_covered_F","I_Truck_02_transport_F"]
/*10 - Static Defence */	,["I_GMG_01_high_F","I_HMG_01_high_F","I_static_AA_F","I_static_AT_F","I_Mortar_01_F"] 
/*11 - Boats */				,["I_Boat_Armed_01_minigun_F"] 
/*12 - UAV */ 				,["I_UAV_02_CAS_F","I_UAV_02_F"] 
/*13 - UGV */ 				,["I_UGV_01_F","I_UGV_01_rcws_F"] 
/*14 - Support */			,["I_Truck_02_ammo_F","I_Truck_02_fuel_F"] 
/*15 - Submarines */ 		,["I_SDV_01_F"]

/* AAF Forces */
/* 0 - Anti Air Vehicles 	 [] 
/* 1 - Attack Helos			,["I_Heli_light_03_F"]
/* 2 - Attack Planes 		,["I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F"] 
/* 3 - Heavy Vehicles 		,["I_MBT_03_cannon_F","I_APC_tracked_03_cannon_F"] 
/* 4 - Light Vehicles 		,["I_MRAP_03_hmg_F","I_MRAP_03_gmg_F"] 
/* 5 - Medium Vehicles 		,["I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F"] 
/* 6 - Mobile Artillery 	,[] 
/* 7 - Transport Helos 		,["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F"] 
/* 8 - Transport Planes 	,[] 
/* 9 - Transport Trucks 	,["I_Truck_02_covered_F","I_Truck_02_transport_F"]
/*10 - Static Defence 		,["I_GMG_01_high_F","I_HMG_01_high_F","I_static_AA_F","I_static_AT_F","I_Mortar_01_F"] 
/*11 - Boats 				,["I_Boat_Armed_01_minigun_F"] 
/*12 - UAV  				,["I_UAV_02_CAS_F","I_UAV_02_F"] 
/*13 - UGV  				,["I_UGV_01_F","I_UGV_01_rcws_F"] 
/*14 - Support 				,["I_Truck_02_ammo_F","I_Truck_02_fuel_F"] 
/*15 - Submarines  			,["I_SDV_01_F"] */
];
PO3_CfgSpawner_PreDefinedVehicles = PO3_preDefinedEnemyVehicles;

// ==== PO3 Task Specific Entities (west/east/resistance) ==================================================
PO3_target_officer_types = ["B_officer_F","O_officer_F","I_officer_F"];
PO3_target_cache_types = ["B_supplyCrate_F","O_supplyCrate_F","I_supplyCrate_F"];
PO3_target_tower_types = [ "Land_TTowerBig_2_F" , "Land_Communication_F" ];
PO3_target_intel_types = ["Land_File1_F","Land_FilePhotos_F","Land_File2_F","Land_HandyCam_F","Land_Laptop_F","Land_Laptop_unfolded_F","Land_MobilePhone_smart_F","Land_SatellitePhone_F","Land_Photos_V2_F"];
PO3_rescue_heliTypes = ["B_Heli_Attack_01_F","I_Heli_Transport_02_F","B_Heli_Light_01_F","B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F","B_Heli_Light_01_armed_F"];

// = Pre-Defining Logistics Configuration ======================================================
// Vehicle CAPACITY that can TOW, LIFT or LOAD
PO3_CfgLogistics_Loadable = [
	 ["Cargo_base_F",15200]
	,["B_Truck_01_mover_F",0]
	,["B_Truck_01_transport_F",64000]
	,["O_Truck_02_transport_F",64000]
	,["I_Truck_02_transport_F",64000]
	,["Car_F",250]
	,["Heli_Transport_01_base_F",1980]
	,["Heli_Transport_02_base_F",4620]
	,["Helicopter_Base_H",422]
];

// Liftable/Loadable Object Weight
PO3_CfgLogistics_Liftable = [
	 ["Cargo_base_F",4280]
	,["B_supplyCrate_F",400]
	,["Quadbike_01_base_F",264]
	,["B_Truck_01_transport_F",18300]
	,["O_Truck_02_transport_F",18300]
	,["I_Truck_02_transport_F",18300]
	,["Wheeled_APC_F",16329]
	,["Car_F",1900]
	,["Tank",64000]
	,["Ship_F",1200]
	,["Heli_Light_01_armed_base_F",1990]
	,["Heli_Light_01_base_F",722]
	,["Heli_Light_02_base_F",3291]
	,["Helicopter_Base_F",8291]
	,["UAV_02_base_F",4980]
];

PO3_CfgLogistics_TowVehicles = [
	 ["B_Truck_01_mover_F",0]
	,["B_Truck_01_transport_F", 10000]
	,["O_Truck_02_transport_F", 10000]
	,["I_Truck_02_transport_F", 10000]
	,["B_APC_Tracked_01_CRV_F", 64000]
	,["Car_F", 250]
];
PO3_CfgLogistics_Towable = [
	 ["B_Truck_01_mover_F",0]
	,["B_Truck_01_transport_F", 10000]
	,["O_Truck_02_transport_F", 10000]
	,["I_Truck_02_transport_F", 10000]
	,["Car", 2000]
	,["Tank_F", 64000]
	,["Air", 8291]
];
// Draggable Weight
PO3_CfgLogistics_Moveable = [
	 ["Items_base_F",5]
	,["B_supplyCrate_F",5]
];
