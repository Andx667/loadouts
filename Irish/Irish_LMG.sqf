
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
player addWeapon "hlc_rifle_aughbar_B";
player addPrimaryWeaponItem "hlc_30Rnd_556x45_B_AUG";
player addWeapon "hgun_P07_F";
player addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
player forceAddUniform "MNP_CombatUniform_Ireland";
player addVest "MNP_Vest_Ireland";
player addBackpack "B_AssaultPack_wdl_F";

comment "Add items to containers";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "16Rnd_9x21_Mag";};
player addItemToUniform "Chemlight_green";
player addItemToUniform "hlc_30Rnd_556x45_B_AUG";
for "_i" from 1 to 6 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_quikclot";};
player addItemToVest "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToVest "hlc_30Rnd_556x45_T_AUG";};
player addItemToVest "Chemlight_green";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "hlc_30Rnd_556x45_B_AUG";};
player addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 4 do {player addItemToBackpack "hlc_40Rnd_556x45_T_AUG";};
for "_i" from 1 to 4 do {player addItemToBackpack "hlc_40Rnd_556x45_B_AUG";};
player addItemToBackpack "MNP_Helmet_Ireland";

player addHeadgear "MNP_Beret_Ireland";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
