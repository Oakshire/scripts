--[[
    Script Name    : Spells/Fighter/Provoke.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:04
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target by 580 - 709

function cast(Caster, Target, MinTauntVal, MaxTauntVal)
    if MaxTauntVal ~= nil and MinTauntVal < MaxTauntVal then
        AddHate(Caster, Target, math.random(MinTauntVal, MaxTauntVal))
    else
        AddHate(Caster, Target, MinTauntVal)
    end
end

