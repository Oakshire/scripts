--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Absolution.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 07:08:20
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Has a 50% chance to cast an additional heal 0.5 seconds after Alleviation, Fanatical Healing or Ministration is cast.
-- On a combat hit this spell may cast Penitent Smite on target of attack.  Lasts for 12.0 seconds.  Triggers about 1.8 times per minute. 
-- Makes group members (AE) immune to Daze and Stifle effects
-- Inflicts 652 - 978 divine damage on target
-- Cannot be modified except by direct means
-- Improves the casting and reuse speed of heals by 15%
-- Cannot be modified except by direct means

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

