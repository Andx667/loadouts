player setRank "PRIVATE",

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
player addWeapon "BWA3_G28";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_PMII_DMR_MicroT1_rear";
player addPrimaryWeaponItem "BWA3_10Rnd_762x51_G28";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Marksman_Fleck";
player addBackpack "BWA3_AssaultPack_Fleck";

comment "Add binoculars";
player addWeapon "BWA3_Vector";

comment "Add items to containers";
for "_i" from 1 to 7 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_KSF1";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "BWA3_15Rnd_9x19_P8";

player addItemToVest "ACE_RangeCard";
player addItemToVest "BWA3_15Rnd_9x19_P8";
player addItemToVest "BWA3_DM51A1";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 4 do {player addItemToVest "BWA3_10Rnd_762x51_G28";};
for "_i" from 1 to 4 do {player addItemToVest "BWA3_10Rnd_762x51_G28_AP";};
player addItemToBackpack "ACE_EntrenchingTool";
player addHeadgear "CUP_H_OpsCore_Covered_Fleck_SF";
player addGoggles selectRandom ["","G_Bandanna_oli","BWA3_G_Combat_black","BWA3_G_Combat_clear","BWA3_G_Combat_orange","PBW_shemagh_beige","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";