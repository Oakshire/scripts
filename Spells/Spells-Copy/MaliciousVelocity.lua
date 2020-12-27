--[[
    Script Name    : Spells/MaliciousVelocity.lua
    Script Author  : neatz09
    Script Date    : 2020.05.20 07:05:46
    Script Purpose : 
                   : 
--]]

-- Increases speed of caster by 5.0%

function cast(Caster, Target)
    AddSpellBonus(Target, 609, 5)
end
