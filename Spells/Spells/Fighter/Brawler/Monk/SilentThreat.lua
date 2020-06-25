--[[
    Script Name    : Spells/Fighter/Brawler/Monk/SilentThreat.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.13 07:01:52
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
