--[[
    Script Name    : Spells/Priest/Druid/Fury/FerocityoftheEel.lua
    Script Author  : neatz09
    Script Date    : 2019.11.03 06:11:11
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Allows group members (AE) to breathe under water
-- Grants Fish Vision to group members (AE)
function cast(Caster, Target)
BreatheUnderwater(Target, true)
SetVision(Target, 4)
end


function remove(Caster, Target)
BreatheUnderwater(Target, false)
SetVision(Target, 0)
end