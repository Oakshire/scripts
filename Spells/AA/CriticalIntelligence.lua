--[[
    Script Name    : Spells/AA/CriticalIntelligence.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:44
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of caster by 1.3

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 629, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end