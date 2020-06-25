--[[
	Script Name	: SpawnScripts/ForestRuins/ThervenSenshun.lua
	Script Purpose	: Therven Senshun 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Not yet.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Did you get the shells?")
	if convo==3 then
		AddConversationOption(conversation, "Yes, here they are.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Did you get the shells?")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Glad to assist.", "dlg_3_2")
	StartConversation(conversation, NPC, Spawn, "Thanks! I appreciate it! You've really helped me a lot.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "This stuff is much harder to work with than I anticipated.", "", 1689589577, 4560189)
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0)
--]]

