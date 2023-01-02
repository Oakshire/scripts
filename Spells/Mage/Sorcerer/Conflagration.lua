--[[
    Script Name    : Spells/Mage/Sorcerer/Conflagration.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:30
    Script Purpose : 
                   : 
--]]

-- Inflicts 65 - 121 heat damage on targets in Area of Effect

function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
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