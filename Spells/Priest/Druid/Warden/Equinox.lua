--[[
    Script Name    : Spells/Priest/Druid/Warden/Equinox.lua
    Script Author  : neatz09
    Script Date    : 2020.09.02 12:09:52
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
Resurrect(13, 13, 1)
    Say(Caster, "two subspells needed.")

end

-- Applies Nature's Blessing on termination.  Lasts for 1 minute.
--     Heals target for 3.0% of max health instantly and every 6 seconds
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
-- Resurrects target with 13% health and power
-- If outside an arena
-- If outside an arena
