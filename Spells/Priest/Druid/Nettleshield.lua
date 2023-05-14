--[[
    Script Name    : Spells/Priest/Druid/Nettleshield.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:35
    Script Purpose : 
                   : 
--]]

-- When damaged with a melee weapon this spell will cast Nettleshield Thorns on target's attacker.  
--     Inflicts 3 piercing damage on target

function cast(Caster, Target, DmgType, MinVal)
	AddProc(Target, 4, 100)
end

function proc(Caster, Target, Type, DmgType, MinVal)
	
	Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MinDmg = MinVal + math.floor(DmgBonus)
    
  
	  	if Type == 4 then
		Spell = GetSpell(5503,1)
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinDmg)
		CastCustomSpell(Spell, Caster, Target)
		end
end

function remove(Caster, Target)
	RemoveProc(Target)
end