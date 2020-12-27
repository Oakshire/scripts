--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/Decree.lua
    Script Author  : neatz09
    Script Date    : 2019.09.27 10:09:09
    Script Purpose : 
                   : 
--]]


-- Inflicts 208 - 347 divine damage on target encounter

function cast(Caster, Target, DmgType, MinVal, MaxVal)
 SpellDamage(Target, DmgType, MinVal, MaxVal)

-- Interrupts target encounter
Interrupt(Caster, Target)
end


