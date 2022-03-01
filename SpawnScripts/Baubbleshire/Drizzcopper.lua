--[[
	Script Name	: SpawnScripts/Baubbleshire/Drizzcopper.lua
	Script Purpose	: Drizzcopper <Banker>
	Script Author	: Scatman
	Script Date	: 2009.09.27
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

	PlayFlavor(NPC, "voiceover/english/banker_drizzcopper/qey_village06/banker_drizzcopper001.mp3", "", "", 2748969711, 2912964073, Spawn)
	AddConversationOption(conversation, "Oh.  Thank you anyway.")
	StartConversation(conversation, NPC, Spawn, "The answer to your question is no. I'm afraid we don't extend lines of credit at this time.")
end