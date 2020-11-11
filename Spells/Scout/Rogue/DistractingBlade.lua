--[[
    Script Name    : Spells/Scout/Rogue/DistractingBlade.lua
    Script Author  : neatz09
    Script Date    : 2020.11.10 11:11:34
    Script Purpose : 
                   : 
--]]

-- Interrupts target
-- Inflicts 52 - 87 melee damage on target
-- Must be flanking or behind

function precast(Caster, Target)
	if not IsFlanking(Target, Caster) then
		SendMessage(Caster, "Must be flanking or behind", "yellow")
			return false
				end
	return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Interrupt(Caster, Target)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end