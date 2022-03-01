--[[
	Script Name	: debuff.lua
	Script Purpose	: Generic Debuff script
	Script Author	: John Adams
	Script Date	: 2008.12.05
--]]

function cast(Caster, Target, DebuffType, MinDebuffVal, MaxDebuffVal)

	-- Debuff component
	-- Determine if there is a range to effect values
	if MaxDebuffVal ~= nil and MinDebuffVal < MaxDebuffVal then
		-- JA: for debuff randoms (if any), need to to math.random with precision - I think this function rounds up?
		DebuffValue = math.random(MinDebuffVal, MaxDebuffVal)
	else
		DebuffValue = MinDebuffVal
	end

	-- Determine DebuffType - either a DamageType or a String value passed as param 1
	-- Need functionality to buff/debuff
	if DebuffType == "Defense" then
		-- ModifyDefense(Target, -DebuffValue)
	end
	if DebuffType == "Elemental" then
		-- ModifyHeat(Target, -DebuffValue)
		-- ModifyCold(Target, -DebuffValue)
	end
	if DebuffType == "Noxious" then
		-- ModifyPoison(Target, -DebuffValue)
		-- ModifyDisease(Target, -DebuffValue)
	end

end

function tick(Caster, Target, DebuffType, MinDebuffVal, MaxDebuffVal)

end

function remove(Caster, Target, DebuffType, MinDebuffVal, MaxDebuffVal)
-- Need functionality to restore original mitigations

	if DebuffType == "Defense" then
		-- ModifyDefense(Target, Original)
	end
	if DebuffType == "Elemental" then
		-- ModifyHeat(Target, Original)
		-- ModifyCold(Target, Original)
	end
	if DebuffType == "Noxious" then
		-- ModifyPoison(Target, Original)
		-- ModifyDisease(Target, Original)
	end

end
