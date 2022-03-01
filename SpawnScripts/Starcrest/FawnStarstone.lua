--[[
	Script Name	: SpawnScripts/Starcrest/FawnStarstone.lua
	Script Purpose	: Fawn Starstone 
	Script Author	: John Adams
	Script Date	: 2008.09.23
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thanks for the welcome!  See you around!")
	StartConversation(conversation, NPC, Spawn, "Welcome to the village!  I hope you find everything you need.  I wish I had!")
end