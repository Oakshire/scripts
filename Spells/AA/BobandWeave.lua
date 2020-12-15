--[[
    Script Name    : Spells/AA/BobandWeave.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:34
    Script Purpose : 
                   : 
--]]

-- Caster will Dodge 1.0% of incoming attacks

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 638, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end