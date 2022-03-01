--[[
	Script Name	: Spells/Commoner/NormalMeal.lua
	Script Purpose	: Apply food buffs
	Script Author	: Zcoretri
	Script Date	: 2013.04.11
	Script Notes	: 
--]]

function cast(Caster, Target, Bonus)
	AddSpellBonus(Target, 600, Bonus)
end

function remove(Caster, Target, Bonus)
	RemoveSpellBonus(Target)
end