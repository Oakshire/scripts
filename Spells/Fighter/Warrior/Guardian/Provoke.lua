--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Provoke.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 12:11:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        AddHate(Caster, Target, math.random(MaxVal, MinVal), 1)
    else
        AddHate(Caster, Target, MinVal, 1)
    end
end

    -- Interrupts target
    if target ~= nil then
        Interrupt(Caster, Target)
    end
end
