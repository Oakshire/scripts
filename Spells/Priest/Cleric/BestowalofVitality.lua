--[[
    Script Name    : Spells/Priest/Cleric/BestowalofVitality.lua
    Script Author  : neatz09
    Script Date    : 2020.10.27 12:10:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, Triggers)
	AddProc(Target, 15, 100)
		SetSpellTriggerCount(Triggers, 1)

end

function proc(Caster, Target, Type, MinVal, MaxVal, Triggers)
    Level = GetLevel(Caster)
    SpellLevel= 19
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus * 2 + StatBonus
    MinHeal = MinVal + math.floor(HealBonus)
    MaxHeal = MaxVal + math.floor(HealBonus)
    
	if Type == 15 then
		Spell = GetSpell(5455, GetSpellTier())
		SetSpellDataIndex(Spell, 0, MinHeal)
		SetSpellDataIndex(Spell, 1, MaxHeal)
		CastCustomSpell(Spell, Caster, Target)
			RemoveTriggerFromSpell()
		end
end

function remove(Caster, Target)
	RemoveProc(Target)
end