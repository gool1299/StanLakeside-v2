/*
Author: Kerkkoh
Last Edit: 23.12.2016
*/
_phone = "";

for "_i" from 0 to 1 step 0 do {
	_phoneArr = [202];
	for "_x" from 1 to 7 step 1 do {
		_phoneArr pushBack floor (random 10);
	};
	_phone = _phoneArr joinString "";

	if (!((([0, (format["phone_existPhone:%1", _phone])] call ExternalS_fnc_ExtDBquery) select 0) select 0)) exitWith {};
};

_phone
