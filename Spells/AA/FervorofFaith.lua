--[[
    Script Name    : Spells/AA/FervorofFaith.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 01:12:06
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of caster by 2.6

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 654, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end