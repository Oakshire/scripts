--[[
    Script Name    : Spells/Commoner/SoldiersInstinct.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 12:04:51
    Script Purpose : 
                   : 
--]]

-- On a combat hit this spell may cast Hasten on caster. Lasts for 30.0 seconds. Triggers about  6.6 times per minute.
-- Increases Haste of target by x - y based on CLevel

function cast(Caster, Target)
Say(Caster, "need to add hasten to the DB")		
AddProc(Target, 3, 25)
end

function proc(Caster, Target, Type)

CastSpell(Caster, 2002, 1)
		Say(Caster, "need to add hasten to the DB")
end

function remove(Caster, Target)
	RemoveProc(Target)
end