--[[
    Script Name    : Spells/Priest/Druid/Fury/PrimevalAwakening.lua
    Script Author  : neatz09
    Script Date    : 2021.01.09 01:01:04
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Applies Primeval Awakening on termination.  Lasts for 1 minute.
--     Shapechanges target into a treant
--     Increases power of target by 1.0% instantly and every 6 seconds
--         This effect cannot be critically applied.
--     Heals target for 30.0% of max health
--         This effect cannot be critically applied.
--     Increases INT of target by 78.0
--     Increases Disruption, Subjugation and Focus of target by 30.0
-- Resurrects target with 15% health and power
-- If outside an arena
--     Applies Revived Sickness on termination.  Lasts for 2 minutes.
--         Decreases Toughness of target by 145.0
--         Decreases Lethality of target by 145.0
--         Decreases All Attributes of target by 20.0%
--             If not between levels 1 - 6
--         Decreases Attack Speed of target by 20.0
--             If not between levels 1 - 6
--         Decreases All Attributes of target by 5.0%
--             If between levels 1 - 6
--         Decreases Attack Speed of target by 5.0
--             If between levels 1 - 6
-- If outside an arena
