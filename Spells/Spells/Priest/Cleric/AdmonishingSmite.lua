--[[
    Script Name    : Spells/Priest/Cleric/AdmonishingSmite.lua
    Script Author  : neatz09
    Script Date    : 2019.08.05 07:08:53
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 25 - 31 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

-- Dazes target
--     If Target is not Epic
-- Dispelled when target receives hostile action
-- Dispelled when target takes damage
-- Resistibility increases against targets higher than level 29.
