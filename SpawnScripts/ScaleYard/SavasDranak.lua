--[[
	Script Name	: SpawnScripts/ScaleYard/SavasDranak.lua
	Script Purpose	: Savas Dranak 
	Script Author	: John Adams
	Script Date	: 2008.10.01
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

		PlayFlavor(NPC, "voiceover/english/savas_dranak/fprt_hood06/savasdranak000.mp3", "", "", 312427882, 4132285907, Spawn)
	AddConversationOption(conversation, "I don't want to see how you treat your least favorite.  ", "dlg_18_1")
	StartConversation(conversation, NPC, Spawn, "It is a shame this one didn't do what he was told.  He was my favorite thrall too.")
end