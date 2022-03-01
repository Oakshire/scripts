--[[
    Script Name    : Spells/AA/EmpathicBreeze.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 07:12:27
    Script Purpose : 
                   : 
--]]

-- Decreases Hate Gain of group members (AE) by 0.8%
--     If not fighter

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 624, BonusAmt, 11, 21, 31)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end