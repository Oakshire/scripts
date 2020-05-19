--[[
	Script Name	: dd_snare.lua
	Script Purpose	: Generic damage + Snare effect script
	Script Author	: John Adams
	Script Date	: 2008.12.04
--]]

function cast(Caster, Target, DDType, MinDDVal, MaxDDVal, SnareAmount, DispelChance)

	-- DD component
	if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
		SpellDamage(Target, DDType, math.random(MinDDVal, MaxDDVal))
	else
		SpellDamage(Target, DDType, MinDDVal)
	end

	-- Snare component
	OriginalSpeed = GetSpeed(Target)
	newSpeed = OriginalSpeed - (OriginalSpeed * (SnareAmount / 100))

	if OriginalSpeed > newSpeed then
		SetSpeed(Target, newSpeed)
	end

end

function tick(Caster, Target, DDType, MinDDVal, MaxDDVal, SnareAmount, DispelChance)
--[[
	OriginalSpeed = GetSpeed(Target)
	newSpeed = OriginalSpeed - (OriginalSpeed * (SnareAmount / 100))

	if OriginalSpeed > newSpeed then
		SetSpeed(Target, newSpeed)
	end
--]]
end

function remove(Caster, Target)
--[[
	SetSpeed(Target, OriginalSpeed)
--]]
end