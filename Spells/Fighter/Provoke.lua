--[[
    Script Name    : Spells/Fighter/Provoke.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:04
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target by 580 - 709

function cast(Caster, Target, MinTauntVal, MaxTauntVal)
AddHate(Caster, Target, math.random(MinTauntVal, MaxTauntVal), 1)
end

