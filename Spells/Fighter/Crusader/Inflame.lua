--[[
    Script Name    : Spells/Fighter/Crusader/Inflame.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 04:11:16
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target by 651 - 977  instantly and by 130 - 195  every 3 seconds thereafter

function cast(Caster, Target, MinVal, MaxVal, TickMin, TickMax)
   if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MaxVal, MinVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end
end

function tick(Caster, Target)
   if TickMax ~= nil and TickMin < TickMax then
        AddHate(Caster, Target, math.random(TickMax, TickMin), 1)
    else
        AddHate(Caster, Target, TickMin, 1)
    end
end