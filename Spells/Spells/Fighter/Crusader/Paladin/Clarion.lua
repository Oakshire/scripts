--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/Clarion.lua
    Script Author  : Dello
    Script Date    : 19/07/2014
    Script Purpose :
--]]

function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end
end

function tick(Caster, Target, MinVal, MaxVal, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end
end