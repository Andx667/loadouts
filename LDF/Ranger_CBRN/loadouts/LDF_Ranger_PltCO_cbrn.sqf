player setRank "LIEUTENANT";								//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL <> kann hier gesetzt werden wenn gewünscht

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
player addWeapon "arifle_MSBS65_GL_camo_F";
player addPrimaryWeaponItem "ACE_acc_pointer_green";
player addPrimaryWeaponItem "optic_ico_01_camo_f";
player addPrimaryWeaponItem "30Rnd_65x39_caseless_msbs_mag";
player addWeapon "hgun_Pistol_heavy_01_green_F";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
player forceAddUniform "U_I_E_CBRN_Suit_01_EAF_F";
player addVest "V_CarrierRigKBT_01_light_EAF_F";
player addBackpack "B_RadioBag_01_eaf_F";

comment "Add binoculars";
player addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 4 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
for "_i" from 1 to 6 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToVest "30Rnd_65x39_caseless_msbs_mag";};
for "_i" from 1 to 2 do {player addItemToVest "30Rnd_65x39_caseless_msbs_mag_Tracer";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "NVGoggles_INDEP";
player addItemToVest "ACE_morphine";
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_Flashlight_XL50";
player addItemToVest "ACE_HuntIR_monitor";
player addItemToVest "ACE_IR_Strobe_Item";

for "_i" from 1 to 6 do {player addItemToBackpack "ACE_HuntIR_M203";};

player addHeadgear "H_HelmetHBK_ear_F";
player addGoggles "G_AirPurifyingRespirator_01_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

call  {cutRsc ["RscCBRN_APR_02", "PLAIN", -1, false];}; //Overlay on