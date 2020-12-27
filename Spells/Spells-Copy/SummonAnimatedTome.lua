--[[
    Script Name    : Spells/SummonAnimatedTome.lua
    Script Author  : Ememjr
    Script Date    : 2019.04.21 08:04:26
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Crit Chance of caster by 2.3
-- Summons a pet arcane tome
function cast(Caster, Target, CritChance)
    AddSpellBonus(Target, 656, CritChance)
    SummonCosmeticPet(Caster, 150084)
end
    
function remove(Caster, Target)
    RemoveSpellBonus(Target)
    pet = GetCosmeticPet(Caster)
    if pet ~= nil then
        DismissPet(pet)
    end
end