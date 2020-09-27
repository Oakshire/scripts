--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Resurgence.lua
    Script Author  : neatz09
    Script Date    : 2020.09.27 06:09:33
    Script Purpose : 
                   : 
--]]
function Cast(Target, Player)
Resurrect(15, 15, 1)
    Say(Caster, "2 sub spells needed")
end

-- Applies Reforming Soul on termination.  Lasts for 1 minute.
--     Heals target for 25.0% of max health
--         This effect cannot be critically applied.
--     Increases Mitigation of target vs elemental, noxious and arcane damage by 360
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
