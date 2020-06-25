--[[
	Script Name	: SpawnScripts/QeynosHarbor/BarmaidDrinna.lua
	Script Purpose	: Barmaid Drinna 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1049.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No, not right now.", "dlg_13_1")
	StartConversation(conversation, NPC, Spawn, "Can I help you?")
end

