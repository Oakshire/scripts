--[[
    Script Name    : Spells/Scout/Predator/Pierce.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:56
    Script Purpose : 
                   : 
--]]

-- Inflicts 27 - 46 melee damage on target
-- Inflicts 6 piercing damage on target every 4 seconds

function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin)
	SpellDamage(Target, TickType, TickMin, TickMax)
end