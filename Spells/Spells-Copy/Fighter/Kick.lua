--[[
    Script Name    : Spells/Fighter/Kick.lua
    Script Author  : neatz09
    Script Date    : 2019.12.09 06:12:01
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 7 - 12 crushing damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
