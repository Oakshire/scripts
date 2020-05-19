--[[
    Script Name    : Spells/Priest/Druid/Fury/CallofStorms.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 07:08:19
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

