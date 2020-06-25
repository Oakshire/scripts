--[[
	Script Name	: SpawnScripts/QeynosHarbor/Velnia.lua
	Script Purpose	: Velnia <Salty Sailor>
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

	PlayFlavor(NPC, "", "Ah, the lure of the sea.  How can anyone avoid the call to sail the sea's waters, to explore, to be free?", "", 1689589577, 4560189, Spawn)
end

