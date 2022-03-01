--[[
    Script Name    : Spells/Scout/Rogue/CircularStrike.lua
    Script Author  : neatz09
    Script Date    : 2019.10.06 09:10:09
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Interrupts targets in Area of Effect
-- Inflicts 38 - 64 melee damage on targets in Area of Effect

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

