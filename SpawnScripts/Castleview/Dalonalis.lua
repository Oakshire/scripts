--[[
	Script Name	: SpawnScripts/Castleview/Dalonalis.lua
	Script Purpose	: Dalonalis <Banker>
	Script Author	: Scatman
	Script Date	: 2009.10.03
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

	PlayFlavor(NPC, "voiceover/english/banker_dalonalis/qey_village04/banker_dalonalis001.mp3", "", "", 2898017630, 956866327)
	AddConversationOption(conversation, "I have all the trust in you.")
	StartConversation(conversation, NPC, Spawn, "Good day to you, adventurer. Your valuables will be safe in our vaults, I promise you that.")
end