comment "[!] UNIT MUST BE LOCAL [!]";
if (!local player) exitWith {};

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "BWA3_G38";
player addPrimaryWeaponItem "BWA3_muzzle_snds_QDSS";
player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_MicroT2";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36_SD";
player addWeapon "hgun_P07_F";
player addHandgunItem "CUP_muzzle_snds_M9";
player addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
player forceAddUniform "PBW_Uniform4K_fleck";
player addVest "BWA3_Vest_Medic_Fleck";
player addBackpack "BWA3_Kitbag_Fleck_Medic";

comment "Add binoculars";
player addWeapon "ACE_Vector";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "16Rnd_9x21_Mag";
player addItemToVest "BWA3_optic_NSV600";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 6 do {player addItemToVest "BWA3_30Rnd_556x45_G36_SD";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_WaterBottle";};
for "_i" from 1 to 30 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bodyBag";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 30 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV";};
player addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_tourniquet";};
player addHeadgear "BWA3_OpsCore_Fleck_Camera";
player addGoggles "PBW_Balaclava_schwarz";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152_14";
player linkItem "ItemMicroDAGR";
player linkItem "ACE_NVG_Wide";

comment "Set identity";
[player,"MedB"] call BIS_fnc_setUnitInsignia;

player setVariable ["ace_medical_medicClass", 2, true];
