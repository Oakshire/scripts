--[[
    Script Name    : Spells/Scout/Rogue/RuthlessCunning.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:59
    Script Purpose : 
                   : 
--]]

-- Increases Multi Attack of caster by 27.2

function cast(Caster, Target, Multi)
    AddSpellBonus(Target, 641, Multi)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
