--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/VisionofMadness.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 02:08:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- On death this spell will cast Madness on caster.  Lasts for 5.0 seconds.  
--     Heals caster for 2.7% of max health instantly and every second
--         This effect cannot be critically applied.
--         If target is not berserk
--     Heals caster for 13.5% of max health instantly and every second
--         This effect cannot be critically applied.
--         If target is berserk
--     The healing of this spell cannot be modified except by direct means
--     Grants a total of 1 trigger of the spell.

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

