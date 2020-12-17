--[[
    Script Name    : Spells/AA/InnovativeInsoles.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:48
    Script Purpose : 
                   : 
--]]

-- Increases Mount Speed of caster by 2.0%
-- Increases speed of caster by 2.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 611, BonusAmt)
	AddSpellBonus(Target, 609, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end