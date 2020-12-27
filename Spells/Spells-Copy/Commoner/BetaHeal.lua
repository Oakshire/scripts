--[[
	Script Name	: Spells/Commoner/BetaHeal.lua
	Script Purpose	: Fast / High healing for Beta testers
	Script Author	: John Adams
	Script Date	: 2008.12.03
	Script Note	: This heal has an instand heal + HoT
--]]

function cast(Caster, Target, HealType, HealMinVal, HealMaxVal, EffectType, EffectMinVal, EffectMaxVal)
	if HealType == "complete" then
		ModifyHP(Target, GetMaxHP(Target))
	else
		if HealMaxVal ~= nil and HealMinVal < HealMaxVal then
			ModifyHP(Target, math.random(HealMinVal, HealMaxVal))
		else
			ModifyHP(Target, HealMinVal)
		end
	end
	if EffectType ~= nil then
		if EffectType == "hot" then
			if EffectMaxVal ~= nil and EffectMinVal < EffectMaxVal then
				ModifyHP(Target, math.random(EffectMinVal, EffectMaxVal))
			else
				ModifyHP(Target, EffectMinVal)
			end
		end
	end
end

function tick(Caster, Target, HealType, HealMinVal, HealMaxVal, EffectType, EffectMinVal, EffectMaxVal)
	if EffectType ~= nil then
		if EffectType == "hot" then
			if EffectMaxVal ~= nil and EffectMinVal < EffectMaxVal then
				ModifyHP(Target, math.random(EffectMinVal, EffectMaxVal))
			else
				ModifyHP(Target, EffectMinVal)
			end
		end
	end
end
