player setRank "CAPTAIN";								//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL <> kann hier gesetzt werden wenn gewünscht

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

comment "Add containers";
player forceAddUniform "U_I_E_Uniform_01_coveralls_F";
player addVest "V_CarrierRigKBT_01_Olive_F";
player addBackpack "B_RadioBag_01_eaf_F";


comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "50Rnd_570x28_SMG_03";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";

for "_i" from 1 to 6 do {player addItemToVest "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "SmokeShellYellow";
player addItemToVest "SmokeShellPurple";
player addItemToVest "NVGoggles_INDEP";
player addItemToVest "ACE_morphine";

player addHeadgear "H_PilotHelmetHeli_I_E"; 

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemMicroDAGR";

player setVariable ["ACE_IsAdvEngineer", true];