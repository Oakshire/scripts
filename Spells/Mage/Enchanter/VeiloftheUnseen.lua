--[[
    Script Name    : Spells/Mage/Enchanter/VeiloftheUnseen.lua
    Script Author  : theFoof
    Script Date    : 2014.1.16
    Script Purpose : 
                   : 
--]]

function precast(Caster)
    return not IsInCombat(Caster)
end

function cast(Caster, Target)
--     Say(Caster, "Prevents AOE (except when direct) -- need support for this")

-- Grants invisibility to target
-- Suspends target's movement speed enhancements
-- Dispelled when target takes damage
-- This effect cancels during combat

   Stealth(2)
end

function remove(Caster, Target)
    RemoveInvis()
end

