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

function cast(Caster, Target)

	AddProc(Target, 15, 100)
		SetSpellTriggerCount(5, 1)

end

function proc(Caster, Target, Type, HeaMin, HealMax, Triggers)
    local level= GetLevel(Caster)
	local HealMin = level * 3.825
	local HealMax = HealMin  * 1.23

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