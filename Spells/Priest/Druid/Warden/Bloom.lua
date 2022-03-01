--[[
	Script Name	: HoT (Spell Type)
	Script Purpose	: Generic script for heal-over-time spells
	Script Author	: John Adams
	Script Date	: 2008.12.04
	Script Notes	: JA: Need to determine if HoT's land instantly with the initial heal, or wait til tick()
--]]

function cast(Caster, Target, HealType, HealMinVal, HealMaxVal, HOTType, HOTMinVal, HOTMaxVal)

	-- Heal component
	if HealMinVal < HealMaxVal then
		ModifyHP(Caster, math.random(HealMinVal, HealMaxVal))
	else
		ModifyHP(Caster, HealMinVal)
	end

	-- HoT component
	if HOTType ~= nil then
		-- Determine if there is a range to HoT values
		if HOTMaxVal ~= nil and HOTMinVal < HOTMaxVal then
			ModifyHP(Caster, math.random(HOTMinVal, HOTMaxVal))
		else
			ModifyHP(Caster, HOTMinVal)
		end
	end

end

function tick(Caster, Target, HealType, HealMinVal, HealMaxVal, HOTType, HOTMinVal, HOTMaxVal)

	if HOTMaxVal ~= nil and HOTMinVal < HOTMaxVal then
		ModifyHP(Caster, math.random(HOTMinVal, HOTMaxVal))
	else
		ModifyHP(Caster, HOTMinVal)
	end

end

function remove(Caster, Target)
	-- code to remove the spell
end
