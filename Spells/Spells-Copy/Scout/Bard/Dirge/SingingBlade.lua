--[[
	Script Name	: dd_heal.lua
	Script Purpose	: Generic damage + Heal effect script
	Script Author	: John Adams
	Script Date	: 2008.12.02
--]]

function cast(Caster, Target, DDType, MinDDVal, MaxDDVal, EffectType, MinEffectVal, MaxEffectVal)

	-- DD component
	if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
		SpellDamage(Target, DDType, math.random(MinDDVal, MaxDDVal))
	else
		SpellDamage(Target, DDType, MinDDVal)
	end

	-- Effect component - only process this code if there is an EffectType param
	if EffectType ~= nil then

		-- Determine if there is a range to effect values
		if MaxEffectVal ~= nil and MinEffectVal < MaxEffectVal then
			EffectValue = math.random(MinEffectVal, MaxEffectVal)
		else
			EffectValue = MinEffectVal
		end

		-- Determine EffectType - either a DamageType or a String value passed as param 4
		if EffectType == "Heal" then
			ModifyHP(Caster, EffectValue)
		else
			-- something else
		end

	end

end

function tick(Caster, Target, DDType, MinDDVal, MaxDDVal, EffectType, MinEffectVal, MaxEffectVal)

	if MaxEffectVal ~= nil and MinEffectVal < MaxEffectVal then
		EffectValue = math.random(MinEffectVal, MaxEffectVal)
	else
		EffectValue = MinEffectVal
	end

	if EffectType == "heal" then
		ModifyHP(Caster, EffectValue)
	else
		-- something else
	end

end

function remove(Caster, Target)

end
