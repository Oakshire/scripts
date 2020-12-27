--[[
    Script Name    : Spells/Scout/Predator/Assassin/DeathMark.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 05:04:57
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, Triggers)
    --     When damaged with a melee weapon this spell will cast Agonizing Pain on target.  
    AddProc(Target, 4, 5)

    --         Grants a total of 5 triggers of the spell.
    SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Triggers)
    --     When damaged with a melee weapon this spell will cast Agonizing Pain on target.  
    if Type == 4 then
        --         Inflicts 79 - 133 piercing damage on target
        ProcDamage(Caster, Target, "Agonizing Pain", DmgType, MinVal, MaxVal)
        RemoveTriggerFromSpell(1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
