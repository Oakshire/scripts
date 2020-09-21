--[[
    Script Name    : Spells/Priest/Shaman/Mystic/FieldsoftheGrey.lua
    Script Author  : neatz09
    Script Date    : 2020.09.19 11:09:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
Resurrect(15, 15, 1, Target, "Heal")
    Say(Caster, "Rez Sickness neededs to be implemented.")

end

-- Info from spell_display_effects (remove from script when done)
-- Applies Heal on termination.
--     Heals target for 15.0% of max health
--         This effect cannot be critically applied.
--     Increases power of target by 15.0%
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
