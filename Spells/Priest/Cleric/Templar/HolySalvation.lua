--[[
    Script Name    : Spells/Priest/Cleric/Templar/HolySalvation.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 12:10:03
    Script Purpose : 
                   : 
--]]

-- On death this spell will cast Salvation on target.  Lasts for 36.0 seconds.  
--     Heals target for 512
--     Increases Mitigation of target vs physical damage by 369
--     Grants a total of 1 trigger of the spell.

function cast(Caster, Target, HealAmt, MitAmt, Triggers)
	AddProc(Target, 13, 100)
		SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, Type, HealAmt, MitAmt, Triggers)
	if Type == 13 then
			Spell = GetSpell(5448, GetSpellTier())
				SetSpellDataIndex(Spell, 0, HealAmt)
					SetSpellDataIndex(Spell, 1, MitAmt)
						CastCustomSpell(Spell, Caster, Target)
		RemoveTriggerFromSpell()
end
end

function remove(Caster, Target)
	RemoveProc(Target)
end