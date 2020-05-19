--[[
	Script Name	: SpawnScripts/GreaterFaydark/PickleVelvetleaf.lua
	Script Purpose	: Pickle Velvetleaf <Fury Trainer>
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

	PlayFlavor(NPC, "", "Why couldn't I have been named after a flower?", "sigh", 1689589577, 4560189, Spawn)
end

