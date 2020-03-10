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

comment "Add containers";
player forceAddUniform "U_C_ConstructionCoverall_Blue_F";
player addVest "V_Safety_yellow_F";
player addBackpack "B_LegStrapBag_black_repair_F";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "FirstAidKit";};
player addItemToBackpack "ToolKit";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "ItemGPS";
