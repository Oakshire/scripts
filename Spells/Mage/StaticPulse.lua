--[[
    Script Name    : Spells/Mage/StaticPulse.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 01:12:19
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 2 - 3 magic damage on target instantly and every 4 seconds

function cast(Caster, Target, DoTType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
    SpawnSet(Target,"visual_state",11737)
end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end
