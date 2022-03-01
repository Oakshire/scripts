--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/Bloodcoil.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.07 10:12:29
    Script Purpose : 
                   : 
--]]

-- Inflicts 5 - 6 disease damage on target instantly and every 4 seconds

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
