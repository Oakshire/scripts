--[[
    Script Name    : Spells/Scout/Predator/Bleed.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:57
    Script Purpose : 
                   : 
--]]

-- Inflicts 4 - 6 melee damage on target
-- Inflicts 8 - 14 piercing damage on target instantly and every 4 seconds
-- If facing target

function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    Say(Caster, "Facing Target not implemented")
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
	SpellDamage(Target, TickType, TickMin, TickMax)
end