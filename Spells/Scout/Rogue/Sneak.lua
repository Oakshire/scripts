--[[
    Script Name    : Spells/Scout/Rogue/Sneak.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 01:12:19
    Script Purpose : 
                   : 
--]]

-- Grants stealth to caster
-- Suspends caster's movement speed enhancements
-- Grants See Stealth to caster

function cast(Caster, Target)
    Stealth(1)
    AddSpellBonus(Target, 633, 1)
end

function remove(Caster, Target)
    RemoveStealth()
    RemoveSpellBonus(Target)
end
