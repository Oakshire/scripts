--[[
	Script Name	: SpawnScripts/Castleview/RrakBoldfist.lua
	Script Purpose	: Rrak Boldfist 
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

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/rrak_boldfist/qey_village04/newbie_path_froglok/rrakboldfist001.mp3", "", "", 4249735014, 1158423101)
	AddConversationOption(conversation, "Very well, kind sir.  Thank you.")
	StartConversation(conversation, NPC, Spawn, "Greetings!  Fare thee well?")
end