--[[
    Script Name    : Spells/Commoner/SpiritGuideItem.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 03:11:14
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Resurrects target with 15% health and power

function cast(Caster, Target)
Resurrect(15, 15, 1)
    Say(Caster, "Summoning Sickness not implemented.")
end