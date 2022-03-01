--[[
	Script Name	: SpawnScripts/NorthQeynos/RoseWoodhouse.lua
	Script Purpose	: Rose Woodhouse 
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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

	PlayFlavor(NPC, "", "I've got a treat for ya!  Ha!  Ha!  Ha!", "", 1689589577, 4560189, Spawn)
end

