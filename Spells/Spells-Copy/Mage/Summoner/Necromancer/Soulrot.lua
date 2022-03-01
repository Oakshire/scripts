--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/Soulrot.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 07:11:58
    Script Purpose : 
                   : 
--]]

-- Inflicts 2 - 3 disease damage on target instantly and every second
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
