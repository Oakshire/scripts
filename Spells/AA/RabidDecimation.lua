--[[
    Script Name    : Spells/AA/RabidDecimation.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:03
    Script Purpose : 
                   : 
--]]

-- Increases Crit Bonus of caster by 1%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 657, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end