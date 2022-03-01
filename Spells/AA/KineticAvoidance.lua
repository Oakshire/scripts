--[[
    Script Name    : Spells/AA/KineticAvoidance.lua
    Script Author  : neatz09
    Script Date    : 2020.12.21 12:12:34
    Script Purpose : 
                   : 
--]]

-- Decreases Hate Gain of caster by 2.0%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 624, BonusAmt)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end