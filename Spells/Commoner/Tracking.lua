--[[
    Script Name    : Spells/Commoner/Tracking.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 09:11:05
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Tracks a selected target, causing a trail to appear that leads to their location.

function cast(Caster, Target)
    ToggleTracking(Caster)
end
