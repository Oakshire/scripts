--[[
	Script Name	: SpawnScripts/Graystone/KargIcemoore.lua
	Script Purpose	: Karg Icemoore 
	Script Author	: John Adams
	Script Date	: 2008.09.21
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

	PlayFlavor(NPC, "voiceover/english/icemoore/qey_village03/icemoore000.mp3", "", "", 2067185427, 1499529819, Spawn)
	AddConversationOption(conversation, "I'll look around.")
	StartConversation(conversation, NPC, Spawn, "Welcome to the Frozen Tundra, finest brewhall in all of Qeynos--no--finest brewhall in all of Norrath!! Belly up to Coppershot. He'll get yer order.")
end