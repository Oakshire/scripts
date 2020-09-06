--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Unveil.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 10:11:12
    Script Purpose : 
                   : 
--]]

-- Grants See Invisibility to group members (AE)
-- Grants Ultravision to group members (AE)
function cast(Caster, Target)
	SetSeeInvis(Target,1)
	SetVision(Target, 1)
    Say(Caster, "may be the wrong vision set")

end


function remove(Caster, Target)
	SetSeeInvis(Target, 0)
	SetVision(Target, 0)
end