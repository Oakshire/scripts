--[[
    Script Name    : Spells/Priest/Druid/Fury/NaturesSalveX.lua
    Script Author  : neatz09
    Script Date    : 2019.04.24 11:04:05
    Script Purpose : 
                   : 
--]]


-- Heals target for 838 - 1024


function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        ModifyHP(Target, math.random(MinVal, MaxVal))
    else
        ModifyHP(Target, MinVal)
    end
end

