--[[
    Script Name    : Spells/Fighter/Whirl.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:29
    Script Purpose : 
                   : 
--]]

-- Inflicts 14 - 24 melee damage on targets in Area of Effect

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

