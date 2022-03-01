--[[
	Script Name	: Spells/Priest/Cleric/Templar/HolyArmor.lua
	Script Purpose	: Templar Holy Armor spell line
	Script Author	: theFoof
	Script Date	: 2014.3.9
--]]

function cast(Caster, Target, HealthAmt, MitAmt)
    AddSpellBonus(Target, 200, MitAmt, 11, 21, 31)
    AddSpellBonus(Target, 500, HealthAmt, 1)
end

function remove(Caster, Target, HealthAmt, MitAmt)
    RemoveSpellBonus(Target)
end