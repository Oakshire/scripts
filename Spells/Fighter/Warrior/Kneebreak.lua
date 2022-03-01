--[[
    Script Name    : Spells/Fighter/Warrior/Kneebreak.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:03
    Script Purpose : 
                   : 
--]]

-- Inflicts 26 - 43 crushing damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end