--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Penance.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 08:03:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    --     Grants a total of 5 triggers of the spell.
    SetSpellTriggerCount(5, 1)

    -- When any damage is received this spell will cast Vengeful Faith on target.  
    AddProc(Target, 2, 100)
end

function proc(Caster, Target, Type, MinHeal, MaxHeal)
    -- When any damage is received this spell will cast Vengeful Faith on target.  
    if Type == 2 then
        --     Heals target for 38 - 46
        SpellHeal("Heal", MinHeal, MaxHeal, Caster)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end