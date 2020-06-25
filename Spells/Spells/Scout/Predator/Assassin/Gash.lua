--[[
	Script Name	: dot.lua
	Script Purpose	: Generic Damage Over Time script
	Script Author	: John Adams
	Script Date	: 2008.12.04
--]]

function cast(Caster, Target, DOTType, MinDOTVal, MaxDOTVal, EffectType, DDType, MinDDVal, MaxDDVal)

	-- NoDD is a 0/1 bool flag to perform the remove() component
	-- DOT component (instant damage)
	if MaxDOTVal ~= nil and MinDOTVal < MaxDOTVal then
		SpellDamage(Target, DOTType, math.random(MinDOTVal, MaxDOTVal))
	else
		SpellDamage(Target, DOTType, MinDOTVal)
	end

end

function tick(Caster, Target, DOTType, MinDOTVal, MaxDOTVal, EffectType, DDType, MinDDVal, MaxDDVal)

	if MaxDOTVal ~= nil and MinDOTVal < MaxDOTVal then
		SpellDamage(Target, DOTType, math.random(MinDOTVal, MaxDOTVal))
	else
		SpellDamage(Target, DOTType, MinDOTVal)
	end
end

function remove(Caster, Target, DOTType, MinDOTVal, MaxDOTVal, EffectType, DDType, MinDDVal, MaxDDVal)
	SpellDamage(Target, DOTType, math.random(8, 14))
end
