--[[
	Script Name	: SpawnScripts/Baubbleshire/YolaSindlefop.lua
	Script Purpose	: Yola Sindlefop 
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

	PlayFlavor(NPC, "voiceover/english/yola_sindlefop/qey_village06/yolasindlefop000.mp3", "", "", 2042293032, 669099653, Spawn)
	AddConversationOption(conversation, "Sorry to hear that.")
	StartConversation(conversation, NPC, Spawn, "Hello there!  Isn't this a lovely spot?  It's not the vale, but I was too young to really remember much when we left anyway.")
end