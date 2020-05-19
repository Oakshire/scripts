--[[
	Script Name	: SpawnScripts/GreaterFaydark/TuathilLaeds.lua
	Script Purpose	: Tuathil Laeds 
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

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/tuathil_laeds/_exp03/exp03_rgn_greater_faydark/quest/scp/part_three/tuathil_notonquest_821c8558.mp3", "Hello there.", "", 1262918617, 2680803852, Spawn)
end

