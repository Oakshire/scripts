--[[
	Script Name	: SpawnScripts/WillowWood/GarSmolten.lua
	Script Purpose	: Gar Smolten 
	Script Author	: Scatman
	Script Date	: 2009.09.20
	Script Notes	: 
--]]

local HALF_ELF_MENTOR_QUEST_1 = 218

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, HALF_ELF_MENTOR_QUEST_1) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gar_smolten/qey_village05/qst_gar_complete_b4152fba.mp3", "Hey, thanks again. You should sell your services as stress reduction, hah hah!", "", 3420795836, 3895976815, Spawn)
	elseif HasQuest(Spawn, HALF_ELF_MENTOR_QUEST_1) then
		OnHalfElfMentorQuest1(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gar_smolten/qey_village05/quests/gar_smolten/gar_smolten001.mp3", "", "", 3482344295, 1155597509, Spawn)
		AddConversationOption(conversation, "Nothing, I'm sorry to bother you.")
		StartConversation(conversation, NPC, Spawn, "What do ya want?")
	end
end

--------------------------------------------------------------------------------------------------------------
--						HALF ELF MENTOR QUEST 1
---------------------------------------------------------------------------------------------------------------

function OnHalfElfMentorQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gar_smolten/qey_village05/quests/gar_smolten/gar_smolten001.mp3", "", "", 3482344295, 1155597509, Spawn)
		AddConversationOption(conversation, "I'd like to offer you some assistance.", "dlg_2_1")
		AddConversationOption(conversation, "Nothing, I'm sorry to bother you.")
		StartConversation(conversation, NPC, Spawn, "What do ya want?")
	elseif GetQuestStep(Spawn, HALF_ELF_MENTOR_QUEST_1) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gar_smolten/qey_village05/quests/gar_smolten/gar_smolten004.mp3", "", "", 684684730, 866858376, Spawn)
		AddConversationOption(conversation, "I know the contents of each box.", "dlg_3_1")
		AddConversationOption(conversation, "I'm not done yet.")
		StartConversation(conversation, NPC, Spawn, "Well?")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gar_smolten/qey_village05/qst_gar_complete_b4152fba.mp3", "Hey, thanks again. You should sell your services as stress reduction, hah hah!", "", 3420795836, 3895976815, Spawn)
	end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gar_smolten/qey_village05/quests/gar_smolten/gar_smolten002.mp3", "", "", 43899483, 1170171752, Spawn)
	AddConversationOption(conversation, "I don't need coin, I just noticed you were busy and thought I would be helpful.", "dlg_2_2")
	AddConversationOption(conversation, "I'm sorry I offered.")
	StartConversation(conversation, NPC, Spawn, "For coin, no doubt. Down on your luck, are ya? That's not surprising. Too proud to ask for a handout, eh?")
end

function dlg_2_2(NPC, Spawn)
	SetStepComplete(Spawn, HALF_ELF_MENTOR_QUEST_1, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gar_smolten/qey_village05/quests/gar_smolten/gar_smolten003.mp3", "", "", 1809808588, 687928372, Spawn)
	AddConversationOption(conversation, "I can do that.", "dlg_2_3")
	StartConversation(conversation, NPC, Spawn, "Ah, well that's certainly a nice deal on my part. Sure, you can help, but let's not pretend I believe you're that altruistic. Some kids ran by a few minutes ago and changed all the labels on these boxes. Now I have no idea which ones are properly labeled. If you could check each box and let me know if it's properly labeled that would be helpful.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/gar_smolten/qey_village05/quests/gar_smolten/gar_smolten004a.mp3", "", "", 1939176087, 251588396, Spawn)
	AddConversationOption(conversation, "Carving wood.")
	AddConversationOption(conversation, "Clay figures.", "dlg_3_2")
	AddConversationOption(conversation, "Bottles.")
	AddConversationOption(conversation, "Raisins & dried apricots.")
	AddConversationOption(conversation, "Herbs")
	StartConversation(conversation, NPC, Spawn, "All right. What is in the box marked carving wood?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Carving wood.")
	AddConversationOption(conversation, "Clay figures.")
	AddConversationOption(conversation, "Bottles.")
	AddConversationOption(conversation, "Raisins & dried apricots.", "dlg_3_3")
	AddConversationOption(conversation, "Herbs")
	StartConversation(conversation, NPC, Spawn, "Ok. And what was in the box marked clay figures?")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Carving wood.", "dlg_3_4")
	AddConversationOption(conversation, "Clay figures.")
	AddConversationOption(conversation, "Bottles.")
	AddConversationOption(conversation, "Raisins & dried apricots.")
	AddConversationOption(conversation, "Herbs")
	StartConversation(conversation, NPC, Spawn, "What about the one marked bottles?")
end

function dlg_3_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Carving wood.")
	AddConversationOption(conversation, "Clay figures.")
	AddConversationOption(conversation, "Bottles.", "dlg_3_5")
	AddConversationOption(conversation, "Raisins & dried apricots.")
	AddConversationOption(conversation, "Herbs")
	StartConversation(conversation, NPC, Spawn, "And the one marked raisins & dried apricots?")
end

function dlg_3_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Carving wood.")
	AddConversationOption(conversation, "Clay figures.")
	AddConversationOption(conversation, "Bottles.")
	AddConversationOption(conversation, "Raisins & dried apricots.")
	AddConversationOption(conversation, "Herbs", "dlg_3_6")
	StartConversation(conversation, NPC, Spawn, "And finally the box marked herbs?")
end

function dlg_3_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm glad to help.", "GladToHelp")
	StartConversation(conversation, NPC, Spawn, "All right. Great this is just the kind of information I needed.")
end

function GladToHelp(NPC, Spawn)
	SetStepComplete(Spawn, HALF_ELF_MENTOR_QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Well that's a relief, I was afraid I'd never get around to checking those boxes. You're a quick worker. I'm sorry about snappin' at ya earlier, I get like that from time to time. I was just stressed over those mischievous kids, among other things. Thanks for the help.")
end