--[[
    Script Name    : Spells/Fighter/Shout.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:00
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target encounter by 350 - 427 
function cast(Caster, Target, MinVal, MaxVal)
AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
end
