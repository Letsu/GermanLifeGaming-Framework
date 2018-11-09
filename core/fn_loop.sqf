/*
 * Author: Johannes "Letus" Bindriem
 * The While excutet the whole Time and execute Commands thats need to Run in an FOrever Loop!
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * [] spawn lts_core_fnc_loop;
 *
 */
 
_fnc_food = {
    switch (lts_core_food) do {
        case (20): {["Du hast Hunger und Solltest was Essen!"] call lts_fnc_hint};
        case (10): {["Du hast Hunger und Solltest was Essen!"] call lts_fnc_hint};
        case (5): {["Du hast Hunger und Solltest was Essen!"] call lts_fnc_hint};
    };

    lts_core_food = lts_core_food - 5;
};

_fnc_thirst = {
    switch (lts_core_food) do {
        case (20): {["Du hast Durst und Solltest was Trinken!"] call lts_fnc_hint};
        case (10): {["Du hast Durst und Solltest was Trinken!"] call lts_fnc_hint};
        case (5): {["Du hast Durst und Solltest was Trinken!"] call lts_fnc_hint};
    };

    lts_core_thirst = lts_core_thirst - 5;
};

while {true} do {
    _food = time;
    _thirst = time;

    if (time - _food > 300 ) then { call _fnc_food; _food = time };
    if (time - _thirst > 250 ) then { call _fnc_thirst; _thirst = time };


    sleep 1;
};
