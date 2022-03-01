--[[
    Script Name    : Spells/Scout/Predator/Reconnoiter.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:19
    Script Purpose : 
                   : 
--]]

-- Decreases Hate Gain of caster by 13.0%

function cast(Caster, Target, Hate)
    AddSpellBonus(Target, 624, Hate)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end