--[[
	Script Name	: SpawnScripts/Nettleville/Aves.lua
	Script Purpose	: Aves 
	Script Author	: Scatman
	Script Date	: 2009.08.12
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

	PlayFlavor(NPC, "voiceover/english/aves/qey_village01/aves000.mp3", "", "", 3237492483, 2034262045, Spawn)
	AddConversationOption(conversation, "Um... I don't even know who your brother is.  I think I'll leave you alone")
	StartConversation(conversation, NPC, Spawn, "Shhh!  Keep your voice down.  Unless my brother sent you, I suggest you find another place to wait for the ferry.")
end