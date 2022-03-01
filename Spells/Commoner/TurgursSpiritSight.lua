--[[
    Script Name    : Spells/Commoner/TurgursSpiritSight.lua
    Script Author  : neatz09
    Script Date    : 2020.09.06 05:09:58
    Script Purpose : 
                   : 
--]]

-- Grants See Invisibility to caster
function cast(Caster, Target)
SetSeeInvis(Target,1)
end


function remove(Caster, Target)
SetSeeInvis(Target, 0)
end