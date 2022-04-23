--[[
    Script Name    : SpawnScripts/WailingCaves/aguardianstatue.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 04:07:40
    Script Purpose : 
                   : 
--]]



function spawn(NPC)
    SetInvulnerable(NPC)
		SetLuaBrain(NPC)
	SetBrainTick(NPC, 500)
	Think(NPC)
end


function Think(NPC)
	local mostHated = GetMostHated(NPC)
	if mostHated ~= nil then
--[[ Say(NPC, "Has most hated") --]]
		aggro(NPC, mostHated)
	end
end



function aggro(NPC, Spawn)
       if GetDistance(NPC, Spawn, 1) <= 3 then
    	if GetTempVariable(NPC, "CASTING") ~= "True" then
    	    	SetTempVariable(NPC, "CASTING", "True")
CastSpell(Spawn, 230170, 1, NPC)
	AddTimer(NPC, 7000, "FinishedCasting")
end
    end
 end
 
function FinishedCasting(NPC)
	SetTempVariable(NPC, "CASTING", "False")
end




function respawn(NPC)
	spawn(NPC)
end