--[[
	Script Name	: dd_interrupt.lua
	Script Purpose	: Generic damage + stun script
	Script Author	: John Adams
	Script Date	: 2008.12.04
--]]

function cast(Caster, Target, DDType, MinDDVal, MaxDDVal, EffectType, EffectChance)

	-- DD component
	if MaxDDVal ~= nil and MinDDVal < MaxDDVal then
		SpellDamage(Target, DDType, math.random(MinDDVal, MaxDDVal))
	else
		SpellDamage(Target, DDType, MinDDVal)
	end

	-- Effect component - if EffectChance is blank, always apply the effect, otherwise random
	if EffectChance ~= nil then 
		if EffectChance >= math.random(1, 100) then
			-- Interrupt(Target)
		end
	else
		-- Interrupt(Target)
	end


end

function remove(Caster, Target)
end