--[[
    Script Name    : Spells/Priest/Cleric/ArchHealing.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:45
    Script Purpose : 
                   : 
--]]

-- Heals target for 182 - 223

function cast(Caster, Target, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
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
