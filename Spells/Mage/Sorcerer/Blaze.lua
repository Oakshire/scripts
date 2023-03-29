--[[
    Script Name    : Spells/Mage/Sorcerer/Blaze.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.23 07:11:37
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DoTType, MinVal, MaxVal, DotMin, DotMax, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    
    
    SpellDamage(Target, DoTType, MinDmg, MaxDmg)
    
end


function tick(Caster, Target, DoTType, MinVal, MaxVal, DotMin, DotMax, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + DotMax
    MinDmg = math.floor(DmgBonus) * 2 + DotMax
    
    SpellDamage(Target, DoTType, MinDmg, MaxDmg)
end

