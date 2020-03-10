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
player addWeapon "hgun_Pistol_heavy_01_green_F";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
player forceAddUniform "U_I_E_CBRN_Suit_01_EAF_F";
player addVest "V_SmershVest_01_F";
player addBackpack "B_CombinationUnitRespirator_01_F";

comment "Add items to containers";
for "_i" from 1 to 3 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "11Rnd_45ACP_Mag";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_CableTie";
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_Flashlight_XL50";
player addItemToVest "ACE_packingBandage";
player addItemToVest "ACE_DefusalKit";
player addItemToVest "ACE_SpraypaintRed";
player addItemToVest "ACE_SpraypaintGreen";
player addItemToVest "ACE_M84";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";

player addGoggles "G_RegulatorMask_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ChemicalDetector_01_watch_F";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

(backpackContainer player) setObjectTexture [1, "a3\supplies_f_enoch\bags\data\b_cur_01_co.paa"]; 
(backpackContainer player) setObjectTexture [2, "a3\supplies_f_enoch\bags\data\b_cur_01_co.paa"]; 
call  {cutRsc ["RscCBRN_APR_02", "PLAIN", -1, false];};

player action ["SwitchWeapon", player, player, -1];