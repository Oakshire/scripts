--[[
	Script Name	: SpawnScripts/WillowWood/ZanhassMossclean.lua
	Script Purpose	: Zanhass Mossclean <Mender>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/mender_zanhass_mossclean/qey_village05/quests/mender_zanhass_mossclean/mender_zanhass_mossclean001.mp3", "", "", 4061695239, 3048259898, Spawn)
	AddConversationOption(conversation, "Never mind.")
	StartConversation(conversation, NPC, Spawn, "Well, well, what have we here? Can I help you?")
end