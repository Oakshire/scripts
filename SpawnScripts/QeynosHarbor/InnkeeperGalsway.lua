--[[
	Script Name	: SpawnScripts/QeynosHarbor/InnkeeperGalsway.lua
	Script Purpose	: Innkeeper Galsway <General Goods>
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

	PlayFlavor(NPC, "", "What is it you need, traveler? If it's reasonable rates, fine food and ale you desire, you've come to the right inn.", "", 1689589577, 4560189, Spawn)
end

