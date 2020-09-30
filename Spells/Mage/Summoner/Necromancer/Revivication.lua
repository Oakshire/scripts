--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/Revivication.lua
    Script Author  : neatz09
    Script Date    : 2019.10.14 11:10:32
    Script Purpose : 
                   : 
--]]
function cast(Caster, Target)
Resurrect(13, 13, 1)
    Say(Caster, "1 sub spell needed.")

end
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
--         If between levels 1 - 6
-- If outside an arena
