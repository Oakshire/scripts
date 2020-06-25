--[[
	Script Name	: Heal (Spell Type)
	Script Purpose	: Generic script for healing spells
	Script Author	: John Adams
	Script Date	: 2008.12.03
	Script Note	: 
--]]

function cast(Caster, Target, HealType, HealMinVal, HealMaxVal)

	-- Heal Component
	if HealMinVal < HealMaxVal then
		ModifyHP(Caster, math.random(HealMinVal, HealMaxVal))
	else
		ModifyHP(Caster, HealMinVal)
	end

end
