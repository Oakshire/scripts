--[[
    Script Name    : Spells/Fighter/Warrior/Concussion.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, PwrMin, PwrMax)
-- Inflicts 23 - 39 crushing damage on target
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Decreases power of target by 23 - 38
SpellHeal("Power", PwrMin, PwrMax)
end




