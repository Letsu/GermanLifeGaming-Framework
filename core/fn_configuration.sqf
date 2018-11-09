/*
 * Author: Johannes "Letus" Bindriem
 * Initalizies all Global Variables and Variables on the Player whit an default Value on Joining on the Server
 * or when you need to set the Player Empty Variables on Player!
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call lts_core_fnc_configuration;
 *
 */

//Core Values Initalisation
lts_core_food = 100;
lts_core_thirst = 100;
lts_core_curSide = "civ"; //Posible Value "civ", "cop", "med"
lts_core_curVehicles = [];

//civ
lts_civ_inv = []; //Needs to fill whit an Defualt Value
lts_civ_licenses = [];

//Cop
lts_cop_level = 0;
lts_cop_inv = []; //Needs to fill whit an Defualt Value
lts_cop_licenses = [];


//Medic
lts_med_level = 0;
lts_med_inv = []; //Needs to fill whit an Defualt Value
lts_med_licenses = [];