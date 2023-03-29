--[[
    Script Name    : Spells/Mage/Summoner/BludgeoningEarth.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.24 04:03:20
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, DotType, DotMin, DotMax)
    Level = GetLevel(Caster)
    SpellLevel = 17
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus  + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
 
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DotType, DotMin, DotMax)
    Level = GetLevel(Caster)
    SpellLevel = 17
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDot = math.floor(DmgBonus) * 2 + DotMax
    MinDot = math.floor(DmgBonus) * 2 + DotMin
    
    SpellDamage(Target, DotType, MinDot, MaxDot)

end

