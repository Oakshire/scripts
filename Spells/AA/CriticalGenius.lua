--[[
    Script Name    : Spells/AA/CriticalGenius.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:03
    Script Purpose : 
                   : 
--]]

-- Increases Crit Bonus of caster by 1.0%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 657, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end