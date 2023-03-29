--[[
    Script Name    : Spells/Mage/Summoner/Seism.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.24 04:03:07
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, DmgType, MinVal, MaxVal, Arcane)
    Level = GetLevel(Caster)
    SpellLevel = 16
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal

    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    --AddSpellBonus(Target, 203, Arcane)
    Say(Caster, "Resist debuff not implemented.")
    
    if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
  
end

    
    
function remove(Caster, Target)
    RemoveSpellBonus(Target)
end




