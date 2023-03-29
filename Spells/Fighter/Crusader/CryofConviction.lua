--[[
    Script Name    : Spells/Fighter/Crusader/CryofConviction.lua
    Script Author  : LordPazuzu
    Script Date    : 3/17/2023
    Script Purpose : 
                   : 
--]]

-- Inflicts 34 - 57 divine damage on targets in Area of Effect

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 14
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
end