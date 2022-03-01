--[[
    Script Name    : Spells/Priest/Cleric/Templar/MarkofDivinity.lua
    Script Author  : neatz09
    Script Date    : 2019.10.10 04:10:10
    Script Purpose : 
                   : 
--]]

-- Decreases Mitigation of target vs arcane damage by 168
-- When damaged with a melee weapon this spell has a 20% chance to cast Mark of Nobility on target's attacker.  Lasts for 8.0 seconds.  
--     Heals target for 6 instantly and every 2 seconds

function cast(Caster, Target, Mit, Chance, HealAmt)
	AddSpellBonus(Target, 203, Mit)
	AddProc(Target, 15, 20)
end

function proc(Caster, Target, Type, Mit, Chance, HealAmt)
	if Type == 15 then
		Spell = GetSpell(5449, GetSpellTier())
			SetSpellDataIndex(Spell, 0, HealAmt)
				CastCustomSpell(Spell, Caster, Target)
					end
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
	RemoveProc(Target)
end