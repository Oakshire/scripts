--[[
    Script Name    : Spells/Mage/Enchanter/Charm.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.26 07:11:01
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Charms target
*Increases Power Regen of target by 2.7
*Increases Health Regen of target by 5.4
*If outside an arena
*Certain enemies cannot be charmed
*Only affects targets level 24 and below
*Does not affect Epic targets

--]]

function precast(Caster, Target)
    if GetLevel(Target) > 24 then
        return false
    end
    
    return true
    
end

function cast(Caster, Target, PRegen, HRegen)
    Charm(Caster, Target)
    AddSpellBonus(Target, 601, PRegen)
    AddSpellBonus(Target, 600, HRegen)
    
end


function remove(Caster, Target)
    local pet = GetCharmedPet(Caster)
    if pet ~= nil then
        RemoveSpellBonus(pet)
        DismissPet(pet)
    end
end

