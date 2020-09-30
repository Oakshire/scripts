--[[
    Script Name    : Spells/Mage/Sorcerer/Concussive.lua
    Script Author  : neatz09
    Script Date    : 2020.08.29 06:08:13
    Script Purpose : 
                   : 
--]]

-- Interrupts target encounter
-- Decreases Threat to target encounter by 998 - 1,220 

function cast(Caster, Target, HateLow, HateHigh)
    Interrupt(Caster, Target)
AddHate(Caster, Target, math.random(HateLow, HateHigh), 1)
    Say(Caster, "This spell needs a formula based on level")
end