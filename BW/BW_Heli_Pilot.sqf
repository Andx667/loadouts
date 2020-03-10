player setRank "MAJOR";
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
player forceAddUniform "BWA3_Uniform_Helipilot";
player addVest "pbw_koppel_grpfhr";
player addBackpack "TFAR_rt1523g_bwmod";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "50Rnd_570x28_SMG_03";};
for "_i" from 1 to 6 do {player addItemToVest "ACE_fieldDressing";};
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_morphine";
player addItemToVest "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToVest "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellYellow";
player addItemToVest "SmokeShellPurple";
player addHeadgear "H_PilotHelmetHeli_B";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemMicroDAGR";


player setVariable ["ACE_IsAdvEngineer", true];
