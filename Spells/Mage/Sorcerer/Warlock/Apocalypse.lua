--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/Apocalypse.lua
    Script Author  : neatz09
    Script Date    : 2019.04.23 09:04:39
    Script Purpose : 
                   : 
--]]

-- Inflicts 191 - 355 poison damage on target encounter instantly and every 1.5 seconds


function cast(Caster, Target, DoTType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

