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
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
 
end