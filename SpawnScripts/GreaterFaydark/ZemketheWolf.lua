--[[
	Script Name	: SpawnScripts/GreaterFaydark/ZemketheWolf.lua
	Script Purpose	: Zemke the Wolf <Guardian Trainer>
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

	PlayFlavor(NPC, "", "I hope you're ready for some serious training!", "", 1689589577, 4560189, Spawn)
end

