--[[
    Script Name    : Spells/PredatoryStamina.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:36
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 1.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end