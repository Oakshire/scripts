--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Shout.lua
    Script Author  : Dello
    Script Date    : 13/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
AddHate(Caster, Target, math.random(MinVal, MaxVal), 1)
    -- Interrupts target
        Interrupt(Caster, Target)
end
