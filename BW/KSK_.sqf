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
player addPrimaryWeaponItem "CUP_muzzle_snds_SCAR_H";
player addPrimaryWeaponItem "BWA3_acc_LLM01_irlaser";
player addPrimaryWeaponItem "BWA3_optic_PMII_DMR_MicroT1_rear";
player addPrimaryWeaponItem "BWA3_10Rnd_762x51_G28_SD";
player addWeapon "hgun_P07_F";
player addHandgunItem "CUP_muzzle_snds_M9";
player addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
player forceAddUniform "U_B_T_FullGhillie_tna_F";
player addVest "BWA3_Vest_Fleck";
player addBackpack "TFAR_rt1523g_big_bwmod";

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
for "_i" from 1 to 2 do {player addItemToUniform "BWA3_10Rnd_762x51_G28_SD";};
player addItemToVest "BWA3_optic_NSV600";
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 6 do {player addItemToVest "BWA3_10Rnd_762x51_G28_SD";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_10Rnd_762x51_G28_AP";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_WaterBottle";};
player addItemToBackpack "ACE_Tripod";
player addItemToBackpack "ACE_SpottingScope";
player addItemToBackpack "ACE_microDAGR";
player addItemToBackpack "ACE_Kestrel4500";
player addItemToBackpack "ACE_ATragMX";
player addHeadgear "BWA3_OpsCore_Fleck_Camera";
player addGoggles "PBW_Balaclava_schwarz";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152_14";
player linkItem "ItemAndroid";
player linkItem "ACE_NVG_Wide";
