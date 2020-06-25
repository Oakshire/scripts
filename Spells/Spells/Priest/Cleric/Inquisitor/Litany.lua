--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Litany.lua
    Script Author  : neatz09
    Script Date    : 2019.10.04 06:10:08
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
-- Interrupts target encounter
-- Inflicts 379 - 464 divine damage on target encounter    
Interrupt(Caster, Target)
SpellDamage(Target, DmgType, MinVal, MaxVal)
end
