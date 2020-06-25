--[[
	Script Name	: Spells/Scout/Bard/SelosAccelerando.lua
	Script Author	: Zcoretri
	Script Date	: 2010.03.30 10:03:38
	Script Notes	: Enter special notes here
			:
--]]

function cast(Caster, Target, BuffValue)
    AddSpellBonus(Target, 609, BuffValue)
end

function remove(Caster, Target, BuffValue)
    RemoveSpellBonus(Target)
end

