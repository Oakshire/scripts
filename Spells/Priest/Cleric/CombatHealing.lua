--[[
    Script Name    : Spells/Priest/Cleric/CombatHealing.lua
    Script Author  : LordPazuzu
    Script Date    : 12/18/2022
    Script Purpose : 
                   : 
--]]

-- Heals target for 91 - 111


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
        Say(Caster, "Offensive buff not implemented.")

end