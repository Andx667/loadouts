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
player addWeapon "arifle_SPAR_01_khk_F";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "ACE_acc_pointer_green";
player addPrimaryWeaponItem "optic_Hamr_khk_F";
player addPrimaryWeaponItem "30Rnd_556x45_Stanag";
player addPrimaryWeaponItem "bipod_01_F_khk";
player addWeapon "hgun_Pistol_heavy_01_green_F";
player addHandgunItem "muzzle_snds_acp";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "optic_MRD_black";
player addHandgunItem "11Rnd_45ACP_Mag";

comment "Add containers";
player forceAddUniform "U_I_FullGhillie_lsh";
player addVest "V_CarrierRigKBT_01_EAF_F";
player addBackpack "B_RadioBag_01_eaf_F";

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
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_salineIV_250";
player addItemToUniform "11Rnd_45ACP_Mag";

for "_i" from 1 to 7 do {player addItemToVest "30Rnd_556x45_Stanag_green";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_IR_Strobe_Item";
player addItemToVest "ACE_Flashlight_XL50";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_microDAGR";
player addItemToVest "ACE_ATragMX";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
player addItemToVest "ACE_M84";

player addItemToBackpack "ACE_SpottingScope";
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
player linkItem "NVGoggles_INDEP";

player setVariable ["ACE_medical_medicClass", 1]; 		//0 = Noob, 1 = Medic, 2 = Doctor