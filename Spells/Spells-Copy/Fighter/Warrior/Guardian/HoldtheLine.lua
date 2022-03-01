--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/HoldtheLine.lua
    Script Author  : neatz09
    Script Date    : 2020.02.28 09:02:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Type, Hate)   
-- When damaged this spell has a 50% chance to cast Holding the Line on target's attacker.   
    AddProc(Target, 1, 50)
-- On a block this spell will cast Holding the Line on target's victim.
    AddProc(Target, 7, 100)
end

function proc(Caster, Target, Type, Hate)
	if Type == 1 then    
		ProcHate(Caster, Target, Hate, "Holding the Line")
			end

	if Type == 7 then
		ProcHate(Caster, Target, Hate, "Holding the Line")
			end
end

function remove(Caster, Target)
	RemoveProc(Target)
end