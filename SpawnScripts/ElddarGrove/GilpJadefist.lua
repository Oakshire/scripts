--[[
	Script Name	: SpawnScripts/ElddarGrove/GilpJadefist.lua
	Script Purpose	: Gilp Jadefist 
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

		PlayFlavor(NPC, "gilp_jadefist/qey_elddar/quests/gilp_jadefist001.mp3", "", "", 561219982, 2924439692, Spawn)
	AddConversationOption(conversation, "Thanks.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "May your path always be clear.")
	if convo==6 then
		PlayFlavor(NPC, "gilp_jadefist/qey_elddar/quests/gilp_jadefist001.mp3", "", "", 561219982, 2924439692, Spawn)
		AddConversationOption(conversation, "Thanks.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "May your path always be clear.")
	end

end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1015.mp3", "", "", 0, 0, Spawn)
--]]

