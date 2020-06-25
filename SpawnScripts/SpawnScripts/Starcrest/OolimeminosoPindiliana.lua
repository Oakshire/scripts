--[[
	Script Name	: SpawnScripts/Starcrest/OolimeminosoPindiliana.lua
	Script Purpose	: Oolimeminoso Pindiliana <Alchemist>
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

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1008.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, NPC, Spawn, "Though one sees many things, the unseen are the hardest to find!")
end