--[[
    Script Name    : Spells/AA/EmpathicAura.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:57
    Script Purpose : 
                   : 
--]]

-- Improves heal amount by 0.8%.

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 701, BonusAmt)
    Say(Caster, "Using stat 701... could be wrong")
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end