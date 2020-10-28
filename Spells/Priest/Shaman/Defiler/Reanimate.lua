--[[
    Script Name    : Spells/Priest/Shaman/Defiler/Reanimate.lua
    Script Author  : neatz09
    Script Date    : 2020.01.27 08:01:02
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
Resurrect(15, 15, 1)
    Say(Caster, "Spell will need a subspell + should heal for % of health at termination.")

end

-- Applies Reanimate on termination.  Lasts for 1 minute.
--     Heals target for 30.0% of max health
--         This effect cannot be critically applied.
--     Increases power of target by 2.0% instantly and every 4 seconds
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
--         If between levels 1 - 6
-- If outside an arena
