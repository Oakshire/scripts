--[[
    Script Name    : Spells/Expertise.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 01:12:09
    Script Purpose : 
                   : 
--]]

-- Increases Potency of caster by 1.0%

function cast(Caster, Target, Pot)
    AddSpellBonus(Target, 659, Pot)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end