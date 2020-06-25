--[[
    Script Name    : Spells/Fighter/Shout.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:00
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target encounter by 350 - 427 
function cast(Caster, Target, MinTauntVal, MaxTauntVal)    
if MaxTauntVal ~= nil and MinTauntVal < MaxTauntVal then
        AddHate(Caster, Target, math.random(MinTauntVal, MaxTauntVal))
    else
        AddHate(Caster, Target, MinTauntVal)
    end
end
