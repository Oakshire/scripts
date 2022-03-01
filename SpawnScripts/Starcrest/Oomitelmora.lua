--[[
	Script Name	: SpawnScripts/Starcrest/Oomitelmora.lua
	Script Purpose	: Oomitelmora 
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

	PlayFlavor(NPC, "voiceover/english/optional4/oomitelmora/oomitelmora-mp3_64.mp3", "", "", 354169301, 3490300460, Spawn)
	AddConversationOption(conversation, "King's field discussions do not concern me.")
	StartConversation(conversation, NPC, Spawn, "'Tis not just the victory I enjoy. To see this one writhe in frustration is highly amusing.")
end

