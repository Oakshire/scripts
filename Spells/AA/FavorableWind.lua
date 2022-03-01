--[[
    Script Name    : Spells/AA/FavorableWind.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 01:12:16
    Script Purpose : 
                   : 
--]]

-- Increases in-combat movement speed of caster by 5.0%
-- Increases speed of caster by 5.0%
function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 609, BonusAmt)
	AddSpellBonus(Target, 616, BonusAmt)
	AddSpellBonus(Target, 0, Stats)
	AddSpellBonus(Target, 1, Stats)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end