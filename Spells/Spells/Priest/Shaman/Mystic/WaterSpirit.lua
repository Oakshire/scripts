--[[
    Script Name    : Spells/Priest/Shaman/Mystic/WaterSpirit.lua
    Script Author  : neatz09
    Script Date    : 2019.09.28 11:09:34
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Allows group members (AE) to breathe under water
-- Allows group members (AE) to walk under water
-- Allows group members (AE) to jump under water

function cast(Caster, Target)
BreatheUnderwater(Target, true)
AddControlEffect(Target, 7)
AddControlEffect(Target, 8)
end


function remove(Caster, Target)
BreatheUnderwater(Target, false)
    RemoveControlEffect(Target, 7)
    RemoveControlEffect(Target, 8)
end
