player setRank "SERGEANT";	

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
player addWeapon "BWA3_G36KA3";
player addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
player addPrimaryWeaponItem "BWA3_optic_ZO4x30_RSAS";
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36";
player addWeapon "BWA3_P8";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

comment "Add containers";
player forceAddUniform "BWA3_Uniform_Fleck";
player addVest "BWA3_Vest_JPC_Radioman_Multi";
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add binoculars";
player addWeapon "ACE_Vector";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "BWA3_30Rnd_556x45_G36";
for "_i" from 1 to 3 do {player addItemToVest "BWA3_15Rnd_9x19_P8";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_IR_Strobe_Item";};
player addItemToVest "ItemAndroid";
player addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_HandFlare_Red";};
for "_i" from 1 to 3 do {player addItemToVest "BWA3_30Rnd_556x45_G36";};
for "_i" from 1 to 3 do {player addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};
player addItemToBackpack "ITC_Land_I_AR2i_Packed";
player addHeadgear "BWA3_OpsCore_Fleck";
player addGoggles "G_Tactical_Black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "I_E_UavTerminal";
player linkItem "NVGoggles_INDEP";
