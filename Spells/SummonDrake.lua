--[[
    Script Name    : Spells/SummonDrake.lua
    Script Author  : Ememjr
    Script Date    : 2019.04.21 08:04:32
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Ability Reuse Speed of caster by 1.6%
-- Summons a pet minor drake

function cast(Caster, Target, AbilityReuseSpeed)
    AddSpellBonus(Target, 662, AbilityReuseSpeed)
    SummonCosmeticPet(Caster, 150084)
end
    
function remove(Caster, Target)
    RemoveSpellBonus(Target)
    pet = GetCosmeticPet(Caster)
    if pet ~= nil then
        DismissPet(pet)
    end
end