--[[
    Script Name    : Spells/Traits/TrainingTechniques.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:09
    Script Purpose : 
                   : 
--]]

-- Increases Mount Speed of caster by 5.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 611, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end