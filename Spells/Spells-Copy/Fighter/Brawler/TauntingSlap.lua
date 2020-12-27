--[[
    Script Name    : Spells/Fighter/Brawler/TauntingSlap.lua
    Script Author  : Dello
    Script Date    : 2014.07.11 02:07:49
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    -- Increases Threat to target by 355 - 434 
    if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end
end
