--[[
    Script Name    : Spells/Priest/Druid/Warden/WintersSting.lua
    Script Author  : neatz09
    Script Date    : 2019.04.22 07:04:25
    Script Purpose : 
                   : 
--]]

-- Inflicts 237 - 289 cold damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

