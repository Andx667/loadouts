player setRank "CAPTAIN";

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
player addWeapon "BWA3_G36A3_AG40";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36_AP";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_Leader_Fleck";
player addBackpack "TFAR_rt1523g_big_bwmod";

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
player addItemToVest "ACE_HuntIR_monitor";
for "_i" from 1 to 3 do {player addItemToVest "BWA3_30Rnd_556x45_G36_AP";};
for "_i" from 1 to 3 do {player addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};
player addItemToVest "BWA3_15Rnd_9x19_P8";
player addItemToVest "BWA3_DM51A1";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM32_Green";};
for "_i" from 1 to 2 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_HuntIR_M203";};
player addHeadgear "CUP_H_OpsCore_Covered_Fleck_SF";
player addGoggles selectRandom ["","G_Bandanna_oli","BWA3_G_Combat_black","BWA3_G_Combat_clear","BWA3_G_Combat_orange","PBW_shemagh_beige","PBW_shemagh_gruen"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";