--[[
    Script Name    : Spells/Traditions/Gills.lua
    Script Author  : neatz09
    Script Date    : 2019.04.18 11:04:19
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Allows caster to breathe under water


function cast(Caster, Target)
BreatheUnderwater(Target, true)
end

function remove(Caster, Target)
BreatheUnderwater(Target, false)
end
