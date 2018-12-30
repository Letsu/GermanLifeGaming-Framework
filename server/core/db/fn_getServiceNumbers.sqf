/*
 * Author: Johannes 'Letus' Bindriem
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
allServiceNumbers = [];
private _copSN = call compile ("extDB3" callExtension "0:Cop:GetCopServiceNumbers");
private _medSN = call compile ("extDB3" callExtension "0:Med:GetMedServiceNumbers");
//_query = parseSimpleArray _query;

_copSN = _copSN select 1;
diag_log _copSN;
_medSN = _medSN select 1;
diag_log _medSN;


{
    allServiceNumbers pushBackUnique (parseNumber (_x select 0));
    diag_log _x;
} forEach _copSN;

{
    allServiceNumbers pushBackUnique (parseNumber (_x select 0));
    diag_log _x;
} forEach _medSN;

// allServiceNumbers = _copSN + _medSN;
 publicVariable "allServiceNumbers";
