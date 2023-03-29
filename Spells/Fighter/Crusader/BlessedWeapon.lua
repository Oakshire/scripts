--[[
    Script Name    : Spells/Fighter/Crusader/BlessedWeapon.lua
    Script Author  : LordPazuzu
    Script Date    : 3/17/2023
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell may cast Blessed Strike on target of attack.  Triggers about 2.0 times per minute. 
--     Inflicts 21 - 35 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, Chance)
	AddProc(Target, 3, Chance)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal, Chance)
	
	Spell = GetSpell(2550392, GetSpellTier())    
	Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal

	if Type == 3 then
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinDmg)
		SetSpellDataIndex(Spell, 2, MaxDmg)
		CastCustomSpell(Spell, Caster, Target)	    
	    end
end

function remove(Caster, Target)
	RemoveProc(Target)
end