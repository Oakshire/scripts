--[[
	Script Name	: SpawnScripts/ScaleYard/BriacTundrafire.lua
	Script Purpose	: Briac Tundrafire 
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

		PlayFlavor(NPC, "voiceover/english/briac_tundrafire/fprt_hood06/qst_briactundrafire.mp3", "", "", 1752525960, 1345151711, Spawn)
	AddConversationOption(conversation, "I'll leave you to your drink.", "dlg_23_1")
	StartConversation(conversation, NPC, Spawn, "BARKEEP! Give me another round before I start getting angry!")
	if convo==24 then
		PlayFlavor(NPC, "voiceover/english/briac_tundrafire/fprt_hood06/qst_briactundrafire.mp3", "", "", 1752525960, 1345151711, Spawn)
		AddConversationOption(conversation, "I'll leave you to your drink.", "dlg_24_1")
		StartConversation(conversation, NPC, Spawn, "BARKEEP! Give me another round before I start getting angry!")
	end

	if convo==25 then
		PlayFlavor(NPC, "voiceover/english/briac_tundrafire/fprt_hood06/qst_briactundrafire.mp3", "", "", 1752525960, 1345151711, Spawn)
		AddConversationOption(conversation, "I'll leave you to your drink.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "BARKEEP! Give me another round before I start getting angry!")
	end

end

