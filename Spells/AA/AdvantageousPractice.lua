--[[
    Script Name    : Spells/AA/AdvantageousPractice.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:34
    Script Purpose : 
                   : 
--]]

-- Increases critical success chance by 2.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 805, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end