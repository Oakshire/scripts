--[[
    Script Name    : Spells/Scout/Rogue/Bludgeon.lua
    Script Author  : LordPazuzu
    Script Date    : 1/3/2023
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 15
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
    

end
