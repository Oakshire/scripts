--[[
    Script Name    : Spells/Priest/Cleric/BestowalofVitae.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 12:10:59
    Script Purpose : 
                   : 
--]]

-- When any damage is received this spell will cast Vitae on target.  
--     Heals target for 34 - 42
--     Grants a total of 5 triggers of the spell.

function cast(Caster, Target, HealMin, HealMax, Triggers)
	AddProc(Target, 15, 100)
		SetSpellTriggerCount(Triggers, 1)

end

function proc(Caster, Target, Type, HealMin, HealMax, Triggers)
	if Type == 15 then
		SpellHeal("Heal", HealMin, HealMax, Target, 0, 0, "Vitae")
			RemoveTriggerFromSpell()
		end
end

function remove(Caster, Target)
	RemoveProc(Target)
end