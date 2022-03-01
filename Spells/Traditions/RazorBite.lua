--[[
    Script Name    : Spells/Traditions/RazorBite.lua
    Script Author  : neatz09
    Script Date    : 2020.08.18 01:08:26
    Script Purpose : 
                   : 
--]]

-- Inflicts 1 - 2 slashing damage on target
-- Inflicts 1 - 2 slashing damage on target every 8 seconds

function cast(Caster, Target)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
end


function tick(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end