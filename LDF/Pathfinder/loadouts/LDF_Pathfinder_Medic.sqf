player setRank "SERGEANT";								//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL <> kann hier gesetzt werden wenn gewünscht

comment "Exported from Arsenal by Andx";

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
player addWeapon "arifle_SPAR_01_khk_F";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "ACE_acc_pointer_green";
player addPrimaryWeaponItem "optic_Hamr_khk_F";
player addPrimaryWeaponItem "30Rnd_556x45_Stanag";
player addPrimaryWeaponItem "bipod_01_F_khk";
player addWeapon "hgun_Pistol_heavy_01_green_F";
player addHandgunItem "muzzle_snds_acp";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
player forceAddUniform "U_I_E_Uniform_01_sweater_F";
player addVest "V_CarrierRigKBT_01_light_EAF_F";
player addBackpack "B_Carryall_eaf_F";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_salineIV_250";
player addItemToUniform "11Rnd_45ACP_Mag";

for "_i" from 1 to 7 do {player addItemToVest "30Rnd_556x45_Stanag_green";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_XL50";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "NVGoggles_INDEP";
player addItemToVest "ACE_M84";
player addItemToVest "ACE_surgicalKit";

for "_i" from 1 to 30 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 30 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 16 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 24 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 30 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV";};
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_tourniquet";};

player addItemToBackpack "H_HelmetHBK_chops_F";

player addHeadgear "H_Booniehat_eaf";
player addGoggles selectRandom ["","G_Bandanna_oli","BWA3_G_Combat_black","BWA3_G_Combat_clear","BWA3_G_Combat_orange","PBW_shemagh_beige","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

player setVariable ["ace_medical_medicClass", 2, true];

[player,"MedA"] call BIS_fnc_setUnitInsignia;