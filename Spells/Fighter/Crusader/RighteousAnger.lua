--[[
    Script Name    : Spells/Fighter/Crusader/RighteousAnger.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 04:11:37
    Script Purpose : 
                   : 
--]]

-- Interrupts target
-- Inflicts 25 - 41 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Interrupt(Caster, Target)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end