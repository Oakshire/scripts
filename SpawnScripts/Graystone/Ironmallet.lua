--[[
	Script Name	: SpawnScripts/Graystone/Ironmallet.lua
	Script Purpose	: Ironmallet <Mender>
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

	PlayFlavor(NPC, "voiceover/english/mender_ironmallet/qey_village03/menderironmallet000.mp3", "", "", 296833708, 2408095573, Spawn)
	AddConversationOption(conversation, "I am sure you will get that name someday.")
	StartConversation(conversation, NPC, Spawn, "I'm just the help around here.  But someday I will have my own forge ... Ironmallet's House of ... er ... well ... something!  The name will come to me someday.")
end