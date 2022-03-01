--[[
    Script Name    : Spells/ProficientSwimmer.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 03:08:57
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

