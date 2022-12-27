--[[
    Script Name    : Spells/Mage/Sorcerer/IceSpike.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:15
    Script Purpose : 
                   : 
--]]

-- Inflicts 45 - 84 cold damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    
    
	SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end