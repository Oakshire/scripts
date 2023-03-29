--[[
    Script Name    : Spells/Priest/Cleric/MarkofPawns.lua
    Script Author  : LordPazuzu
    Script Date    : 3/28/2023
    Script Purpose : 
                   : 
--]]

-- Decreases Mitigation of target vs arcane damage by 168
-- When damaged with a melee weapon this spell has a 20% chance to cast Mark of Nobility on target's attacker.  Lasts for 8.0 seconds.  
--     Heals target for 6 instantly and every 2 seconds

function cast(Caster, Target, Mit, Healz, Chance)
    AddSpellBonus(Target, 203, Mit)
	AddProc(Target, 16, Chance)
end



function proc(Caster, Target, Type, Mit, Heal, Chance)
    Level = GetLevel(Caster)
    SpellLevel = 18
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    TotalHeal = math.floor(HealBonus) * 2 + Heal
    
	Spell = GetSpell(5449, GetSpellTier())
		if Type == 16 then
			SetSpellDataIndex(Spell, 0, TotalHeal)
				CastCustomSpell(Spell, Caster, Target)
					end
end



function remove(Caster, Target)
	RemoveSpellBonus(Target)
	RemoveProc(Target)
end