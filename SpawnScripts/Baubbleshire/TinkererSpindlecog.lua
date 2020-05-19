--[[
	Script Name	: SpawnScripts/Baubbleshire/TinkererSpindlecog.lua
	Script Purpose	: Tinkerer Spindlecog 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Speaking Gnomish
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog001.mp3", "", "", 1759041547, 1110190424, Spawn)
	AddConversationOption(conversation, "What would you need the stamping device for anyway?", "dlg_27_1")
	AddConversationOption(conversation, "Yes, a pity indeed. ")
	StartConversation(conversation, NPC, Spawn, "Errgh... If only I could get this blasted stamping mechanism working again!  What a pity!  I really need this confounded contraption to run smoothly!")
end

function dlg_27_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tinkerer_spindlecog/qey_village06/tinkererspindlecog002.mp3", "", "", 233880122, 4191683346, Spawn)
	AddConversationOption(conversation, "I'm afraid I can't right now.  Good luck getting it fixed. ")
	StartConversation(conversation, NPC, Spawn, "For part of my official duties that I can't tell you about!  No matter how rudimentary the system, all government officials must be mysterious about what they do--didn't you know? Someday, I might need to officially stamp something! Say, maybe you can help me!")
end