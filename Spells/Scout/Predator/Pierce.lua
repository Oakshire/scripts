--[[
    Script Name    : Spells/Scout/Predator/Pierce.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:56
    Script Purpose : 
                   : 
--]]

-- Inflicts 27 - 46 melee damage on target
-- Inflicts 6 piercing damage on target every 4 seconds

function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin)
	Level = GetLevel(Caster)
    SpellLevel = 15
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

--[[function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin)
	SpellDamage(Target, TickType, TickMin, TickMax)
end--]]