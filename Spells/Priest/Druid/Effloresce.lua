--[[
    Script Name    : Spells/Priest/Druid/Effloresce.lua
    Script Author  : LordPazuzu
    Script Date    : 3/28/2023
    Script Purpose : 
                   : 
--]]

-- Heals target for 102 - 125
-- Heals target for 13 - 16 every second

function cast(Caster, Target, MinVal, MaxVal, HoTMin, HoTMax)
    Level = GetLevel(Caster)
    SpellLevel= 17
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus  + StatBonus
    MinHeal = math.floor(HealBonus) * 2 + MinVal
    MaxHeal = math.floor(HealBonus) * 2 + MaxVal
    
    SpellHeal("Heal", MinHeal, MaxHeal)
end

function tick(Caster, Target, MinVal, MaxVal, HoTMin, HoTMax)
    Level = GetLevel(Caster)
    SpellLevel= 17
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinHoT = math.floor(HealBonus) * 2 + HoTMin
    MaxHoT = math.floor(HealBonus) * 2 + HoTMax
    
    SpellHeal("Heal", MinHoT, MaxHoT)
end


