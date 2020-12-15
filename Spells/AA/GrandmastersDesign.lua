--[[
    Script Name    : Spells/AA/GrandmastersDesign.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:39
    Script Purpose : 
                   : 
--]]

-- Increases critical success chance by 1.0%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 805, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end