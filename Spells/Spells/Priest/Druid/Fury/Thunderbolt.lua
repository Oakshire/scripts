--[[
    Script Name    : Spells/Priest/Druid/Fury/Thunderbolt.lua
    Script Author  : neatz09
    Script Date    : 2019.04.24 07:04:59
    Script Purpose : 
                   : 
--]]


-- Inflicts 195 - 324 magic damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

