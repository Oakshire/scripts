--[[
    Script Name    : Spells/Priest/Cleric/Templar/BattlesReprieve.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 12:10:54
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
Resurrect(15, 15, 1)
    Say(Caster, "2 subspells needed")

end
-- Applies Battle's Reprieve on termination.  Lasts for 1 minute.
--     Heals target for 25.0% of max health
--         This effect cannot be critically applied.
--     Increases Mitigation of target vs physical damage by 220
-- Applies Revived Sickness on termination.  Lasts for 2 minutes.
--     Decreases Haste of target by 20.0
--         If not between levels 1 - 6
--     Decreases All Attributes of target by 20.0%
--         If not between levels 1 - 6
--     Decreases Haste of target by 5.0
--         If between levels 1 - 6
--     Decreases All Attributes of target by 5.0%
--         If between levels 1 - 6
-- Resurrects target with 15% health and power
-- If outside an arena
-- If outside an arena
