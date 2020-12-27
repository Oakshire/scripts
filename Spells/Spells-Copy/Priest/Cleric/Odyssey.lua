--[[
    Script Name    : Spells/Priest/Cleric/Odyssey.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:10
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Teleports target to a zone landmark
--     You must be a citizen to benefit from an odyssey.
-- This effect cannot be cast during combat
-- If not a City Betrayer
-- Teleports you to your recall point.
function precast(Caster, Target)
    if GetBoundZoneID(Caster) == 0 then
        return false
    end

    return true
end

function cast(Caster, Target)
    Gate(Caster)
end