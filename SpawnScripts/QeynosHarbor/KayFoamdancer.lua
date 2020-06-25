--[[
	Script Name	: SpawnScripts/QeynosHarbor/KayFoamdancer.lua
	Script Purpose	: Kay Foamdancer 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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

	PlayFlavor(NPC, "", "My father's out there somewhere! Under those waves! And no one can tell me why!", "", 1689589577, 4560189, Spawn)
end

