--[[
    Script Name    : Spells/Scout/Predator/BladeFlurry.lua
    Script Author  : LordPazuzu
    Script Date    : 3/31/2023
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell may cast Swipe on target of attack.  Triggers about 2.0 times per minute. 
--     Inflicts 35 - 58 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 3, 5)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
	Level = GetLevel(Caster)
    SpellLevel = 17
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
	
	if Type == 3 then
		Spell = GetSpell(2550396, GetSpellTier())
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinDmg)
		SetSpellDataIndex(Spell, 2, MaxDmg)
		CastCustomSpell(Spell, Caster, Target)
			end
end

function remove(Caster, Target)
	RemoveProc(Target)
 end