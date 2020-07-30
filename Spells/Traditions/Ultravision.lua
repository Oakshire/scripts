--[[
    Script Name    : Spells/Traditions/Ultravision.lua
    Script Author  : neatz09
    Script Date    : 2020.07.30 12:07:47
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Grants Ultravision to caster

function cast(Caster, Target)
SetVision(Target, 1)
    Say(Caster, "may be the wrong vision set")

end


function remove(Caster, Target)
SetVision(Target, 0)
end
