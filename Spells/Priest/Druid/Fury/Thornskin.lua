--[[
    Script Name    : Spells/Priest/Druid/Fury/Thornskin.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 02:01:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- When damaged with a melee weapon this spell will cast Thornstorm on target's attacker.  
    AddProc(Target, 4, 100)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    if Type == 4 then
        --     Inflicts 1 piercing damage on target encounter
        if MaxVal ~= nil and MinVal < MaxVal then
            ProcDamage(Caster, Target, "Thornstorm", DmgType, MinVal, MaxVal)
        else
            ProcDamage(Caster, Target, "Thornstorm", DmgType, MinVal)
        end
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end
