--[[
    Script Name    : Spells/Mage/Summoner/Invisibility.lua
    Script Author  : theFoof
    Script Date    : 2013.1.16 08:08:28
    Script Purpose : 
                   : 
--]]

function precast(Caster)
    return not IsInCombat(Caster)
end

function cast(Caster, Target)
-- Grants invisibility to target
-- Suspends target's movement speed enhancements
-- Grants invisibility to pet
-- Suspends pet's movement speed enhancements
-- Dispelled when target takes damage
-- This effect cancels during combat

    Stealth(2)
    if GetPet(Target) ~= nil then
        Stealth(2, GetPet(Target))
    elseif GetCharmedPet(Target) then
        Stealth(2, GetCharmedPet(Target))
    end
end

function remove(Caster, Target)
    RemoveInvis()
end

