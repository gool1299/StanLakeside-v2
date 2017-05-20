params["_timeCounter"];

if ("sl_VaultBomb" in magazines player) then {

	if (typeOf cursorObject isEqualTo "Land_CommonwealthBank") then {
		_bank = nearestObject [player, "Land_CommonwealthBank"];
		player removeItem "sl_VaultBomb";

		if(isNil "RPF_VaultDoor") then { RPF_VaultDoor = false; };
		if (RPF_VaultDoor) exitWith {};
		RPF_VaultDoor = true;

		hint parsetext "<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>NASŁUCHUJĘ DZIAŁANIE MECHANIZMU ZAMKA</t><br/> ZAMEK ZOSTAŁ NARUSZONY!";
		playSound3D ["sl_client\sounds\bankAlarm.ogg", _bank, false, getPosASL _bank, 2, 1, 150]; 

		_timeCounter = 0;
		player playmove "vvv_anim_lockpick";

		for "_i" from 0 to 1 step 0 do {
			if(animationstate player != "vvv_anim_lockpick") then { player playmove "vvv_anim_lockpick"; };
			_timeCounter = _timeCounter + 1;
			_random = random(60) + 65;
			if(_timeCounter > _random) exitwith {};
			uisleep 1;
			hint parsetext format["<img size='1' image='CG_Jobs\icons\info.paa'/> <t color='#FFCC00'><t size='0.75'>ODGADUJĘ SZYFR ZAMKA</t><br/> %1 z %2 sekund.",_timeCounter, _random];
		};
		_bank animate ["Vault_Door", 1];

		RPF_VaultDoor = false;
	};
} else {

};