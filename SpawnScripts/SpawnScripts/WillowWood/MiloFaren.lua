--[[
	Script Name	: SpawnScripts/WillowWood/MiloFaren.lua
	Script Purpose	: Milo Faren 
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: 
--]]

local HALFELF_MENTOR_QUEST_2 = 219

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_2) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/qst_milo_complete_8be6473c.mp3", "I am so lucky!", "", 1398570807, 321996266, Spawn)
	elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_2) then
		OnQuest(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/quests/milo_faren/milo_faren001.mp3", "", "", 2229252720, 1824552687, Spawn)
		AddConversationOption(conversation, "I'll come back when you've calmed down some.")
		StartConversation(conversation, NPC, Spawn, "Good day to you!")
	end
end

function OnQuest(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_2) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/quests/milo_faren/milo_faren001.mp3", "", "", 2229252720, 1824552687, Spawn)
		AddConversationOption(conversation, "You sure are chipper.", "dlg_21_1")
		AddConversationOption(conversation, "I'll come back when you've calmed down some.")
		StartConversation(conversation, NPC, Spawn, "Good day to you!")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/qst_milo_complete_8be6473c.mp3", "I am so lucky!", "", 1398570807, 321996266, Spawn)
	end
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/quests/milo_faren/milo_faren002.mp3", "", "", 269531693, 2749316505, Spawn)
	AddConversationOption(conversation, "Oh, congratulations. That's wonderful.", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "And why shouldn't I be? The woman of my dreams just agreed to marry me.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/quests/milo_faren/milo_faren003.mp3", "", "", 4201642816, 883477134, Spawn)
	AddConversationOption(conversation, "What is so amazing about her?", "dlg_21_3")
	AddConversationOption(conversation, "Good for you. I'll speak with you later.")
	StartConversation(conversation, NPC, Spawn, "It most certainly is. I'm the luckiest man alive. Lyssia is angelic. I have no idea what she sees in a plain-old guy like me, but I don't intend to question my luck! She's amazing.")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/quests/milo_faren/milo_faren004.mp3", "", "", 958713161, 1573449887, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_21_4")
	StartConversation(conversation, NPC, Spawn, "Obviously you've never seen her. Aside from being the most beautiful woman in the entire village--perhaps in all of Qeynos--she has unmatched grace. But inside, below the surface, is where she's most amazing. She's got a very quick wit that makes her a joy to talk to, and her wisdom is, well, elven!")
end

function dlg_21_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/quests/milo_faren/milo_faren004a.mp3", "", "", 1802522686, 1528843118, Spawn)
	AddConversationOption(conversation, "It sounds like you're a very lucky man.", "dlg_21_5")
	StartConversation(conversation, NPC, Spawn, "And when I mess up--which I do a lot--she is even tempered. The fact that she accepts all my faults is most endearing.")
end

function dlg_21_5(NPC, Spawn)
	SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_2, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/milo_faren/qey_village05/quests/milo_faren/milo_faren005.mp3", "", "", 3012503213, 2233464244, Spawn)
	AddConversationOption(conversation, "Well, I'm happy for you.")
	StartConversation(conversation, NPC, Spawn, "You have no idea how lucky.")
end