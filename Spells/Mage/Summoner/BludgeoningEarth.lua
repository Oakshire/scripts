--[[
    Script Name    : Spells/Mage/Summoner/BludgeoningEarth.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.24 04:03:20
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, MinDot, MaxDot)
    Level = GetLevel(Caster)
    SpellLevel = 17
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus *2 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
 
end

function tick(Caster, Target, DmgType, MinDot, MaxDot)
    Level = GetLevel(Caster)
    SpellLevel = 17
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDot = MaxDot + math.floor(DmgBonus)
    MinDot = MinDot + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDot, MaxDot)

end

