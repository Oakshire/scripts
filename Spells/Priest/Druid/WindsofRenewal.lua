--[[
    Script Name    : Spells/Priest/Druid/WindsofRenewal.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:41
    Script Purpose : 
                   : 
--]]

-- Heals group members (AE) for 40 - 49 instantly and every 2 seconds

function cast(Caster, Target, HealMin, HealMax)
	Level = GetLevel(Caster)
    SpellLevel = 14
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinHeal = math.floor(HealBonus) * 2 + HealMin
    MaxHeal = math.floor(HealBonus) * 2 + HealMax
    
    SpellHeal("Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, HealMin, HealMax)
	Level = GetLevel(Caster)
    SpellLevel = 14
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinHeal = math.floor(HealBonus) * 2 + HealMin
    MaxHeal = math.floor(HealBonus) * 2 + HealMax
    
    SpellHeal("Heal", MinHeal, MaxHeal)
end