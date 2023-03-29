--[[
    Script Name    : Spells/Fighter/Warrior/Wound.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.02 09:01:45
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, DotDmg, SpellLevel)
    Level = GetLevel(Caster)
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

end


function tick(Caster, Target, DmgType, MinVal, MaxVal, DotDmg, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    TotalDmg = math.floor(DmgBonus) * 2 + DotDmg
    
    
    SpellDamage(Target, DmgType, TotalDmg, TotalDmg)

end

