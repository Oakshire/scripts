--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Abuse.lua
    Script Author  : Dello
    Script Date    : 25/06/2014
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

    if target ~= nil then
        Interrupt(Caster, Target)
    end
end
