--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Charm.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 05:03:40
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Charms target
-- Increases Out-of-Combat Power Regeneration of target by 2.0
-- Increases Out-of-Combat Health Regeneration of target by 4.0
-- Applies Disorientation on termination.  Lasts for 3.0 seconds.
--     Mesmerizes target
--     Dispelled when target takes damage
--     Epic targets gain an immunity to Mesmerize effects of 9.0 seconds and duration is reduced to 1.0 second.
-- Applies Warning on termination.  Lasts for 0.5 seconds.
--     Grants Sonic Vision to caster
-- Certain enemies cannot be charmed
-- Only affects targets level 16 and below
-- Does not affect Epic targets

function cast(Caster, Target, PowerRegen, HealthRegen, MaxLevel)
    if not IsEpic(Target) and (MaxLevel == 0 or GetLevel(Target) <= MaxLevel) then
        Charm(Caster, Target)
        AddSpellBonus(Target, 601, PowerRegen)
        AddSpellBonus(Target, 600, HealthRegen)
    end
end

function remove(Caster, Target)
    local pet = GetCharmedPet(Caster)
    if pet ~= nil then
        RemoveSpellBonus(pet)
        DismissPet(pet)
    end
end
