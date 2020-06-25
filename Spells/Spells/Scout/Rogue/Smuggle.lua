--[[
    Script Name    : Spells/Scout/Rogue/Smuggle.lua
    Script Author  : theFoof
    Script Date    : 2014.1.16
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    return not IsInCombat(Caster)
end

function cast(Caster, Target)
-- Grants stealth to group members (AE)
-- Suspends group members (AE)'s movement speed enhancements
-- This effect cannot be cast during combat
    Stealth(1)
end

function remove(Caster, Target)
    RemoveStealth()
end

