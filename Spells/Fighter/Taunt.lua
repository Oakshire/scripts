--[[
    Script Name    : Spells/Fighter/Taunt.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 02:11:15
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target by 135 - 166 
--[[function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MaxVal, MinVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end
end
--]]

function cast(Caster, Target, MinVal, MaxVal)
AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
    
end