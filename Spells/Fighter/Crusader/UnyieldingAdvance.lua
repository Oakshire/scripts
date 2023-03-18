--[[
    Script Name    : Spells/Fighter/Crusader/UnyieldingAdvance.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.17 04:03:19
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, Hate)
    Level = GetLevel(Caster)
    SpellLevel = 13
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus *2 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    TotalHate = LvlBonus *2 + Hate
    AddHate(Caster, Target, TotalHate, 1)
    
      if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
    
    

end
