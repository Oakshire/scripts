--[[
    Script Name    : Spells/Mage/SeeInvisibility.lua
    Script Author  : neatz09
    Script Date    : 2020.06.24 03:06:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
SetSeeInvis(Target,1)
end


function remove(Caster, Target)
SetSeeInvis(Target, 0)
end