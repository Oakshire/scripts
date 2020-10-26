--[[
    Script Name    : Spells/Priest/Cleric/Templar/Resurrect.lua
    Script Author  : neatz09
    Script Date    : 2020.02.01 07:02:24
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Applies Resurrect on termination.
--     Heals target for 100.0% of max health
--         This effect cannot be critically applied.
-- Resurrects target with 15% health and power
-- If outside an arena

function cast(Caster, Target)
Resurrect(15, 15, 1)
    Say(Caster, "Subspells needed")

end
