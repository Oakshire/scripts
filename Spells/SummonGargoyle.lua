--[[
    Script Name    : Spells/SummonGargoyle.lua
    Script Author  : Ememjr
    Script Date    : 2019.04.21 07:04:05
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Decreases Hate Gain of caster by 4.0%
-- Summons a pet lesser gargoyle

function cast(Caster, Target, HateGain)
    AddSpellBonus(Target, 624, HateGain)
    SummonCosmeticPet(Caster, 340083)
end
    
function remove(Caster, Target)
    RemoveSpellBonus(Target)
    pet = GetCosmeticPet(Caster)
    if pet ~= nil then
        DismissPet(pet)
    end
end



