--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/WindsofVelious.lua
    Script Author  : neatz09
    Script Date    : 2019.11.11 05:11:10
    Script Purpose : 
                   : 
--]]

-- Interrupts target
-- Inflicts 90 - 111 cold damage on target instantly and every 4 seconds
function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Interrupt(Target)
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Slows target by 75.0%
SetSpeedMultiplier(Target, 0.25)
end

-- Inflicts 90 - 111 cold damage on target instantly and every 4 seconds
function tick(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1)
end
