--[[
    Script Name    : Spells/Priest/Cleric/PrayerofAmelioration.lua
    Script Author  : LordPazuzu
    Script Date    : 1/3/2023
    Script Purpose : 
                   : 
--]]

-- Heals group members (AE) for 97 - 119


function cast(Caster, Target, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
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