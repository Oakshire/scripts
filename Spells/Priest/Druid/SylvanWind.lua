--[[
    Script Name    : Spells/Priest/Druid/SylvanWind.lua
    Script Author  : LordPazuzu
    Script Date    : 3/18/2023
    Script Purpose : 
                   : 
--]]

-- Heals group members (AE) for 61 - 74
-- Heals group members (AE) for 10 - 12 every second

function cast(Caster, Target, HealMin, HealMax, TickMin, TickMax)
	Level = GetLevel(Caster)
    SpellLevel = 16
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinHeal = HealMin + math.floor(HealBonus)
    MaxHeal = HealMax + math.floor(HealBonus)
    
    SpellHeal("Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, HealMin, HealMax, TickMin, TickMax)
	Level = GetLevel(Caster)
    SpellLevel = 16
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinTick = TickMin + math.floor(HealBonus)
    MaxTick = TickMax + math.floor(HealBonus)
    
    SpellHeal("Heal", MinTick, MaxTick)
end