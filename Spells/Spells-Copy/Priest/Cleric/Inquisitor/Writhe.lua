--[[
	Script Name	: dot_debuff.lua
	Script Purpose	: Generic damage + 1 effect script
	Script Author	: John Adams
	Script Date	: 2008.12.04
--]]

function cast(Caster, Target, DOTType, MinDOTVal, MaxDOTVal, DebuffType, MinDebuffVal, MaxDebuffVal)

	-- Debuff component
	-- Determine if there is a range to effect values
	if MaxDebuffVal ~= nil and MinDebuffVal < MaxDebuffVal then

		-- JA: for debuff randoms (if any), need to to math.random with precision - I think this function rounds up?
		DebuffValue = math.random(MinDebuffVal, MaxDebuffVal)

	else

		DebuffValue = MinDebuffVal

	end

	-- Determine DebuffType - either a DamageType or a String value passed as param 4
	if DebuffType == "Defense" then

		-- Need functionality to buff/debuff
		-- ModifyDefense(Target, -DebuffValue)

	end

	if DebuffType == "Elemental" then

		-- Need functionality to buff/debuff
		-- ModifyHeat(Target, -DebuffValue)
		-- ModifyCole(Target, -DebuffValue)

	end

	-- DOT component (instant damage)
	if MaxDOTVal ~= nil and MinDOTVal < MaxDOTVal then

		SpellDamage(Target, DOTType, math.random(MinDOTVal, MaxDOTVal))

	else

		SpellDamage(Target, DOTType, MinDOTVal)

	end

end

function tick(Caster, Target, DOTType, MinDOTVal, MaxDOTVal, DebuffType, MinDebuffVal, MaxDebuffVal)

	if MaxDOTVal ~= nil and MinDOTVal < MaxDOTVal then

		SpellDamage(Target, DOTType, math.random(MinDOTVal, MaxDOTVal))

	else

		SpellDamage(Target, DOTType, MinDOTVal)

	end

end

function remove(Caster, Target, DOTType, MinDOTVal, MaxDOTVal, DebuffType, MinDebuffVal, MaxDebuffVal)

	if DebuffType == "Defense" then
		-- Need functionality to restore original mitigations
		-- ModifyDefense(Target, Original)
	end

	if DebuffType == "Elemental" then
		-- Need functionality to restore original mitigations
		-- ModifyHeat(Target, Original)
		-- ModifyCold(Target, Original)
	end

end
