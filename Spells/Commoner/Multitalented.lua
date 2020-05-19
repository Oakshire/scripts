--[[
	Script Name		: Spells/Commoner/Multitalented.lua
	Script Author	: John
	Script Date		: 2012.07.07 12:07:31
	Script Notes	: Reduces harvesting time by 0.5 seconds (Passive)
					:
--]]

function cast(Caster, Target, Defense)
	-- testing Jabantiz' passive spells
    AddSkillBonus(Target, 609880714, Defense) -- Defense
end

function tick(Caster, Target, Type, Min, Max)
	-- code to process each call_frequency (tick) set in spell_tiers
end

function remove(Caster, Target, Type, Min, Max)
	-- code to remove the spell
end

