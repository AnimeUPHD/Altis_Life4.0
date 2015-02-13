#include <macro.h>
/*
	No Author Needed; it's a few default lines of code
*/
//if(playerSide == civilian) exitWith {};
if(playerSide == west) then 
{



	if((FETCH_CONST(life_coplevel) > 0) && (uniform player == "H_MilCap_dgtl")) then {
	    player setObjectTextureGlobal[0,"textures\poliscap.jpg"];
	};
	if((FETCH_CONST(life_coplevel) > 0) && (uniform player == "U_Rangemaster")) then {
	    player setObjectTextureGlobal[0,"textures\police_shirt.jpg"];
	};
	if((FETCH_CONST(life_coplevel) > 1) && (uniform player == "U_B_CombatUniform_mcam_worn")) then {
	    player setObjectTextureGlobal[0,"textures\cop_uniform.jpg"];
	};

	
	//SAF
	if((FETCH_CONST(life_coplevel) == 8) && (uniform player == "U_B_CombatUniform_mcam_worn")) then {
	    player setObjectTextureGlobal[0,"textures\SAF_Soldat.jpg"];
	};
	if((FETCH_CONST(life_coplevel) == 9) && (uniform player == "U_B_CombatUniform_mcam_worn")) then {
	    player setObjectTextureGlobal[0,"textures\SAF_officer.jpg"];
	};
	if((FETCH_CONST(life_coplevel) == 10) && (uniform player == "U_B_CombatUniform_mcam_worn")) then {
	    player setObjectTextureGlobal[0,"textures\SAF_General.jpg"];
	};
	
};

if(playerSide == independent) then
{
	if (uniform player == "U_Rangemaster") then {
		player setObjectTextureGlobal[0,"textures\medic_uniform.jpg"];
	};
	
	if (uniform player == "U_B_CombatUniform_mcam_worn") then {
		player setObjectTextureGlobal[0,"textures\combat_medic.jpg"];
	};
	
};

