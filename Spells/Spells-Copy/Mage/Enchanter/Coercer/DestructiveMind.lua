--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/DestructiveMind.lua
    Script Author  : neatz09
    Script Date    : 2019.10.22 06:10:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- On a damage spell hit this spell will cast Despotic Mind on target of spell.  
--     Inflicts 476 - 582 mental damage on target
--     Grants a total of 3 triggers of the spell.
    SetSpellTriggerCount(3, 1)
    AddProc(Target, 5, 100)
end

function proc(Caster, Target, ProcType, DDType, DDLow, DDHigh)
    ProcDamage(Caster, Target, "Despotic Mind", DDType, DDLow, DDHigh)
    RemoveTriggerFromSpell()
end

function remove(Caster, Target)
    RemoveProc(Target)
end