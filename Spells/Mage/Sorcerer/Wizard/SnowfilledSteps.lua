--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/SnowfilledSteps.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 10:11:03
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Grants See Invisibility to group members (AE)
-- Grants Fish Vision to group members (AE)

function cast(Caster, Target)
SetVision(Target, 4)
    Say(Caster, "See Invis Not Implemented.")

end


function remove(Caster, Target)
SetVision(Target, 0)
end
