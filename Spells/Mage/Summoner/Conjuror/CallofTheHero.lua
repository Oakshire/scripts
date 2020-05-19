--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/CallofTheHero.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 12:10:03
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)

-- This effect cannot be cast during combat
function precast(Caster)
    return not IsInCombat(Caster)
end

-- Teleports target to caster