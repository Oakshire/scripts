--[[
    Script Name    : Spells/Commoner/CripplingShroud.lua
    Script Author  : neatz09
    Script Date    : 2020.04.09 08:04:38
    Script Purpose : 
                   : 
--]]

-- When any damage received this spell has a 5% chance to cast Hasten on caster. Lasts for 30.0 seconds.
-- Increases Haste of target by x - y Based on CLevel

function cast(Caster, Target, Triggers)
Say(Caster, "need to add hasten to the DB")		
AddProc(Target, 15, 5, nil, 1)
	SetSpellTriggerCount(Triggers, 1)
end

function proc(Caster, Target, Type, Triggers)

CastSpell(Caster, 2002, 1)
		Say(Caster, "need to add hasten to the DB")
			RemoveTriggerFromSpell(1)
end

function remove(Caster, Target)
	RemoveProc(Target)
end