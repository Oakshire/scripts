--[[
    Script Name    : Spells/AA/AmbidexterousCasting.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 04:12:23
    Script Purpose : 
                   : 
--]]

-- Interrupts target
-- Inflicts 187 - 311 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Interrupt(Caster, Target)
SpellDamage(Target, DmgType, MinVal, MaxVal)
end