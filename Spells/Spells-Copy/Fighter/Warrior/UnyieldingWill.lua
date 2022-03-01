--[[
    Script Name    : Spells/Fighter/Warrior/UnyieldingWill.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 02:08:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On death this spell will cast Death's Door on caster.  Lasts for 36.0 seconds.  
--     Applies Exploding Heart on termination.
--     Heals caster for 56.2% of max health
--         This effect cannot be critically applied.
--     The healing of this spell cannot be modified except by direct means
--     Grants a total of 1 trigger of the spell.

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

