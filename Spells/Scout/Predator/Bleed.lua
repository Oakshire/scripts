--[[
    Script Name    : Spells/Scout/Predator/Bleed.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:57
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
    
    DmgBonus = LvlBonus * 2 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
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
    MaxTick = TickMax + math.floor(DmgBonus)
    MinTick = TickMin + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
	SpellDamage(Target, TickType, MinTick, MaxTick)
end


