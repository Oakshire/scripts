--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/DeviousBlade.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 10:11:32
    Script Purpose : 
                   : 
--]]

-- Inflicts 443 - 542 melee damage on target
function cast(Caster, Target, Dmgtype, MinVal, MaxVal, Hate)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
		if LastSpellAttackHit() then
			SetSpellTriggerCount(1, 1) 
				AddProc(Target, 16, 100)
end
end

function proc(Target, Caster, Type, DmgType, MinVal, MaxVal, Hate)

-- On a melee hit this spell will cast Blamed on target of attack.  Lasts for 10.0 seconds.  
--     Increases Hate Gain of target by 30.0%
--     Grants a total of 1 trigger of the spell.

	if Type == 17 then
		Spell = GetSpell(5446, GetSpellTier())
			SetSpellDataIndex(Spell, 0, Hate)
				CastCustomSpell(Spell, Caster, Target)
	RemoveTriggerFromSpell()
end

end

function remove(Caster, Target)
	RemoveProc(Target)
end