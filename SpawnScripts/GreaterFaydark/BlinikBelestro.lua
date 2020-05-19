--[[
	Script Name	: SpawnScripts/GreaterFaydark/BlinikBelestro.lua
	Script Purpose	: Blinik Belestro 
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

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/blinik_belestro/_exp03/exp03_rgn_greater_faydark/quest/scp/part_three/blinik_notonquest_386a8700.mp3", "Hello, hello! Very very busy! Sorry!", "", 3994544341, 1209952897, Spawn)
end

