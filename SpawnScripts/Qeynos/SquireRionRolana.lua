--[[
	Script Name	: SpawnScripts/SouthQeynos/SquireRionRolana.lua
	Script Purpose	: Squire Rion Rolana 
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

		PlayFlavor(NPC, "voiceover/english/rion_rolana/qey_south/rionrolana000.mp3", "", "", 1315960700, 959375423, Spawn)
		AddConversationOption(conversation, "I'll be on my way.", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Move along citizen, I've a lot on my mind.")
end

