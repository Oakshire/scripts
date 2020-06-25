--[[
	Script Name	: Spells/Commoner/NormalDrink.lua
	Script Purpose	: Apply drink buffs
	Script Author	: Zcoretri
	Script Date	: 2013.04.11
	Script Notes	: 
--]]

function cast(Caster, Target, Bonus)
	AddSpellBonus(Target, 601, Bonus)
end

function remove(Caster, Target, Bonus)
	RemoveSpellBonus(Target)
end