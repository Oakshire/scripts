--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/PrismaticChaos.lua
    Script Author  : theFoof
    Script Date    : 2014.3.9
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- On a combat hit this spell will cast Prismatic Shock on target of attack.  
-- Inflicts 172 - 210 mental damage on target
-- Grants a total of 3 triggers of the spell.

    SetSpellTriggerCount(3, 1)
    AddProc(Target, 3, 100)
end

function proc(Caster, Target, ProcType, DDType, DDLow, DDHigh)
    ProcDamage(Caster, Target, "Prismatic Shock", DDType, DDLow, DDHigh)
    RemoveTriggerFromSpell()
end

function remove(Caster, Target)
    RemoveProc(Target)
end

