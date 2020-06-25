--[[
    Script Name    : Spells/Priest/Druid/Fury/PrimevalAwakening.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 07:08:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Resurrects target with 15% health and power
-- Applies Primeval Awakening on termination.  Lasts for 1 minute.
-- Increases Focus of target by 30.0
-- Heals target for 30.0% of max health
-- This effect cannot be critically applied.
-- Increases power of target by 1.0% instantly and every 6 seconds
-- This effect cannot be critically applied.
-- Increases INT of target by 78.0
-- Increases Disruption of target by 30.0
-- Shapechanges target into a treant
-- Increases Subjugation of target by 30.0
-- Applies Revived Sickness on termination.  Lasts for 2 minutes.
-- Decreases Toughness of target by 145.0
-- Decreases Lethality of target by 145.0
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

