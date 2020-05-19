--[[
	Script Name	: Spells/Commoner/BetaDamage.lua
	Script Purpose	: Generic damage + 1 effect script
	Script Author	: John Adams
	Script Date	: 2008.12.02
--]]

function cast(Caster, Target, DDType, MinDDVal, MaxDDVal, EffectType, DamageType, MinEffectVal, MaxEffectVal)

	-- DD component
	if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
                dmgAmount = math.random(MinDDVal, MaxDDVal)
		SpellDamage(Target, DDType, dmgAmount)
                --AddHate(Caster, Target, dmgAmount)
	else
		SpellDamage(Target, DDType, MinDDVal)
                --AddHate(Caster, Target, MinDDVal)
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
		if EffectType == "heal" then
			ModifyHP(Caster, EffectValue)
		else
			SpellDamage(Target, DamageType, EffectValue)
		end

	end

end

function tick(Caster, Target, DDType, MinDDVal, MaxDDVal, EffectType, DamageType, MinEffectVal, MaxEffectVal)

	if MaxEffectVal ~= nil and MinEffectVal < MaxEffectVal then
		EffectValue = math.random(MinEffectVal, MaxEffectVal)
	else
		EffectValue = MinEffectVal
	end

	if EffectType == "heal" then
		ModifyHP(Caster, EffectValue)
	else
		SpellDamage(Target, DamageType, EffectValue)
	end

end
