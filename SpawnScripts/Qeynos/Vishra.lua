--[[
	Script Name	: SpawnScripts/SouthQeynos/Vishra.lua
	Script Purpose	: Vishra 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No, thanks.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "May I help you?")
end

