--[[
	Script Name	: SpawnScripts/Baubbleshire/DrundoParn.lua
	Script Purpose	: Drundo Parn 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local HELPING_SOME_FRIENDS = 325 -- was 72
local NEEZERS_SURVEY = 330 -- was 28

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, NEEZERS_SURVEY) and not QuestStepIsComplete(Spawn, NEEZERS_SURVEY, 2) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn001.mp3", "", "", 1538510210, 1256846225, Spawn)
		AddConversationOption(conversation, "I'm not selling! I have a few questions for you though.", "dlg_53_1")
		AddConversationOption(conversation, "All right, I'm leaving.")
		StartConversation(conversation, NPC, Spawn, "Go away! I'm not buying.")
	elseif HasCompletedQuest(Spawn, HELPING_SOME_FRIENDS) then
		Say(NPC, "My face is so itchy all of a sudden. Gosh, and my eyes are watering. Ugh, is it me or is my face a little pudgy?", Spawn)
	elseif HasQuest(Spawn, HELPING_SOME_FRIENDS) then
		if GetQuestStep(Spawn, HELPING_SOME_FRIENDS) >= 2 and not QuestStepIsComplete(Spawn, HELPING_SOME_FRIENDS, 2) then
			GoAwayNotSelling(NPC, Spawn)
		else
			Say(NPC, "My face is so itchy all of a sudden. Gosh, and my eyes are watering. Ugh, is it me or is my face a little pudgy?", Spawn)
		end
	else
	--PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/qst_drundo_parn_notonquest_976bcd41.mp3", "Don't bother me, I'm drinking!", "", 2257928198, 1328794704, Spawn)
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/qst_drundo_parn_notonquest_976bcd41.mp3", "Don't bother me, I'm drinking!", "", 2257928198, 1328794704, Spawn)
   
end
	
	
end

--------------------------------------------------------------------------------------
--				GNOME QUEST
--------------------------------------------------------------------------------------

function dlg_53_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn002.mp3", "", "", 566362818, 2943772990, Spawn)
	AddConversationOption(conversation, "No of course not! These questions are very simple and will only take a moment of your time.", "dlg_53_2")
	StartConversation(conversation, NPC, Spawn, "Bah! You want to ruin my jolly, ya do!")
end

function dlg_53_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn003.mp3", "", "", 1283631971, 1107457103, Spawn)
	AddConversationOption(conversation, "Ok, first question: If you were to calibrate a Fizzo Torque Wrench for work in Lavastorm and then attempt precisely the same work in Everfrost what difference of calibration would be needed?", "dlg_53_3")
	AddConversationOption(conversation, "All right, I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Fine, fine. Make it quick. I'm getting behind on my ale consumption.")
end

function dlg_53_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn004.mp3", "", "", 2966163409, 3279443882, Spawn)
	AddConversationOption(conversation, "Well?", "dlg_53_4")
	StartConversation(conversation, NPC, Spawn, "...")
end

function dlg_53_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn005.mp3", "", "", 1855808579, 632330066, Spawn)
	AddConversationOption(conversation, "Oh, ok. First question: If you were to calibrate a Fizzo Torque Wrench for work in Lavastorm and then attempt precisely the same work in Everfrost what difference of calibration would be needed?", "dlg_53_5")
	StartConversation(conversation, NPC, Spawn, "Okay, I think I'm ready for your questions now.")
end

function dlg_53_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn006.mp3", "", "", 3959523964, 427971299, Spawn)
	AddConversationOption(conversation, "...", "dlg_53_6")
	StartConversation(conversation, NPC, Spawn, "...")
end

function dlg_53_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn007.mp3", "", "", 2289626536, 947893658, Spawn)
	AddConversationOption(conversation, "All right, next question: what is the average measurement between Keen and Preen on a Spectromatic Nest-Druther?", "dlg_53_7")
	StartConversation(conversation, NPC, Spawn, "... erm ...")
end

function dlg_53_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn008.mp3", "", "", 3683047633, 2681247972, Spawn)
	AddConversationOption(conversation, "Question three: if given the choice in a vote for the new Queen of Qeynos, would you cast your vote for a nut or a bolt?", "dlg_53_8")
	StartConversation(conversation, NPC, Spawn, "What did you say about my mother?")
end

function dlg_53_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn009.mp3", "", "", 3764415585, 1874332902, Spawn)
	AddConversationOption(conversation, "Next question! Though not yet officially proven, which theory concerning thermodynamic particle acceleration and its correlation to metaphysical tides is widely accepted?", "dlg_53_9")
	StartConversation(conversation, NPC, Spawn, "I don't understand the question.")
end

function dlg_53_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn010.mp3", "", "", 566977886, 741493356, Spawn)
	AddConversationOption(conversation, "Almost done. Isn't Neezer Grund amazing?", "dlg_53_10")
	StartConversation(conversation, NPC, Spawn, "Thermo-what?")
end

function dlg_53_10(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn011.mp3", "", "", 475313112, 1703279619, Spawn)
	AddConversationOption(conversation, "Final question: the Banton particle is supposed to generate high amounts of what?", "dlg_53_11")
	StartConversation(conversation, NPC, Spawn, "Who?")
end

function dlg_53_11(NPC, Spawn)
	SetStepComplete(Spawn, NEEZERS_SURVEY, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn012.mp3", "", "", 3760395397, 1228652719, Spawn)
	AddConversationOption(conversation, "That's fine, I'm done! Thank you for your time.")
	StartConversation(conversation, NPC, Spawn, "I don't understand a word you're saying.")
end

--------------------------------------------------------------------------------------
--				HALFLING QUEST
--------------------------------------------------------------------------------------

function GoAwayNotSelling(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn020.mp3", "", "", 3126100476, 608366249, Spawn)
	AddConversationOption(conversation, "Oh, I'm sorry. I was just looking for a place to set this pie.", "dlg_19_1")
	AddConversationOption(conversation, "All right, I'm leaving.")
	StartConversation(conversation, NPC, Spawn, "Go away, I'm not buying.")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn021.mp3", "", "", 2279001986, 4287954077, Spawn)
	AddConversationOption(conversation, "Oh, it is, I assure you. I just finished a pie just like it.", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Say, that looks mighty tasty.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn022.mp3", "", "", 2543676358, 1458545177, Spawn)
	AddConversationOption(conversation, "Not really, I'm so full after the last one that I just don't know what to do with this one.", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "Twin, tasty pies. That sounds like a wonderful position to be in!")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn023.mp3", "", "", 1247528637, 571600340, Spawn)
	AddConversationOption(conversation, "Berry-frosted cream pie.", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "Well, I must admit that I've given many pies a good, good home in my time. I would be willing to do so again, if you saw fit, of course. What kind of pie is it?")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn024.mp3", "", "", 2314010653, 3275188878, Spawn)
	AddConversationOption(conversation, "Well, I DO have to be leaving very soon anyway. I suppose it wouldn't hurt to let you have it.", "dlg_19_5")
	StartConversation(conversation, NPC, Spawn, "Oooooh! That sounds delicious! Whadya say, can I take care of it for you?")
end

function dlg_19_5(NPC, Spawn)
	SetStepComplete(Spawn, HELPING_SOME_FRIENDS, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/drundo_parn/qey_village06/quests/drundo_parn/drundo_parn025.mp3", "", "", 3579370961, 357837589, Spawn)
	AddConversationOption(conversation, "Don't eat it too fast!")
	StartConversation(conversation, NPC, Spawn, "Luck of the Surefoot! Thanks, stranger! I'll put it to good use!")
end