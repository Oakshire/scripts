--[[
    Script Name    : Spells/Priest/Druid/Fury/UntamedRegeneration.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 04:01:14
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    -- Heals group members (AE) for 107 - 131
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellHeal("Heal",MinVal, MaxVal)
    else
        SpellHeal("Heal", MinVal)
    end
end
