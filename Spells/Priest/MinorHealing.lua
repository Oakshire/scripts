--[[
    Script Name    : Spells/Priest/MinorHealing.lua
    Script Author  : LordPazuzu
    Script Date    : 12/6/2022
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel= 1
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
