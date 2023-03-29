--[[
    Script Name    : Spells/Priest/Cleric/BestowalofVitality.lua
    Script Author  : LordPazuzu
    Script Date    : 3/28/2023
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

    HealBonus = LvlBonus + StatBonus
    MinHeal = math.floor(HealBonus) * 2 + MinVal
    MaxHeal = math.floor(HealBonus) * 2 + MaxVal
    
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