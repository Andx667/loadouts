player setRank "LIEUTENANT";								//PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL <> kann hier gesetzt werden wenn gewünscht

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
player addWeapon "srifle_LRR_camo_F";
player addPrimaryWeaponItem "ACE_optic_LRPS_PIP";
player addPrimaryWeaponItem "7Rnd_408_Mag";
player addWeapon "hgun_Pistol_heavy_01_green_F";
player addHandgunItem "muzzle_snds_acp";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
player forceAddUniform "U_I_FullGhillie_lsh";
player addVest "V_CarrierRigKBT_01_EAF_F";
player addBackpack "B_AssaultPack_wdl_F";

comment "Add binoculars";
player addMagazine "Laserbatteries";
player addWeapon "Laserdesignator_01_khk_F";

comment "Add items to containers";
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "7Rnd_408_Mag";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_salineIV_250";
player addItemToUniform "11Rnd_45ACP_Mag";

for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_XL50";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_microDAGR";
player addItemToVest "ACE_ATragMX";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "ACE_M84";

for "_i" from 1 to 2 do {player addItemToBackpack "7Rnd_408_Mag";};
player addItemToBackpack "ACE_Tripod";
player addItemToBackpack "ACE_Vector";
player addItemToBackpack "NVGoggles_INDEP";

player addHeadgear "H_Booniehat_eaf";
player addGoggles "G_Tactical_Black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";

player setVariable ["ACE_medical_medicClass", 1]; 		//0 = Noob, 1 = Medic, 2 = Doctor