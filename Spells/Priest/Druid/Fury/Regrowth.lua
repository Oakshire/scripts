--[[
    Script Name    : Spells/Priest/Druid/Fury/Regrowth.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 03:01:53
    Script Purpose : 
                   : 
--]]

-- Heals target for 38 - 46 instantly and every 2 seconds
function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellHeal("Heal", MinVal, MaxVal)
    else
        SpellHeal("Heal", MinVal)
    end
end

function tick(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellHeal("Heal", MinVal, MaxVal)
    else
        SpellHeal("Heal", MinVal)
    end
end
