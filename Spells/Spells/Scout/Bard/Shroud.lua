--[[
    Script Name    : Spells/Scout/Bard/Shroud.lua
    Script Author  : theFoof
    Script Date    : 2014.1.16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
-- Grants stealth to caster
-- Suspends caster's movement speed enhancements
    Stealth(1)
end

function remove(Caster, Target)
    RemoveStealth()
end

