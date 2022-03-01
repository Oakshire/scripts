--[[
    Script Name    : Spells/Priest/Druid/Fury/FeralTenacity.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 11:10:43
    Script Purpose : 
                   : 
--]]

-- On death this spell will cast Feral Tenacity on target.  Lasts for 24.0 seconds.  
--     Heals target for 256
--     Heals target for 64 every 2 seconds
--     Increases AGI of target by 28.6
--     Grants a total of 1 trigger of the spell.

function cast(Caster, Target, HealAmt, TickAmt, Agi, Triggers)
	AddProc(Target, 13, 100)
	SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, Type, HealAmt, TickAmt, Agi, Triggers)
	if Type == 13 then
    	Spell = GetSpell(5451, GetSpellTier())
			SetSpellDataIndex(Spell, 0, HealAmt)
			SetSpellDataIndex(Spell, 1, TickAmt)
			SetSpellDataIndex(Spell, 2, Agi)
				CastCustomSpell(Spell, Caster, Target)
					RemoveTriggerFromSpell()
						end
end

function remove(Caster, Target)
	RemoveProc(Target)
end
