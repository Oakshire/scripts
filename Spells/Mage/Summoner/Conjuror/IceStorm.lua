--[[
	Script Name	: dd_snare.lua
	Script Purpose	: Generic damage + Snare effect script
	Script Author	: John Adams
	Script Date	: 2008.12.04
--]]

function cast(Caster, Target, DDType, MinDDVal, MaxDDVal, SnareAmount)

	-- DD component
	if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
		SpellDamage(Target, DDType, math.random(MinDDVal, MaxDDVal))
	else
		SpellDamage(Target, DDType, MinDDVal)
	end

	-- Snare component
        local slow = 100.0 - SnareAmount
        SetSpeedMultiplier(Target, slow)
end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1.0)
end