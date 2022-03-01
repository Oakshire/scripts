--[[
    Script Name    : Spells/Priest/Druid/Warden/Equinox.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 07:08:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Resurrects target with 13% health and power
-- Applies Nature's Blessing on termination.  Lasts for 1 minute.
-- Heals target for 3.3% of max health instantly and every 6 seconds
-- Applies Revived Sickness on termination.  Lasts for 2 minutes.
-- Decreases Toughness of target by 98.0
-- Decreases Lethality of target by 98.0
-- Decreases All Attributes of target by 20.0%
-- If not between levels 1 - 6
-- Decreases Attack Speed of target by 20.0
-- If not between levels 1 - 6
-- Decreases Attack Speed of target by 5.0
-- If between levels 1 - 6
-- Decreases All Attributes of target by 5.0%
-- If between levels 1 - 6
-- If outside an arena

end

function tick(Caster, Target)
    -- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target)
    -- code to remove the spell
end

