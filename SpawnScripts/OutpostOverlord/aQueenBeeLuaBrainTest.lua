--[[
    Script Name    : SpawnScripts/OutpostOverlord/aQueenBeeLuaBrainTest.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.18 05:09:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetLuaBrain(NPC)
	SetBrainTick(NPC, 200)
	Think(NPC, Spawn)
end



function Think(NPC, Spawn)
	local mostHated = GetMostHated(NPC)
		if mostHated ~= nil then
		ClearHate(NPC)
		SetInCombat(NPC, false)
		ClearEncounter(NPC)
	end	
end

function hailed(NPC, Spawn)

end


function respawn(NPC)
	spawn(NPC)
end