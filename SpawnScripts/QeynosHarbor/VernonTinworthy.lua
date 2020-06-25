--[[
	Script Name	: SpawnScripts/QeynosHarbor/VernonTinworthy.lua
	Script Purpose	: Vernon Tinworthy <Bar Patron>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_12_1")
	StartConversation(conversation, NPC, Spawn, "What do you want?")
	if convo==20 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_20_1")
		StartConversation(conversation, NPC, Spawn, "What do you want?")
	end

end

function dlg_20_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_20_2")
	StartConversation(conversation, NPC, Spawn, "What do you want?")
end

