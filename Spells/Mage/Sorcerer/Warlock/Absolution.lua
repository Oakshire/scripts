--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/Absolution.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.07 07:03:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 305 - 566 disease damage on target encounter
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
