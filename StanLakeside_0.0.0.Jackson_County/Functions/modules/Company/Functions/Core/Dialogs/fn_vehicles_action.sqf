disableSerialization;
private["_display","_listbox_vehicles","_edit_access_level","_text_vehicle_preview"];
if(!dialog) exitWith {};
params[["_type",""]];
_display = findDisplay 666017;
_listbox_vehicles = _display displayCtrl 1500;
_edit_access_level = _display displayCtrl 1400;
_text_vehicle_preview = _display displayCtrl 1000;
if(_type == "vehiclesLBselect") exitWith {
      private["_data","_index","_veh_id","_company_id","_license","_color","_clasname","_material","_fuel","_status","_Vtype","_access_level","_enginePower","_maxSpeed","_name"];
      _index = lbCurSel 1500;
      if(_index == -1) exitWith {};
      _data = call compile(lbData [1500, _index]);
      _veh_id = _data select 0;
      _clasname = _data select 1;
      _company_id = _data select 2;
      _license = _data select 3;
      _color = _data select 5;
      _material = _data select 6;
      _fuel = format["%1%2",(_data select 10) * 100,"%"];
      _status = _data select 11;
      _Vtype = _data select 12;
      _name = getText(configFile >> "CfgVehicles" >> _clasname >> "displayName");
      _maxSpeed = getNumber(configFile >> "CfgVehicles" >> _clasname >> "maxSpeed");
      _enginePower = getNumber(configFile >> "CfgVehicles" >> _clasname >> "enginePower") * 1.341;
      _access_level = _data select 13;
      _edit_access_level ctrlSetText format["%1", _access_level];
      _text_vehicle_preview ctrlSetText format[localize "STR_RPF_MODULES_COMPANY_VEHICLES_INFO", _veh_id, _access_level, _Vtype, _name, _color, _material, _license, _fuel, _enginePower, _maxSpeed];
};
if(_type == "send") exitWith {
      private["_data","_index","_veh_id","_level"];
      _level = parseNumber(ctrlText 1400);
      _index = lbCurSel 1500;
      if(_index == -1 || _level < 0) exitWith {};
      _data = call compile(lbData [1500, _index]);
      _veh_id = _data select 0;
      closeDialog 0;
      ["access_level",[_veh_id,_level]] remoteExec ["ServerModules_Company_fnc_garageUpdate", 2];
};