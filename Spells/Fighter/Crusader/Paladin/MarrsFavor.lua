--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/MarrsFavor.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 06:08:25
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On a combat hit this spell may cast Marr's Fury on target of attack.  Triggers about 3.0 times per minute. 
-- Inflicts 811 - 991 divine damage on target
-- Reduces physical damage done to caster by 10%
-- When the paladin takes damage, they will heal themselves for 10% of the damage amount.
-- On a spell cast this spell has a 15% chance to cast Marr's Favor on caster.  Lasts for 15.0 seconds.  
-- Increases the damage of spells by up to 25% of your total strength
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

