--[[
	Script Name	: Spells/Mage/Sorcerer/SummonAnimatedTome.lua
	Script Author	: Guardian
	Script Date	: 2012.10.21 08:10:11
	Script Notes	: Enter special notes here
			:
--]]

function cast(Caster, Target, PetID)
   SummonPet(Caster, PetID)
end

function tick(Caster, Target, Type, Min, Max)
	-- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target, Type, Min, Max)
	-- code to remove the spell
end

