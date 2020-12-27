--[[
    Script Name    : Spells/Priest/Druid/Warden/Reincarnation.lua
    Script Author  : John Adams
    Script Date    : 2013.08.11 07:08:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- code to cast the spell
    Say(Caster, "Whoops! Guess this is not implemented yet!")

-- Info from spell_display_effects (remove from script when done)
-- Resurrects target with 15% health and power
-- Applies Reincarnate on termination.  Lasts for 1 minute.
-- Increases All Attributes of target by 15.0%
-- Increases Attack Speed of target by 31.3
-- Increases Damage Per Second of target by 36.0
-- Increases Crushing, Piercing and Slashing of target by 15.0
-- Heals target for 16.6% of max health
-- Heals target for 0.6% of max health every 6 seconds
-- Shapechanges target into a wolf
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

