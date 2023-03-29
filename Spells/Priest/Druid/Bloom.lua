--[[
    Script Name    : Spells/Priest/Druid/Bloom.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 03:11:49
    Script Purpose : 
                   : 
--]]

-- Heals target for 55 - 67
-- Heals target for 9 - 11 every second

function cast(Caster, Target, MinVal, MaxVal, TickMin, TickMax)
	Level = GetLevel(Caster)
	SpellLevel = 13
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinHeal = math.floor(HealBonus) * 2 + MinVal
    MaxHeal = math.floor(HealBonus) * 2 + MaxVal
    
    SpellHeal("Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, MinVal, MaxVal, TickMin, TickMax)
	Level = GetLevel(Caster)
	SpellLevel = 13
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinTick = math.floor(HealBonus) * 2 + TickMin
    MaxTick = math.floor(HealBonus) * 2 + Tickmax
    
    SpellHeal("Heal", MinTick, MaxTick)
end