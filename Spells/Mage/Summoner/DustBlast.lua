--[[
    Script Name    : Spells/Mage/Summoner/DustBlast.lua
    Script Author  : LordPazuzu
    Script Date    : 2-18-2023
    Script Purpose : -
                   : 
--]]

-- Inflicts 33 - 49 magic damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 13
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus * 2 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end