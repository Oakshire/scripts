--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/CatsEye.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 12:10:07
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Grants See Invisibility to group members (AE)
-- Grants Sonic Vision to group members (AE)
function cast(Caster, Target)
    SetVision(Target, 2)
    Say(Caster, "Still need see invis and verify that this is sonic vision")

end


function remove(Caster, Target)
SetVision(Target, 0)
end
