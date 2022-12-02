--[[
    Script Name    : Spells/Priest/Cleric/Radiance.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 12:10:22
    Script Purpose : 
                   : 
--]]

-- When any damage is received this spell will cast Vitae on target.  
--     Heals target for 47 - 58
--     Grants a total of 5 triggers of the spell.

function cast(Caster, Target, HealMin, HealMax, Triggers)
	AddProc(Target, 15, 100)
		SetSpellTriggerCount(Triggers, 1)

end

function proc(Caster, Target, Type, HealMin, HealMax, Triggers)
	if Type == 15 then
		Spell = GetSpell(5455, GetSpellTier())
		SetSpellDataIndex(Spell, 0, HealMin)
		SetSpellDataIndex(Spell, 1, HealMax)
		CastCustomSpell(Spell, Caster, Target)
			RemoveTriggerFromSpell()
		end
end

function remove(Caster, Target)
	RemoveProc(Target)
end