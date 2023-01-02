--[[
    Script Name    : Spells/Mage/Sorcerer/PainfulMeditation.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:33
    Script Purpose : 
                   : 
--]]

-- Increases power of caster by 29

function cast(Caster, Target, Amount, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    PowBonus = LvlBonus + StatBonus
    PowHealg = Amount + math.floor(PowBonus)
    
    SpellHeal("Power", PowHeal)
end