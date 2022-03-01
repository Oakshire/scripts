--[[
	Script Name	: SpawnScripts/ScaleYard/VleskeVylkle.lua
	Script Purpose	: Vleske Vylkle 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
QUEST_2 = 347 -- 183 --Sound Off!

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- JA: Cannot get voiceover to work
	if HasQuest(Spawn, QUEST_2) and GetQuestStep(Spawn, QUEST_2) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vleske_vylkle/fprt_hood06/vleske001.mp3", "", "", 2681861041, 467121917, Spawn)
		AddConversationOption(conversation, "AHHHHHHHHHHHHHH!", "dlg_0_0")
		StartConversation(conversation, NPC, Spawn, "Something on your miniature little mind?")
	else
	-- standard greeting
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vleske_vylkle/fprt_hood06/quest_vleske_step_aside_704ce074.mp3", "Mind the tail! Mind the tail!", "", 1985077577, 3973388351, Spawn)
	end
end

function dlg_0_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, QUEST_2, 1)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vleske_vylkle/fprt_hood06/vleske002.mp3", "", "", 2920798971, 3597861480, Spawn)
	AddConversationOption(conversation, "Wha, but... I can speak just... bye.")
	StartConversation(conversation, NPC, Spawn, "Don't worry; you'll master multi-syllabic words someday.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/vleske_vylkle/fprt_hood06/quest_vleske_step_aside_704ce074.mp3", "Mind the tail! Mind the tail!", "", 1985077577, 3973388351, Spawn)
--]]

