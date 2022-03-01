--[[
    Script Name    : Spells/Priest/Druid/Fury/Starnova.lua
    Script Author  : neatz09
    Script Date    : 2019.04.24 11:04:05
    Script Purpose : 
                   : 
--]]


-- Inflicts 520 - 635 heat damage on target encounter

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

