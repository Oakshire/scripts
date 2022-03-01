--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Reinforcement.lua
    Script Author  : neatz09
    Script Date    : 2020.05.13 09:05:17
    Script Purpose : 
                   : 
--]]

-- On a melee hit this spell will cast Reinforcement on target of attack.  
--     Increases threat priority of target by 1 position
--     Increases Threat to target by 1,044 
function cast(Caster, Target, Hate)
    Say(Caster, "Threat position not implemented")
	AddProc(Target, 3, 100)
end

function proc(Caster, Target, Type, Hate)
	if Type == 3 then
		ProcHate(Caster, Target, Hate, "Reinforcement")
			end	
end

function remove(Caster, Target)
	RemoveProc(Target)
end