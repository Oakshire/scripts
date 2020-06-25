--[[
	Script Name	: SpawnScripts/ScaleYard/BankerIzark.lua
	Script Purpose	: Banker Izark <Banker>
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1028.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Fine! I'll find someone else to talk to, then!", "dlg_26_1")
	StartConversation(conversation, NPC, Spawn, "I'm very busy and can't talk to you right now.")
end

