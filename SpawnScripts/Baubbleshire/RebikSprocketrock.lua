--[[
	Script Name	: SpawnScripts/Baubbleshire/RebikSprocketrock.lua
	Script Purpose	: Rebik Sprocketrock 
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

	PlayFlavor(NPC, "voiceover/english/rebik_sprocketrock/qey_village06/rebiksprocketrock000.mp3", "", "", 2926752471, 973291816, Spawn)
	AddConversationOption(conversation, "Well then, I guess I'll let you get back to your work.")
	StartConversation(conversation, NPC, Spawn, "Well met, good friend!  I'm  busy working on this new lock here!  I think it'll be unpickable once I'm done!")
end