--[[
    Script Name    : Spells/Traditions/SwiftScamper.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:26
    Script Purpose : 
                   : 
--]]

-- Increases the amount of progress gained by 2.0%.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 803, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end