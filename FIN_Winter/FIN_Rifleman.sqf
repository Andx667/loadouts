
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
player addWeapon "hlc_rifle_ACR68_Carb_black";
player addPrimaryWeaponItem "muzzle_snds_65_TI_blk_F";
player addPrimaryWeaponItem "optic_Arco_AK_blk_F";
player addPrimaryWeaponItem "hlc_30rnd_68x43_FMJ";
player addPrimaryWeaponItem "bipod_01_F_blk";
player addWeapon "hgun_Rook40_F";
player addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
player forceAddUniform "MNP_CombatUniform_Finarctic_A";
player addVest "CUP_V_PMC_CIRAS_Winter_TL";
player addBackpack "MNP_B_RUW_FP";

comment "Add items to containers";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 12 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {player addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 5 do {player addItemToVest "hlc_30rnd_68x43_MFMJ";};
for "_i" from 1 to 6 do {player addItemToBackpack "hlc_30rnd_68x43_MFMJ";};
for "_i" from 1 to 3 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
player addHeadgear "MNP_Helmet_FIN_A";

player addGoggles selectRandom ["CUP_PMC_Facewrap_Winter","CUP_Balaclava_whiteBerez","CFP_Balaclava_white_2","SP_Balaclava_white","CUP_G_ESS_KHK_Facewrap_White"]

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";