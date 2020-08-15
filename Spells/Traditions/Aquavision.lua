--[[
    Script Name    : Spells/Traditions/Aquavision.lua
    Script Author  : neatz09
    Script Date    : 2020.05.17 10:05:30
    Script Purpose : 
                   : 
--]]

-- Grants Fish Vision to caster

function cast(Caster, Target)
    SetVision(Target, 4)
end


function remove(Caster, Target)
    SetVision(Target, 0)
end
