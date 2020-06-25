--[[
    Script Name    : Spells/Scout/Predator/Ranger/StreamofArrows.lua
    Script Author  : neatz09
    Script Date    : 2020.02.03 05:02:48
    Script Purpose : 
                   : 
--]]

-- Inflicts 814 - 994 ranged damage on targets in Area of Effect

function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, MinVal)
    end
end
