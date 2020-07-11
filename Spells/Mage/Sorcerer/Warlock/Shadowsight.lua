--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/Shadowsight.lua
    Script Author  : neatz09
    Script Date    : 2020.07.09 01:07:02
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Grants See Invisibility to group members (AE)
-- Grants Sonic Vision to group members (AE)
function cast(Caster, Target)
--SetSeeInvis(Target,1)
SetVision(Caster, 4)
end


function remove(Caster, Target)
--SetSeeInvis(Target, 0)
SetVision(Caster, 0)
end