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
player addWeapon "CUP_sgun_M1014_Entry";
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Top_Flashlight_Black_L";
player addPrimaryWeaponItem "CUP_6Rnd_B_Benelli_74Slug";
player addWeapon "CUP_hgun_MP7_woodland";
player addHandgunItem "CUP_muzzle_snds_MP7";
player addHandgunItem "CUP_acc_ANPEQ_15_Top_Flashlight_OD_L";
player addHandgunItem "optic_Aco_smg";
player addHandgunItem "CUP_20Rnd_46x30_MP7";

comment "Add containers";
player forceAddUniform "PBW_Uniform4K_fleck";
player addVest "BWA3_Vest_Marksman_Fleck";
player addBackpack "BWA3_Carryall_Fleck";

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
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {player addItemToVest "CUP_40Rnd_46x30_MP7";};
for "_i" from 1 to 3 do {player addItemToVest "CUP_6Rnd_B_Beneli_74Pellets";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_M84";};
for "_i" from 1 to 3 do {player addItemToVest "BWA3_DM51A1";};
player addItemToBackpack "ACE_DefusalKit";
player addItemToBackpack "ACE_SpraypaintGreen";
player addItemToBackpack "ACE_M26_Clacker";
player addItemToBackpack "ACE_Clacker";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_wirecutter";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_WaterBottle";};
for "_i" from 1 to 4 do {player addItemToBackpack "CUP_40Rnd_46x30_MP7";};
for "_i" from 1 to 3 do {player addItemToBackpack "CUP_6Rnd_B_Benelli_74Slug";};
for "_i" from 1 to 3 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
player addItemToBackpack "CUP_6Rnd_B_Beneli_74Pellets";
player addHeadgear "BWA3_OpsCore_Fleck_Patch";
player addGoggles "PBW_Balaclava_schwarzR";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152_14";
player linkItem "ItemMicroDAGR";
player linkItem "ACE_NVG_Wide";

player setVariable ["ACE_isEOD", true];
