--[[
	Script Name	: SpawnScripts/ElddarGrove/MasterRysianGladewalker.lua
	Script Purpose	: Master Rysian Gladewalker 
	Script Author	: John Adams
	Script Date	: 2008.09.28
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

		PlayFlavor(NPC, "voiceover/english/optional1/master_rysian_gladewalker/qey_elddar/masterrysiangladewalker.mp3", "", "", 1008244051, 2607567948, Spawn)
	AddConversationOption(conversation, "No, I'm sorry you must have me confused with someone else.", "dlg_16_1")
	StartConversation(conversation, NPC, Spawn, "Well met, friend!  Do you have business with our guild?")
end

