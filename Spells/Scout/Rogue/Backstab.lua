--[[
    Script Name    : Spells/Scout/Rogue/Backstab.lua
    Script Author  : neatz09
    Script Date    : 2020.11.10 11:11:16
    Script Purpose : 
                   : 
--]]

-- Inflicts 46 - 78 melee damage on target
-- Decreases AGI of target by 7.2
-- Must be flanking or behind

function precast(Caster, Target)
	if not IsFlanking(Caster, Target) then
		SendMessage(Caster, "Must be flanking or behind", "yellow")
			return false
				end
	return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, Agi)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddSpellBonus(Target, 2, Agi)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end