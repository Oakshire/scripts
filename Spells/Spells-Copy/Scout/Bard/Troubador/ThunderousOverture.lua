--[[
    Script Name    : Spells/Scout/Bard/Troubador/ThunderousOverture.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 02:09:31
    Script Purpose : 
                   : 
--]]

-- Inflicts 416 - 693 mental damage on targets in Area of Effect

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

