--[[
    Script Name    : Spells/Priest/Cleric/Templar/HolyIntercession.lua
    Script Author  : Zcoretri
    Script Date    : 2014.03.13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HealLow, HealHigh, Triggers)
-- When any damage is received this spell will cast Divine Prayer on target, which can be triggered up to 9 times across all targets.  
-- Heals target for 44 - 54
    AddProc(Target, 15, 100, 0, 1)
    SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, ProcType, HealLow, HealHigh)
    SpellHeal("Heal", HealLow, HealHigh)
    RemoveTriggerFromSpell()
end

function remove(Caster, Target)
    RemoveProc(Target)
end

