--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/Pandemic.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.07 10:12:04
    Script Purpose : 
                   : 
--]]

-- Inflicts 3 - 4 disease damage on target encounter instantly and every 3 seconds

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
