--[[
    Script Name    : Spells/Mage/Sorcerer/FlamesofVelious.lua
    Script Author  : neatz09
    Script Date    : 2020.09.19 01:09:17
    Script Purpose : 
                   : 
--]]

-- Inflicts 190 heat damage on target
-- Inflicts 190 cold damage on target
-- Slows target by 33.3%

function cast(Caster, Target, DmgType, MinVal, DmgType2, MinVal2, SlowAmt)
local Slow = 100 - SlowAmt
	SpellDamage(Target, DmgType, MinVal)
	SpellDamage(Target, DmgType2, MinVal2)
	SetSpeedMultiplier(Target, Slow)
end


function remove(Caster, Target)
SetSpeedMultiplier(Target, 1)
end