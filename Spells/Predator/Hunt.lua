--[[
    Script Name    : Spells/Predator/Hunt.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.31 04:03:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
SetSeeInvis(Target,1)
end


function remove(Caster, Target)
SetSeeInvis(Target, 0)
end
