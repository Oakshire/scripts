--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/SpellCurse.lua
    Script Author  : neatz09
    Script Date    : 2019.10.22 05:10:30
    Script Purpose : 
                   : 
--]]

-- When damaged with a spell this spell will cast Lash on target.  
--     Inflicts 388 - 475 mental damage on target
--     Grants a total of 3 triggers of the spell.

function cast(Caster, Target)
    SetSpellTriggerCount(3, 1)
    AddProc(Target, 17, 100)
end

function proc(Caster, Target, ProcType, DDType, DDLow, DDHigh)
    ProcDamage(Caster, Target, "Lash", DDType, DDLow, DDHigh)
    RemoveTriggerFromSpell()
end

function remove(Caster, Target)
    RemoveProc(Target)
end