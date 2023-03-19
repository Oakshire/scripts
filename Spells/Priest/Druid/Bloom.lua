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
    MinHeal = MinVal + math.floor(HealBonus)
    MaxHeal = MaxVal + math.floor(HealBonus)
    
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
    MiTick = TickMin + math.floor(HealBonus)
    MaxTick = TickMax + math.floor(HealBonus)
    
    SpellHeal("Heal", MinTick, MaxTick)
end