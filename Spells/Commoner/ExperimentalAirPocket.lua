--[[
    Script Name    : Spells/Commoner/ExperimentalAirPocket.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 11:08:13
    Script Purpose : 
                   : 
--]]

-- Allows caster to breathe under water

function cast(Caster, Target)
BreatheUnderwater(Target, true)
end


function remove(Caster, Target)
BreatheUnderwater(Target, false)
end
