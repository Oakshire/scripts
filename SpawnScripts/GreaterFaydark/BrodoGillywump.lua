--[[
	Script Name	: SpawnScripts/GreaterFaydark/BrodoGillywump.lua
	Script Purpose	: Brodo Gillywump 
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

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/brodo_gillywump/_exp03/exp03_rgn_greater_faydark/quest/scp/brodo_gillywump_notonquest_35ff94cb.mp3", "Pleased to meet you.", "", 1682626456, 1452067375, Spawn)
end

