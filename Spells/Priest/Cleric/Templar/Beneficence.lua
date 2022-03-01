--[[
    Script Name    : Spells/Priest/Cleric/Templar/Beneficence.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 12:10:05
    Script Purpose : 
                   : 
--]]

-- When any damage is received this spell will cast Supplicant's Prayer on target, which can be triggered up to 9 times across all targets.  
--     Heals target for 176 - 216
function cast(Caster, Target, HealMin, HealMax, Triggers)
	AddProc(Target, 15, 100, nil, 1)
	SetSpellTriggerCount(Triggers, 1)
Say(Caster, "This spell needs a formula")

end

function proc(Caster, Target, Type, HealMin, HealMax, Triggers)
	if Type == 15 then
		SpellHeal("Heal", HealMin, HealMax, Target, 0, 0, "Supplicant's Prayer")
			RemoveTriggerFromSpell()
		end
end

function remove(Caster, Target)
	RemoveProc(Target)
end