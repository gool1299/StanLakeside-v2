/*
Author: Kerkkoh
First Edit: 23.11.2015

Additional Information:
Adding modules, creating modules -> Check README.md
Module init function adding syntax: ClientModule_fnc_initYourModule
Check out RPFramework's README.md or module's Readme file for info on module installation.
*/

_cModules = [
	//"ClientModules_Example_fnc_initExample",
	//"ClientModules_Ticketing_fnc_initTicketing",
	"ClientModules_Fishing_fnc_initFishing",
	"ClientModules_Farming_fnc_initFarming",
	"ClientModules_ShopSystem_fnc_initShopSystem",
	"ClientModules_BasicMedical_fnc_initBasicMedical",
	"ClientModules_ATM_fnc_initATM",
	"ClientModules_ATM_Mafia_fnc_initATM_Mafia",
	"ClientModules_Respawn_fnc_initRespawn",
	"ClientModules_methLab_fnc_initMethLab",
	"ClientModules_StoreSystem_fnc_initStoreSystem",
	"ClientModules_Delivery_fnc_initDeliverySystem",
	//"ClientModules_Jail_fnc_initJail",
	"ClientModules_Taser_fnc_initTaser",
	"ClientModules_PlayerNames_fnc_initPlayerNames",
	"ClientModules_Phone_fnc_initPhone",
	"ClientModules_Housing_fnc_initHousing",
	"ClientModules_Garage_fnc_initGarage",
	"ClientModules_Mining_fnc_initMining",
	"ClientModules_Intox_fnc_initIntox",
	"ClientModules_SLPD_fnc_initSLPD",
	"ClientModules_Paycheck_fnc_initPaycheck",
	"ClientModules_Notification_fnc_initNotification",
	"ClientModules_UsableItems_fnc_initUsableItems",
	"ClientModules_Mayor_fnc_initMayor",
	"ClientModules_AdminPanel_fnc_initAdminPanel" //ma byc na samym dole to
];

_cModulesCount = count _cModules;
for [{_i = 0}, {_i < _cModulesCount}, {_i = _i + 1}] do {
	_cModule = _cModules select _i;
	[] spawn (call compile _cModule);
};
/*{
	[] spawn (call compile _x);
}forEach _cModules;
*/