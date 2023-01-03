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

    DmgBonus = LvlBonus *1.5 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

end


function tick(Caster, Target, DmgType, DotDmg, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus *1.5 + StatBonus
    TotalDmg = DotDmg + math.floor(DmgBonus)
    
    
    SpellDamage(Target, DmgType, TotalDmg, TotalDmg)

end

