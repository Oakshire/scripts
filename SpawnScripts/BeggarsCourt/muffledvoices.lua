--[[
	Script Name	: SpawnScripts/BeggarsCourt/muffledvoices.lua
	Script Purpose	: muffled voices 
	Script Author	: John Adams (Updated by Cynnar 2018.06.18 01:06:26)
	Script Date	: 2009.04.07
	Script Notes	: Is part of the Dirty Work Quest.
--]]

local HALFELF_MENTOR_QUEST_2 = 308 -- Dirty Work

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	dlg_18_1(NPC, Spawn)
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice001.mp3", "", "", 1452179347, 296391595, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_18_5")
	StartConversation(conversation, NPC, Spawn, "Yes.")
end

function dlg_18_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice002.mp3", "", "", 587067158, 3131442190, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_18_6")
	StartConversation(conversation, NPC, Spawn, "Where is he?")
end

function dlg_18_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice003.mp3", "", "", 3976503175, 1131531976, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_18_7")
	StartConversation(conversation, NPC, Spawn, "That doesn't matter, he is safe. I have made preparations, you will not be interrupted during your meeting.")
end

function dlg_18_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice004.mp3", "", "", 431474593, 1293164609, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_18_8")
	StartConversation(conversation, NPC, Spawn, "Good. Good work. When is it?")
end

function dlg_18_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice005.mp3", "", "", 2860604224, 2220621693, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_18_9")
	StartConversation(conversation, NPC, Spawn, "Very soon.")
end

function dlg_18_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice006.mp3", "", "", 1982248437, 3493440626, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_18_10")
	StartConversation(conversation, NPC, Spawn, "Where is it?")
end

function dlg_18_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice007.mp3", "", "", 3618887376, 683725922, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_18_11")
	StartConversation(conversation, NPC, Spawn, "In the southern portion of Beggar's Court. There is a small room just east of the inn, we will meet with him there and learn all that we need of this Ayr'Dal Brotherhood.")
end

function dlg_18_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice008.mp3", "", "", 2712447744, 1525191676, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_18_12")
	StartConversation(conversation, NPC, Spawn, "What did you promise him for his cooperation?")
end

function dlg_18_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice009.mp3", "", "", 3844115547, 1386660150, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_20_10")
	StartConversation(conversation, NPC, Spawn, "Much. Much that Rommuls would never agree to.")
end

function dlg_20_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice010.mp3", "", "", 2124749615, 3751504060, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_20_11")
	StartConversation(conversation, NPC, Spawn, "And what will you give him?")
end

function dlg_20_11(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice011.mp3", "", "", 516736485, 2856945814, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_20_12")
	StartConversation(conversation, NPC, Spawn, "A painless death. A pet as loyal as him deserves as much. I must go, do NOT miss the meeting.")
end

function dlg_20_12(NPC, Spawn)
	SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/muffled_voices/fprt_hood04/quests/muffled_voice/voice012.mp3", "", "", 23409635, 3384835777, Spawn)
	AddConversationOption(conversation, "[stop listening]", "dlg_20_13")
	StartConversation(conversation, NPC, Spawn, "I won't.")
end