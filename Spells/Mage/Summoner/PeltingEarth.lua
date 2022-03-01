--[[
    Script Name    : Spells/Mage/Summoner/PeltingEarth.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 01:11:46
    Script Purpose : 
                   : 
--]]

-- Inflicts 22 - 34 magic damage on target
-- Inflicts 5 - 8 magic damage on target every 4 seconds
function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
	SpellDamage(Target, TickType, TickMin, TickMax)
end