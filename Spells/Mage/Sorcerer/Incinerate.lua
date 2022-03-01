--[[
    Script Name    : Spells/Mage/Sorcerer/Incinerate.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:53
    Script Purpose : 
                   : 
--]]

-- Inflicts 10 - 18 heat damage on target instantly and every 3 seconds

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end