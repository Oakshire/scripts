--[[
    Script Name    : Spells/Mage/Sorcerer/Incinerate.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:53
    Script Purpose : 
                   : 
--]]

-- Inflicts 10 - 18 heat damage on target instantly and every 3 seconds

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	Level = GetLevel(Caster)
	SpellLevel = 17
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

function tick(Caster, Target, DmgType, MinVal, MaxVal)
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