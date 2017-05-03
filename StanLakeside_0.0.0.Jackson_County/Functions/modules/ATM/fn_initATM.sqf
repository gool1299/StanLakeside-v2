/*
Author: Kerkkoh
First Edit: 7.9.2016

Type: Default Module
*/	
_menuItems = [
	[
		["(typeof CurrentCursorTarget IN [""Land_Centrelink"",""Land_CommonwealthBank"",""Land_Bank_DED_House_01_F"", ""Land_Atm_01_F""] || str CurrentCursorTarget find ""mcl_atm"" > -1)"],
		["Open ATM", "[] call ClientModules_ATM_fnc_openATM",3]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;

ATM_inited = true;
diag_log "ATM Module inited";