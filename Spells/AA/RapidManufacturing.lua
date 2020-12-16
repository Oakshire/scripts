--[[
    Script Name    : Spells/AA/RapidManufacturing.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:02
    Script Purpose : 
                   : 
--]]

-- Increases progress by 2.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 802, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end