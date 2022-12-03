--[[
    Script Name    : Spells/Priest/Cleric/Radiance.lua
    Script Author  : LordPazuzu
    Script Date    : 12/2/2022
    Script Purpose : 
                   : 
--]]

-- When any damage is received this spell will cast Vitae on target.  
--     Heals target based on level.
--     Grants a total of 5 triggers of the spell.

function cast(Caster, Target, HeaMinMod, HealMaxMod, Triggers)
    level= GetLevel(Caster)
	HealMin = level * HealMinMod
	HealMax = HealMin  * HealMaxMod
	AddProc(Target, 15, 100)
		SetSpellTriggerCount(5, 1)

end

function proc(Caster, Target, Type, HeaMin, HealMax, Triggers)

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