--[[
	Script Name	: SpawnScripts/Starcrest/VelderothMalraen.lua
	Script Purpose	: Velderoth Malraen 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local CONFRONTATION = 321

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, CONFRONTATION) and GetQuestStep(Spawn, CONFRONTATION) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/quests/velderoth/velderoth000.mp3", "", "", 602755801, 4204317404, Spawn)
		AddConversationOption(conversation, "Believe it, heretic.", "dlg_55_3")
		StartConversation(conversation, NPC, Spawn, "I cannot believe you would destroy such knowledge!")
	end
end

function dlg_55_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/quests/velderoth/velderoth001.mp3", "", "", 4272504042, 2021431254, Spawn)
	AddConversationOption(conversation, "We know that it was meant for you, Velderoth.", "dlg_55_4")
	StartConversation(conversation, NPC, Spawn, "Hold your tongue, child. Insults will only serve to anger me.")
end

function dlg_55_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/quests/velderoth/velderoth002.mp3", "", "", 4026578070, 2833635069, Spawn)
	StartConversation(conversation, NPC, Spawn, "Simpleton! If you don't seek knowledge then you are no Erudite! My power is greater than you know.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/velderoth_malraen/qey_village02/qst_velderoth_howcould_ea37cf7d.mp3", "NO!!! How could you do such a thing?", "", 4138921089, 741301826, Spawn)
--]]