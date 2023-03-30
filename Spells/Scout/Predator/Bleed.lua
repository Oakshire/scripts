--[[
    Script Name    : Spells/Scout/Predator/Bleed.lua
    Script Author  : LordPazuzu
    Script Date    : 3/29/2023
    Script Purpose : 
                   : 
--]]

-- Inflicts 4 - 6 melee damage on target
-- Inflicts 8 - 14 piercing damage on target instantly and every 4 seconds
-- If facing target

function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    Say(Caster, "Facing Target not implemented")
	Level = GetLevel(Caster)
    SpellLevel = 12
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MaxVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    Level = GetLevel(Caster)
    SpellLevel = 12
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxTick = math.floor(DmgBonus) * 2 + TickMax
    MinTick = math.floor(DmgBonus) * 2 + TickMin
    
  	SpellDamage(Target, TickType, MinTick, MaxTick)
end


