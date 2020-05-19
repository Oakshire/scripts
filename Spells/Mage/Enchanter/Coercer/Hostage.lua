--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Hostage.lua
    Script Author  : neatz09
    Script Date    : 2019.10.22 05:10:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- When damaged with a melee weapon this spell will cast Convulsions on target.  
--     Inflicts 88 - 107 mental damage on target
--     Grants a total of 3 triggers of the spell.

    SetSpellTriggerCount(3, 1)
    AddProc(Target, 16, 100)
end

function proc(Caster, Target, ProcType, DDType, DDLow, DDHigh)
    ProcDamage(Caster, Target, "Convulsions", DDType, DDLow, DDHigh)
    RemoveTriggerFromSpell()
end

function remove(Caster, Target)
    RemoveProc(Target)
end