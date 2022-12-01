--[[
    Script Name    : Spells/Procs/Vitae.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.01 05:12:28
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        ModifyHP(Target, math.random(MinVal, MaxVal))
    else
        ModifyHP(Target, MinVal)
    end
end
