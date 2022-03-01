--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/ShiftVision.lua
    Script Author  : neatz09
    Script Date    : 2020.08.29 02:08:37
    Script Purpose : 
                   : 
--]]

-- Grants See Invisibility to group members (AE)
-- Grants Infravision to group members (AE)
function cast(Caster, Target)
SetSeeInvis(Target,1)
SetVision(Target, 1)
    Say(Caster, "Vision is likely wrong.")

end


function remove(Caster, Target)
SetSeeInvis(Target, 0)
SetVision(Target, 0)
end