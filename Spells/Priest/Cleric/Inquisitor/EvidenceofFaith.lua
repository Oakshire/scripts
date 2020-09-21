--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/EvidenceofFaith.lua
    Script Author  : neatz09
    Script Date    : 2020.03.02 08:03:10
    Script Purpose : 
                   : 
--]]

-- When any damage is received this spell will cast Vengeful Faith on target, which can be triggered up to 9 times across all targets.  
--     Heals target for 176 - 216
function cast(Caster, Target, HealMin, HealMax)
	AddProc(Target, 15, 100)
	SetSpellTriggerCount(9, 1)
    Say(Caster, "This spell may need a formula based on level?")

end

function proc(Caster, Target, Type, HealMin, HealMax)
	if type == 15 then
		SpellHeal("Heal", HealMin, HealMax, Target, 0, 0, "Vengeful Faith")
			RemoveTriggerFromSpell()
	end
end

function remove(Caster, Target)
	RemoveProc(Target)
end