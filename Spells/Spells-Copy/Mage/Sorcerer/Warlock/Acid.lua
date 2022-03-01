--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/Acid.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 05:01:06
    Script Purpose : 
                   : 
--]]

-- Inflicts 3 - 6 poison damage on target instantly and every 3 seconds
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
