params[["_target", objNull]];

player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
uiSleep 4;

if(isNull _target OR !isPlayer _target) exitWith {};
[] remoteExecCall ["ClientModules_PI_fnc_patdownPlayer", _target];