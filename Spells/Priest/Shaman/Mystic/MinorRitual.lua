--[[
	Script Name	: Heal / Buff (Spell Type)
	Script Purpose	: Generic script for Heal / Buff spells
	Script Author	: John Adams
	Script Date	: 2008.12.04
--]]

function cast(Caster, Target, HealType, HealMinVal, HealMaxVal, BuffType, BuffMinVal, BuffMaxVal)

	-- Heal component
	if HealMinVal < HealMaxVal then
		ModifyHP(Caster, math.random(HealMinVal, HealMaxVal))
	else
		ModifyHP(Caster, HealMinVal)
	end

	-- Buff component
	if BuffType ~= nil then

		if BuffType == "Health" then

			--SetMaxHP(Caster, GetMaxHP(Target) + BuffMinVal)
                       AddSpellBonus(Target, 500, BuffMinVal)

		end

		-- do other buff types here

	end

end

function tick(Caster, Target, HealType, HealMinVal, HealMaxVal, BuffType, BuffMinVal, BuffMaxVal)

	if BuffType == "Health" then

		SetMaxHP(Caster, GetMaxHP(Target) + BuffMinVal)

	end

	-- do other buff types here

end

function remove(Caster, Target, HealType, HealMinVal, HealMaxVal, BuffType, BuffMinVal, BuffMaxVal)
    RemoveSpellBonus(Target)
end