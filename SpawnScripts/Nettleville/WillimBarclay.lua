--[[
	Script Name	: SpawnScripts/Nettleville/WillimBarclay.lua
	Script Purpose	: Willim Barclay 
	Script Author	: Scatman
	Script Date	: 2009.08.08
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

	PlayFlavor(NPC, "voiceover/english/willim_barclay/qey_village01/willimbarclay000.mp3", "", "no", 3397569626, 186458292, Spawn)
	AddConversationOption(conversation, "I see.")
	StartConversation(conversation, NPC, Spawn, "Perhaps we can speak another time?  I have to allocate the barley, inventory the chicken feed, and distribute the wool.")
end