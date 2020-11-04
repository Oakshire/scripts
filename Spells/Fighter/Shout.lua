--[[
    Script Name    : Spells/Fighter/Shout.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:00
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target encounter by 350 - 427 
function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MaxVal, MinVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end
end
