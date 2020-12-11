--[[
    Script Name    : Spells/AA/WildChanneling.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:14
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of caster by 1.2

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 654, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end