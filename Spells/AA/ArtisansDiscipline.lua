--[[
    Script Name    : Spells/AA/ArtisansDiscipline.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 01:12:49
    Script Purpose : 
                   : 
--]]

-- Increases the amount of progress gained by 1.0%.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 803, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end