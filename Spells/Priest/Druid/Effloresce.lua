--[[
    Script Name    : Spells/Priest/Druid/Effloresce.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 07:01:39
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

    HealBonus = LvlBonus *2 + StatBonus
    MinHeal = MinVal + math.floor(HealBonus)
    MaxHeal = MaxVal + math.floor(HealBonus)
    
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
    MinHoT = HoTMin + math.floor(HealBonus)
    MaxHoT = HoTMax + math.floor(HealBonus)
    
    SpellHeal("Heal", MinHoT, MaxHoT)
end


