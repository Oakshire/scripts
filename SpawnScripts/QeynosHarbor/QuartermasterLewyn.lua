--[[
	Script Name	: SpawnScripts/QeynosHarbor/QuartermasterLewyn.lua
	Script Purpose	: Quartermaster Lewyn <City Quartermaster>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1049.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have an armor mold I would like to turn in.", "dlg_15_1")
		AddConversationOption(conversation, "Nothing.")
	StartConversation(conversation, NPC, Spawn, "What can I do for you?")
	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1049.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have an armor mold I would like to turn in.", "dlg_16_1")
		AddConversationOption(conversation, "Nothing.")
		StartConversation(conversation, NPC, Spawn, "What can I do for you?")
	end

	if convo==21 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1049.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have an armor mold I would like to turn in.", "dlg_21_1")
		AddConversationOption(conversation, "Nothing.")
		StartConversation(conversation, NPC, Spawn, "What can I do for you?")
	end

end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I don't have a mold.", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "What type of mold do you have?")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I don't have a mold.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "What type of mold do you have?")
end

