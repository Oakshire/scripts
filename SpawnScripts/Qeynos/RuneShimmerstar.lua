--[[
	Script Name	: SpawnScripts/SouthQeynos/RuneShimmerstar.lua
	Script Purpose	: Rune Shimmerstar 
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
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/rune_shimmerstar/qey_south/runeshimmerstar000.mp3", "", "", 3137838652, 2088519153, Spawn)
		AddConversationOption(conversation, "I'm just admiring the architecture. ", "dlg_23_1")
	StartConversation(conversation, NPC, Spawn, "What brings you to the Three Towers? Study of the arcane arts broadens your understanding of the world we live in. You would do well to remember this.")
end

