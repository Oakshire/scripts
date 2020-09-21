--[[
    Script Name    : Spells/Priest/Druid/Fury/CalloftheHunt.lua
    Script Author  : neatz09
    Script Date    : 2020.05.16 10:05:29
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target)
Resurrect(15, 15, 1, Target, "Awakening")
    Say(Caster, "Needs to cast subspell")

end
-- Applies Awakening on termination.
--     Heals target for 15.0% of max health
--         This effect cannot be critically applied.
-- Applies Revived Sickness on termination.  Lasts for 2 minutes.
--     Decreases All Attributes of target by 20.0%
--         If not between levels 1 - 6
--     Decreases Haste of target by 20.0
--         If not between levels 1 - 6
--     Decreases All Attributes of target by 5.0%
--         If between levels 1 - 6
--     Decreases Haste of target by 5.0
--         If between levels 1 - 6
-- Resurrects target with 15% health and power
-- If outside an arena
-- If outside an arena
