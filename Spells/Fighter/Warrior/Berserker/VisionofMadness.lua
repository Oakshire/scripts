--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/VisionofMadness.lua
    Script Author  : neatz09
    Script Date    : 2020.12.01 12:12:20
    Script Purpose : 
                   : Subspell 5460 Madness
--]]

-- On death this spell will cast Madness on caster.  Lasts for 5.0 seconds.  
--     Heals caster for 2.7% of max health instantly and every second
--         This effect cannot be critically applied.
--         If target is not berserk
--     Heals caster for 13.5% of max health instantly and every second
--         This effect cannot be critically applied.
--         If target is berserk
--     Grants a total of 1 trigger of the spell.
--     Grants a total of 1 trigger of the spell.

function cast(Caster, Target, RegHeal, ModHeal)
	AddProc(Target, 13, 100)
	SetSpellTriggerCount(1, 1)
end

function proc(Caster, Target, Type, RegHeal, ModHeal)
	Spell = GetSpell(5460, GetSpellTier())	
		if Type == 13 then
			SetSpellDataIndex(Spell, 0, RegHeal)
			SetSpellDataIndex(Spell, 1, ModHeal)
			CastCustomSpell(Spell, Caster, Target)
				end
	RemoveTriggerFromSpell()
end

function remove(Caster, Target)
	RemoveProc(Target)
end