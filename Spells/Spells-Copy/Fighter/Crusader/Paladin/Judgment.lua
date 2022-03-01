--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/Judgment.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.05 05:12:36
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Interrupts target
    Interrupt(Caster, Target)

    -- Inflicts 9 - 14 divine damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
