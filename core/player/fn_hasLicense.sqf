private ["_var"];
/*
 * Author: Johannes "Letus" Bindriem
 * Give status of License of the Player and the Position in the License Array
 *
 * Arguments:
 * 0: License Type [String]
 *
 * Return Value:
 * 0: Player has the License [Bool]
 * 1: Player of teh License in the Array [Number]
 *
 * Example:
 * [""] call lts_fnc_hasLicense;
 *
 */
_var = param [0, ""];
_hasLicense = false;

_num = 0;
_num2 = -1;
{
    if (_x select 0 == _var) then {
        _hasLicense = _x select 1;
        _num2 = _num;
    } else {
        _hasLicense = false;
    };
    _num = _num + 1;
} forEach lts_core_licenses;

_return = [_hasLicense, _num2];
_return;