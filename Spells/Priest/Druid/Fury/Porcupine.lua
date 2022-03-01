--[[
    Script Name    : Spells/Priest/Druid/Fury/Porcupine.lua
    Script Author  : neatz09
    Script Date    : 2020.03.01 10:03:04
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of raid and group members (AE) by 58.5
-- Increases Mitigation of raid and group members (AE) vs all damage by 1260
-- When any damage is received this spell will cast Porcupine Quills on target's attacker, which can be triggered up to 50 times across all targets.  
--     Inflicts 121 divine damage on target

function cast(Caster, Target, Health, Mit, DmgType, Dmg)
    AddSpellBonus(Target, 606, Health)
    AddSpellBonus(Target, 200, Mit)
    AddSpellBonus(Target, 201, Mit)
    AddSpellBonus(Target, 202, Mit)
    AddSpellBonus(Target, 203, Mit)
	AddProc(Target, 15, 100, nil, 1)
	SetSpellTriggerCount(50, 0)
end

function proc(Caster, Target, Type, Health, Mit, DmgType, Dmg)
	if Type == 15 then
		RemoveTriggerFromSpell()
			ProcDamage(Caster, Target, "Porcupine Quills", DmgType, Dmg)
				end
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
	RemoveProc(Target)
end