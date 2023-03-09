--[[
    Script Name    : Spells/Traditions/Maul.lua
    Script Author  : LordPazuzu
    Script Date    : 3/8/2-23
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 1
    Mastery = SpellLevel + 50
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end


function tick(Caster, Target, DmgType, Minval, MaxVal)
        Level = GetLevel(Caster)
    SpellLevel = 1
    Mastery = SpellLevel + 50
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end
