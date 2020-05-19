--[[
	Script Name	: SpawnScripts/Oakmyst/AundorSingingsword.lua
	Script Purpose	: Aundor Singingsword 
	Script Author	: scatman
	Script Date	: 2009.05.10
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

	PlayFlavor(NPC, "voiceover/english/aundor_singingsword/qey_adv01_oakmyst/aundorsingingsword000.mp3", "", "", 715745780, 1617277503, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind, thanks.")
	StartConversation(conversation, NPC, Spawn, "The forest's blessing to you. It is a good day to practice sword play, is it not? ")
end