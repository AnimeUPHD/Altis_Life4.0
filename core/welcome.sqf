_onScreenTime = 8;
 
sleep 1; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome to Secretone!"; //In red
_role1names = ["http://secretone.net"]; //In white
_role2 = "Read the rules!";
_role2names = ["All rules can be found on the forums!"]; 
_role3 = "Please Report";
_role3names = ["Any in-game issues, bugs, or problems to the admins on Teamspeak!"];
_role5 = "Evidence";
_role5names = ["RDM and Compensation cases requires video evidence, providing no such evidence will close the case!!"]; 
_role7 = "Basic Controls";
_role7names = ["Windows Key - Interact/Gather<br/>Y Key - Player Menu <br/>T Key - Vehicle Trunk <br/> SHIFT+H - Holster <br/> CTRL+H - Unholster <br/> SHIFT+< -  Surrender <br/> SPACEBAR - Jump"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='.70' color='#FF9600' align='right'>%1<br/></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.60' color='#ffffff' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role5, _role5names],
[_role7, _role7names]
];