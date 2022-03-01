--[[
	Script Name	: SpawnScripts/ElddarGrove/TowserFlizgibbert.lua
	Script Purpose	: Towser Flizgibbert 
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Nothing.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "Well? What do you want?")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Nothing.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Well? What do you want?")
	end

end

