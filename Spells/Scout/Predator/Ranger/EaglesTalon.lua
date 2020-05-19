--[[
    Script Name    : Spells/Scout/Predator/Ranger/EaglesTalon.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 11:08:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On a ranged hit this spell may cast Talon Strike on target of attack.  Lasts for 10.0 seconds.  Triggers about 2.4 times per minute. 
-- Adds normalized combat art damage based on 20% of your current agility.
-- Gives caster a 60.0% chance to not use ammunition on an attack
-- Inflicts 454 - 680 slashing damage on target
-- Cannot be modified except by direct means
-- Improves base auto attack multiplier of caster by 0.200
-- Improves the combat art damage of the ranger by 10%
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

