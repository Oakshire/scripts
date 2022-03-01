--[[
	Script Name	: SpawnScripts/WillowWood/LiaSerene.lua
	Script Purpose	: Lia Serene 
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

local HALF_ELF_MENTOR_QUEST_1 = 218

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, HALF_ELF_MENTOR_QUEST_1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/qst_lia_complete_8d85d6b2.mp3", "Thank you again for your help, Ayr'Dal.", "", 869251524, 3340326949, Spawn)
	elseif HasQuest(Spawn, HALF_ELF_MENTOR_QUEST_1) and GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) >= 3 then
		OnHalfElfMentorQuest1(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene001.mp3", "", "", 3948197749, 3786376226, Spawn)
		AddConversationOption(conversation, "To you as well, goodbye for now.")
		StartConversation(conversation, NPC, Spawn, "Well met.")
	end
end

---------------------------------------------------------------------------------------------------------------
--						HALF ELF MENTOR QUEST 1
---------------------------------------------------------------------------------------------------------------

function OnHalfElfMentorQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene001.mp3", "", "", 3948197749, 3786376226, Spawn)
		AddConversationOption(conversation, "You look troubled, is there anything I can do to help?", "dlg_16_1")
		AddConversationOption(conversation, "To you as well, goodbye for now.")
		StartConversation(conversation, NPC, Spawn, "Well met.")
	elseif GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) >= 4 and GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) <= 7 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene009.mp3", "", "", 2366604314, 876654572, Spawn)
		if GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) == 7 then
			AddConversationOption(conversation, "Yes, here they are.", "dlg_17_1")
		end
		AddConversationOption(conversation, "Not yet.")
		StartConversation(conversation, NPC, Spawn, "Did you find any eggs?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/qst_lia_complete_8d85d6b2.mp3", "Thank you again for your help, Ayr'Dal.", "", 869251524, 3340326949, Spawn)
	end
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene002.mp3", "", "", 1084130195, 3979278779, Spawn)
	AddConversationOption(conversation, "What is it that troubles you?", "dlg_16_2")
	AddConversationOption(conversation, "Very well, I'm sorry I asked.")
	StartConversation(conversation, NPC, Spawn, "Oh I don't know. I am troubled over something quite delicate, I don't know if you can help.")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene003.mp3", "", "", 946954520, 74482583, Spawn)
	AddConversationOption(conversation, "What do you mean by that?", "dlg_16_3")
	AddConversationOption(conversation, "Well I'll just be leaving then.")
	StartConversation(conversation, NPC, Spawn, "Well, I'm worried over the recent, strong winds and what effect they may have had on some of the birds who nest within the Willow Wood. Their eggs, specifically, are what worry me. I know, it seems silly, I don't really expect someone like you to understand.")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene004.mp3", "", "", 2706906943, 2378960911, Spawn)
	AddConversationOption(conversation, "So you don't want my help?", "dlg_16_4")
	AddConversationOption(conversation, "You know very little of me, good day.")
	StartConversation(conversation, NPC, Spawn, "Well, half elves have never quite been concerned with nature like we have. I don't mean that as an insult, it is simply true.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene005.mp3", "", "", 1472623500, 2746201018, Spawn)
	AddConversationOption(conversation, "I care for nature as much as the next elf, full-blood or not.", "dlg_16_5")
	AddConversationOption(conversation, "I like to help where it is needed.", "dlg_16_5")
	AddConversationOption(conversation, "Perhaps you should re-think your views of the Ayr'Dal, I will help.", "dlg_16_5")
	AddConversationOption(conversation, "For now it doesn't concern me. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I am sorry. I did not mean to come off as such. Yes, I would appreciate your help. I just didn't think something like this would concern you.")
end

function dlg_16_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene006.mp3", "", "", 1958975917, 533091246, Spawn)
	AddConversationOption(conversation, "Should I try to put them back in the nest?", "dlg_16_6")
	AddConversationOption(conversation, "I've changed my mind, I may be back later.")
	StartConversation(conversation, NPC, Spawn, "Very well. Please travel around the Willow Wood and check each bird nest to be sure they have not been upset in the recent storm. This isn't very hard, just check the ground in the area of each nest and verify that neither the nest nor any eggs have fallen. If any eggs are found that are not cracked collect them.")
end

function dlg_16_6(NPC, Spawn)
	SetStepComplete(Spawn, HALF_ELF_MENTOR_QUEST_1, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene008.mp3", "", "", 2043753737, 1955953517, Spawn)
	AddConversationOption(conversation, "I'll go check them now.")
	StartConversation(conversation, NPC, Spawn, "It's just like an Ayr'Dal to ask a question like that. Um, no offense. I know where the birds of this village nest, and what their eggs look like. This is how I know where to look, and where to tell you where to look. Check under the north-east corner of the inn roof, north of that location check under the tree near the entrance to the docks, then check under the tree just down the path from the entrance to the Forest Ruins, which is in the south-western area of the village.")
end

function dlg_17_1(NPC, Spawn)
	SetStepComplete(Spawn, HALF_ELF_MENTOR_QUEST_1, 7)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lia_serene/qey_village05/quests/lia_serene/lia_serene010.mp3", "", "", 443109292, 254705262, Spawn)
	AddConversationOption(conversation, "I am glad to have helped.")
	StartConversation(conversation, NPC, Spawn, "I'm relieved. It looks like you handled these with great care. I believe we can save all of them, thank you.")
end