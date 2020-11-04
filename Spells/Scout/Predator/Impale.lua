--[[
    Script Name    : Spells/Scout/Predator/Impale.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:36
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 19 - 33 piercing damage on target
-- Inflicts 5 - 9 piercing damage on target instantly and every 4 seconds
-- If facing target
function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    Say(Caster, "Facing Target not implemented")
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
	SpellDamage(Target, TickType, TickMin, TickMax)
end