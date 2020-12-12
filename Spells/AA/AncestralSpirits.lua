--[[
    Script Name    : Spells/AA/AncestralSpirits.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 05:12:44
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of caster by 1.6

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 654, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end