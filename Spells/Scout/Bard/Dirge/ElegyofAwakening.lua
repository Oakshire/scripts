--[[
    Script Name    : Spells/Scout/Bard/Dirge/ElegyofAwakening.lua
    Script Author  : neatz09
    Script Date    : 2020.09.19 03:09:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
Resurrect(25, 20, 1)
    Say(Caster, "Rez sickness not implemented")

end

-- Info from spell_display_effects (remove from script when done)
-- Applies Elegy on termination.
--     Heals target for 25.0% of max health
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
-- Resurrects target with 10% health and power
-- If outside an arena
-- If outside an arena
