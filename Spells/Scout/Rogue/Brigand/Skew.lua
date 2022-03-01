--[[
	Script Name	: dd_debuff.lua
	Script Purpose	: Generic damage + 1 effect script
	Script Author	: John Adams
	Script Date	: 2008.12.04
	Script Notes	: Parameter 4 and 5 are the debuff type and value (param 6 if value is a range)
--]]

function cast(Caster, Target, DDType, MinDDVal, MaxDDVal, DebuffType, MinDebuffVal, MaxDebuffVal)

	-- Debuff component
	-- Determine if there is a range to effect values
	if MaxDebuffVal ~= nil and MinDebuffVal < MaxDebuffVal then
		-- JA: for debuff randoms (if any), need to to math.random with precision - I think this function rounds up?
		DebuffValue = math.random(MinDebuffVal, MaxDebuffVal)
	else
		DebuffValue = MinDebuffVal
	end

	-- Determine DebuffType - either a DamageType or a String value passed as param 4
	if DebuffType == "Attack" then
		-- ModifyAttackSpeed(Target, -DebuffValue)
	elseif DebuffType == "DPS" then
		-- ModifyDPS(Target, -DebuffValue)
	elseif DebuffType == "Disease" then
		-- ModifyDisease(Target, -DebuffValue)
	elseif DebuffType == "Power" then
		ModifyPower(Target, -DebuffValue)
        elseif DebuffType == "Knockback" then
                SpawnSet(Target, "visual_state", "10900")
	end

	-- DD component (instant damage)
	if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
		SpellDamage(Target, DDType, math.random(MinDDVal, MaxDDVal))
	else
		SpellDamage(Target, DDType, MinDDVal)
	end
end

function tick(Caster, Target, DDType, MinDDVal, MaxDDVal, DebuffType, MinDebuffVal, MaxDebuffVal)

end

function remove(Caster, Target, DDType, MinDDVal, MaxDDVal, DebuffType, MinDebuffVal, MaxDebuffVal)

end
