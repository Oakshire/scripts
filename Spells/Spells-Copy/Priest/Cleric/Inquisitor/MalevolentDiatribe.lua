--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/MalevolentDiatribe.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 09:03:40
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    SetSpellTriggerCount(9, 1)
    AddProc(Target, 2, 100)
end

function proc(Caster, Target, Type, MinHeal, MaxHeal)
    -- When any damage is received this spell will cast Atoning Faith on target, which can be triggered up to 9 times across all targets.  
    --     Heals target for 44 - 54
    if Type == 2 then
        SpellHeal("Heal", MinHeal, MaxHeal, Caster)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
