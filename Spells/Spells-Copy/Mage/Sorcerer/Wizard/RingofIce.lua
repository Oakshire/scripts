--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/RingofIce.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 07:08:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Roots target encounter
-- Applies Icy Grasp on termination.  Lasts for 12.0 seconds.
-- Slows target by 34.2%
-- 5% chance to dispel when target receives hostile action
-- 5% chance to dispel when target takes damage
-- 20% chance to dispel when target takes damage
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

