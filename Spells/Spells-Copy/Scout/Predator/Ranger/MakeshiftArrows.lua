--[[
    Script Name    : Spells/Scout/Predator/Ranger/MakeshiftArrows.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 04:03:05
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    --     Grants a total of 60 triggers of the spell.
    SetSpellTriggerCount(60, 1)

    -- On a ranged hit this spell will cast Makeshift Arrow on target of attack.  
    AddProc(Caster, 18, 100)
end

function proc(Caster, Target, Type, DmgType, DmgAmt)
    --     Inflicts 71 piercing damage on target
    if Type == 18 then
        ProcDamage(Caster, Target, "Makeshift Arrow", DmgType, DmgAmt)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Caster)
end
