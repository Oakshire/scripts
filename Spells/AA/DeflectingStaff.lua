--[[
    Script Name    : Spells/AA/DeflectingStaff.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 03:12:27
    Script Purpose : 
                   : 
--]]

-- Caster will Parry 1.0% of incoming attacks

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 637, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end