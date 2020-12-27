--[[
    Script Name    : Spells/Priest/Druid/Fury/FierceRousing.lua
    Script Author  : neatz09
    Script Date    : 2019.10.16 10:10:51
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)

function cast(Caster, Target)
-- Resurrects target with 15% health and power
Resurrect(15, 15, 1) 
    Say(Caster, "need to complete spell script")
end
--nil, "Awakening", 2, No_calcs(add to perams)
-- Applies Awakening on termination.
--function remove(Caster, Target)
--Heals target for 15.0% of max health
--SpellHeal("Heal", GetPCTOfHP(Target, 15))
--end

--     Heals target for 15.0% of max health
--         This effect cannot be critically applied.
-- Applies Revived Sickness on termination.  Lasts for 2 minutes.
--     Decreases Haste of target by 20.0
--         If not between levels 1 - 6
--     Decreases All Attributes of target by 20.0%
--         If not between levels 1 - 6
--     Decreases Haste of target by 5.0
--         If between levels 1 - 6
--     Decreases All Attributes of target by 5.0%
--         If between levels 1 - 6

-- If outside an arena
-- If outside an arena
