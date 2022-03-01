--[[
    Script Name    : Spells/Priest/Cleric/Templar/FocusedIntervention.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 12:10:38
    Script Purpose : 
                   : 
--]]

-- When any damage is received this spell will cast Benefaction on target.  
--     Heals target for 790 - 965
--     Grants a total of 8 triggers of the spell.
function cast(Caster, Target, HealMin, HealMax, Triggers)
	AddProc(Target, 15, 100)
		SetSpellTriggerCount(Triggers, 1)

end

function proc(Caster, Target, Type, HealMin, HealMax, Triggers)
	if Type == 15 then
		SpellHeal("Heal", HealMin, HealMax, Target, 0, 0, "Benefaction")
			RemoveTriggerFromSpell()
		end
end

function remove(Caster, Target)
	RemoveProc(Target)
end