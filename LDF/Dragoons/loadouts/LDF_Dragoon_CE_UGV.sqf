player setRank "CORPORAL";

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
player addWeapon "arifle_MSBS65_F";
player addPrimaryWeaponItem "ACE_acc_pointer_green";
player addPrimaryWeaponItem "optic_ico_01_f";
player addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
player addWeapon "hgun_Pistol_heavy_01_green_F";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "11Rnd_45ACP_Mag";
player addHandgunItem "optic_MRD_black";

comment "Add containers";
player forceAddUniform "U_I_E_Uniform_01_F";
player addVest "V_CarrierRigKBT_01_heavy_EAF_F";
player addBackpack "I_E_UGV_02_Demining_backpack_F";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 6 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
player addItemToUniform "11Rnd_45ACP_Mag";

for "_i" from 1 to 3 do {player addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
for "_i" from 1 to 3 do {player addItemToVest "30Rnd_65x39_caseless_msbs_mag_Tracer";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "ACE_DefusalKit";
player addItemToVest "ACE_Clacker";
player addItemToVest "ACE_M26_Clacker";
player addItemToVest "ItemMicroDAGR";
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "NVGoggles_INDEP";

player addHeadgear "H_HelmetHBK_ear_F";
player addGoggles selectRandom ["","G_Bandanna_oli","BWA3_G_Combat_black","BWA3_G_Combat_clear","BWA3_G_Combat_orange","PBW_shemagh_beige","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "I_E_UavTerminal";

player setVariable ["ACE_isEOD", true];
player setVariable ["ACE_IsEngineer", true];

cutText ["", "PLAIN"]; //IGUI display off

[player, "USP_PATCH_ID_EOD_GRN"] call BIS_fnc_setUnitInsignia;