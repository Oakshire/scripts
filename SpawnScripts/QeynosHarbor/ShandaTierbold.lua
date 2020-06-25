--[[
	Script Name	: SpawnScripts/QeynosHarbor/ShandaTierbold.lua
	Script Purpose	: Shanda Tierbold 
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

	PlayFlavor(NPC, "", "Stop right there! No one goes through this door without explicit permission.", "", 1689589577, 4560189, Spawn)
end

