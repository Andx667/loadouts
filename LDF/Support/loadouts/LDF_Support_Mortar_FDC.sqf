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
player addWeapon "SMG_03C_black";
player addPrimaryWeaponItem "50Rnd_570x28_SMG_03";
player addWeapon "hgun_Pistol_heavy_01_green_F";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
player forceAddUniform "U_I_E_Uniform_01_shortsleeve_F";
player addVest "V_CarrierRigKBT_01_light_EAF_F";
player addBackpack "B_RadioBag_01_eaf_F";

comment "Add binoculars";
player addWeapon "ACE_VectorDay";

comment "Add items to containers";
for "_i" from 1 to 6 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "11Rnd_45ACP_Mag";
player addItemToUniform "50Rnd_570x28_SMG_03";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_morphine";

for "_i" from 1 to 2 do {player addItemToVest "50Rnd_570x28_SMG_03";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "NVGoggles_INDEP";
player addItemToVest "ACE_RangeTable_82mm";
player addItemtoVest "ACE_microDAGR";

player addHeadgear "H_HelmetHBK_chops_F";
player addGoggles "G_Tactical_Clear";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

cutText ["", "PLAIN"]; //IGUI display off