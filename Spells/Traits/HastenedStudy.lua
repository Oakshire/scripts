--[[
    Script Name    : Spells/Traits/HastenedStudy.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 01:12:06
    Script Purpose : 
                   : 
--]]

-- Increases Power Regen of caster by 9.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 601, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end