--[[
	Script Name	: Spells/Priest/Druid/Fury/NaturesSalve.lua
	Script Author	: John Adams
	Script Date	: 2013.11.19
	Script Purpose	: 
--]]

function cast(Caster, Target, HealMinVal, HealMaxVal)

	-- Heal Component
	if HealMinVal < HealMaxVal then
		SpellHeal("Heal", HealMinVal, HealMaxVal)
	else
		SpellHeal("Heal", HealMinVal)
	end

end
