--[[
	Script Name	: SpawnScripts/SouthQeynos/AngiePatterson.lua
	Script Purpose	: Angie Patterson <Legends of Norrath Greeter>
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

	PlayFlavor(NPC, "", "Come visit the Legends of Norrath Museum! We have all the latest things collected from around the world!", "bow", 1689589577, 4560189, Spawn)
end

