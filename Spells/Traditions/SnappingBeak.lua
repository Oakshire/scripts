--[[
    Script Name    : Spells/Traditions/SnappingBeak.lua
    Script Author  : neatz09
    Script Date    : 2020.08.18 01:08:44
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 2 - 3 crushing damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
