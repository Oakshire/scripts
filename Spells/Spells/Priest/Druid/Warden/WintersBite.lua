--[[
    Script Name    : Spells/Priest/Druid/Warden/WintersBite.lua
    Script Author  : neatz09
    Script Date    : 2019.04.22 05:04:30
    Script Purpose : 
                   : 
--]]

-- Inflicts 178 - 217 cold damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end


