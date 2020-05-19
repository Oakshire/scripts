--[[
    Script Name    : Spells/Priest/Druid/Warden/NereidsBoon.lua
    Script Author  : neatz09
    Script Date    : 2019.11.03 01:11:30
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
