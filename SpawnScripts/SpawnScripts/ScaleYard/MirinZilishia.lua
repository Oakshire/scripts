--[[
	Script Name	: SpawnScripts/ScaleYard/MirinZilishia.lua
	Script Purpose	: Mirin Zilishia 
	Script Author	: John Adams
	Script Date	: 2008.10.01
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1028.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'm not sure I want to know what those are. Bye.")
	StartConversation(conversation, NPC, Spawn, "If you bother me, I will act upon the thoughts that have been coursing through my head from the moment I saw you.")
end

