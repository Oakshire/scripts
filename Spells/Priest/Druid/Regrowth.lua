--[[
    Script Name    : Spells/Priest/Druid/Regrowth.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:11
    Script Purpose : 
                   : 
--]]

-- Heals target for 34 - 42 instantly and every 2 seconds

function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 12
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

function tick(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 12
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