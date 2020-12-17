--[[
    Script Name    : Spells/AA/SteadyHands.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:47
    Script Purpose : 
                   : 
--]]

-- Increases the amount of durability gained by 1.0.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 801, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end