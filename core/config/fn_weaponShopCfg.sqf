#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do {
	case "cop_basic": {
		switch(true) do {
			case (playerSide != west): {"You are not a cop!"};
			default {
				["Altis Cop Shop",
					[
						["SMG_02_F","Rubber SMG",15000], 
                        ["30Rnd_9x21_Mag","Rubber SMG Ammo",500],
						["hgun_P07_snds_F","Rubber Pistol",2000],
						["16Rnd_9x21_Mag","Rubber Pistol Ammo",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,500],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "med_basic": {
		switch (true) do {
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MK20C_plain_F",nil,35000],
						["30Rnd_556x45_Stanag",nil,500],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,15000],
						["optic_Arco",nil,1500],
						["muzzle_snds_H",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,800],
						["30Rnd_9x21_Mag",nil,500]
					]
				];
			};
		};
	};
	
	case "cop_Corporal":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a cop!"};
            case (FETCH_CONST(life_coplevel) < 3): {"You are not at a Corporal rank!"};
            default
            {
                ["Altis Corporal Shop",
                    [
                        ["arifle_MX_F",nil,90000],                                                                   
                        ["acc_flashlight",nil,750],
						["HandGrenade_Stone","Flashbang",500],
                        ["optic_Holosight",nil,1200],
                        ["optic_Arco",nil,1500],
                        ["optic_Holosight_smg",nil,1200],
                        ["muzzle_snds_H",nil,2750],
                        ["muzzle_snds_M",nil,2500],
                        ["30Rnd_65x39_caseless_mag",nil,950]					
                    ]
                ];
            };
        };
    };

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 4): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["hgun_ACPC2_F",nil,7500],
						["HandGrenade_Stone","Flashbang",500],
						["arifle_MXC_F",nil,90000],
						["optic_Arco",nil,1500],
						["optic_SOS",nil,5000], 
						["muzzle_snds_H",nil,25750],
						["30Rnd_65x39_caseless_mag",nil,330],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
					]
				];
			};
		};
	};
	
	
    case "cop_Lieutenant":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a cop!"};
            case (FETCH_CONST(life_coplevel) < 5): {"You are not at a Lieutenant rank!"};
            default
            {
                ["Altis Lieutenant Shop",
                    [                     
                        ["arifle_MXM_F",nil,125000],                        
                        ["arifle_MXC_F",nil,90000],
                        ["acc_flashlight",nil,750],  
                        ["optic_SOS",nil,5000], 						
                        ["muzzle_snds_B",nil,3000],
                        ["30Rnd_65x39_caseless_mag",nil,950],                        
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,800],                        
                        ["SmokeShellBlue",nil,2000]                                             
                    ]
                ];
            };
        };
    };
	
	  case "cop_Captain":
    {
        switch(true) do
        {
            case (playerSide != west): {"You are not a cop!"};
            case (FETCH_CONST(life_coplevel) < 6): {"You are not at a Captain rank!"};
            default
            {
                ["Altis Captain Shop",
                    [
                        ["arifle_MX_SW_F",nil,175000],                                    
                        ["acc_flashlight",nil,750],                            
                        ["muzzle_snds_H",nil,2750],                                             
                        ["100Rnd_65x39_caseless_mag",nil,2000],
                        ["100Rnd_65x39_caseless_mag_Tracer",nil,1600],
                        ["SmokeShellBlue",nil,2000]                                             
                    ]
                ];
            };
        };
    };
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (FETCH_CONST(life_rebellevel) == 0): {"You are not a Whitelisted Rebel!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
    case "donator":
	{
		switch(true) do
		{
			case (FETCH_CONST(life_donator) == 0): {"You are not a donator!"};
			case (FETCH_CONST(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,5000],
						["hgun_PDW2000_F",nil,50500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,250],
						["itemgps",nil,50],
						["V_Rangemaster_belt",nil,4900],			
						["16Rnd_9x21_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,1000]
					]
				];
			};

			case (FETCH_CONST(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,5000],
						["hgun_PDW2000_F",nil,50500],
						["arifle_MK20C_plain_F",nil,170000],
						["optic_ACO_grn_smg",nil,750],
						["NVGoggles",nil,2000],
						["ToolKit",nil,250],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000]
						
					]
				];
			};

			case (FETCH_CONST(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,5000],
						["hgun_PDW2000_F",nil,50500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,170000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,20000],
						["NVGoggles",nil,2000],
						["ToolKit",nil,250],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,1000],
						["11Rnd_45ACP_Mag",nil,500],
						["30Rnd_556x45_Stanag",nil,1000]
					]
				];
			};
		};
	};	
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,9500],
						["hgun_Pistol_heavy_02_F",nil,15850],
						["hgun_ACPC2_F",nil,17500],
						["hgun_PDW2000_F",nil,80000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,500],
						["9Rnd_45ACP_Mag",nil,500],
						["6Rnd_45ACP_Cylinder",nil,500],
						["30Rnd_9x21_Mag",nil,1000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,9500],
						["hgun_Pistol_heavy_02_F",nil,15850],
						["hgun_ACPC2_F",nil,17500],
						["hgun_PDW2000_F",nil,80000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,500],
						["9Rnd_45ACP_Mag",nil,500],
						["6Rnd_45ACP_Cylinder",nil,500],
						["30Rnd_9x21_Mag",nil,1000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
