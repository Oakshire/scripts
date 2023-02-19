--[[
    Script Name    : Spells/Mage/Summoner/SootheServant.lua
    Script Author  : LordPazuzu
    Script Date    : 2-18-2023
    Script Purpose : 
                   : 
--]]


-- Heals target for 85

function cast(Caster, Target, Min)
    Pet = GetPet(Caster)
    Level = GetLevel(Caster)
    SpellLevel = 14
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    HealBonus = LvlBonus * 2 + StatBonus
    HealMin = Min + math.floor(HealBonus)
  
SpellHeal("Heal", HealMin, HealMin, Pet)
end
