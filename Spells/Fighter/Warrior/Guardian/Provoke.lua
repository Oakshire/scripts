--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Provoke.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 12:11:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
    -- Interrupts target
        Interrupt(Caster, Target)
end
