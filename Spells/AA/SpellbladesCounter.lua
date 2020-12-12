--[[
    Script Name    : Spells/AA/SpellbladesCounter.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:49
    Script Purpose : 
                   : 
--]]

-- Interrupts target
-- Inflicts 249 - 415 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	Say(Caster, "This spell cannot be parried, riposted, blocked, or deflected. if you see this happen, bug report it.")
	Interrupt(Caster, Target)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end