--[[
	Script Name	: SpawnScripts/QeynosHarbor/ColinMcEntire.lua
	Script Purpose	: Colin McEntire 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	
	NOTE: Associated with the sarnak introduction LU37. Removed https://eq2.fandom.com/wiki/Colin_McEntire
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	PlayFlavor(NPC, "", "What strange happenings!", "confused", 1689589577, 4560189, Spawn)
end

