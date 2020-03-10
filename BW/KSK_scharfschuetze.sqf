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
player addWeapon "BWA3_G29";
player addPrimaryWeaponItem "BWA3_muzzle_snds_Rotex_Monoblock";
player addPrimaryWeaponItem "BWA3_optic_Hensoldt";
player addPrimaryWeaponItem "BWA3_10Rnd_86x70_G29";
player addPrimaryWeaponItem "CUP_bipod_VLTOR_Modpod";
player addWeapon "CUP_hgun_MP7_woodland";
player addHandgunItem "CUP_muzzle_snds_MP7";
player addHandgunItem "CUP_acc_ANPEQ_15_Top_Flashlight_OD_L";
player addHandgunItem "optic_Aco_smg";
player addHandgunItem "CUP_20Rnd_46x30_MP7";

comment "Add containers";
player forceAddUniform "U_B_T_FullGhillie_tna_F";
player addVest "BWA3_Vest_Fleck";

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
for "_i" from 1 to 3 do {player addItemToUniform "CUP_20Rnd_46x30_MP7";};
player addItemToVest "BWA3_optic_NSV80";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 4 do {player addItemToVest "BWA3_10Rnd_86x70_G29";};
for "_i" from 1 to 3 do {player addItemToVest "CUP_40Rnd_46x30_MP7";};
player addHeadgear "BWA3_OpsCore_Fleck_Camera";
player addGoggles "PBW_Balaclava_schwarz";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152_14";
player linkItem "ItemAndroid";
player linkItem "ACE_NVG_Wide";
