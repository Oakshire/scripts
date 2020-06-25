--[[
	Script Name	: SpawnScripts/ElddarGrove/WarbleWildmane.lua
	Script Purpose	: Warble Wildmane 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Sorry to interrupt.  Goodbye.", "dlg_7_1")
	StartConversation(conversation, NPC, Spawn, "Shh!  Old Treebark's talking!")
	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sorry to interrupt.  Goodbye.", "dlg_8_1")
		StartConversation(conversation, NPC, Spawn, "Shh!  Old Treebark's talking!")
	end

end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Goodbye.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Goodbye!")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Goodbye.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Goodbye!")
end

