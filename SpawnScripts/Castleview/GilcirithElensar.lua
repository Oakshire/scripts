--[[
	Script Name	: SpawnScripts/Castleview/GilcirithElensar.lua
	Script Purpose	: Gilcirith Elensar 
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

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gilcirith_elensar/qey_village04/newbie_path_froglok/gilcirithelensar004.mp3", "", "", 259212641, 3674286430)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Welcome, traveler.")
end