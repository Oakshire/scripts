--[[
    Script Name    : Spells/Priest/Cleric/SoothingSermon.lua
    Script Author  : neatz09
    Script Date    : 2020.11.10 10:11:56
    Script Purpose : 
                   : 
--]]

-- When any damage is received this spell will cast Vitae on target, which can be triggered up to 9 times across all targets.  
--     Heals target for 40 - 49

function cast(Caster, Target, HealMin, HealMax, Triggers)
	AddProc(Target, 15, 100, nil, 1)
	SetSpellTriggerCount(Triggers, 1)
end

function Proc(Caster, Target, Type, HealMin, HealMax, Triggers)
	Spell = GetSpell(5455, GetSpellTier())
		if Type == 15 then
			SetSpellDataIndex(Spell, 0, HealMin)
			SetSpellDataIndex(Spell, 1, HealMax)
				CastCustomSpell(Spell, Caster, Target)
					RemoveTriggerFromSpell()
						end
end

function remove(Caster, Target)
	RemoveProc(Target)
end