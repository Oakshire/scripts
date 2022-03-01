--[[
	Script Name	: SpawnScripts/ElddarGrove/MusicianZwena.lua
	Script Purpose	: Musician Zwena 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1035.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Not today, thanks.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Perhaps I could entertain you with a song?")
	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1035.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Not today, thanks.", "dlg_3_1")
		StartConversation(conversation, NPC, Spawn, "Perhaps I could entertain you with a song?")
	end

end

