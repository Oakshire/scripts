--[[
	Script Name	: Spells/Commoner/UrbanSprawl.lua
	Script Author	: John
	Script Date	: 2012.07.07 12:07:26
	Script Notes	: Enter special notes here
			:
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, 418532101, SkillAmt) -- Slashing
end

function tick(Caster, Target, Type, Min, Max)
	-- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target, Type, Min, Max)
	-- code to remove the spell
end

