--[[
    Script Name    : Spells/Mage/Summoner/PeltingEarth.lua
    Script Author  : LordPazuzu
    Script Date    : 2-16-2023
    Script Purpose : -
-                   : 
--]]

-- Inflicts 22 - 34 magic damage on target
-- Inflicts 5 - 8 magic damage on target every 4 seconds
function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    Level = GetLevel(Caster)
    SpellLevel = 10
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

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
        Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    TickMaxDmg = TickMax + math.floor(DmgBonus)
    TickMinDmg = TickMin + math.floor(DmgBonus)
    
    
	SpellDamage(Target, TickType, TickMinDmg, TickMaxDmg)
end
