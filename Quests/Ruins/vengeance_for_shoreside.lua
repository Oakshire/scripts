--[[
	Script Name	: Quests/Ruins/vengeance_for_shoreside.lua
	Script Purpose	: Handles the quest, "Vengeance for Shoreside"
	Script Author	: Scatman
	Script Date	: 2009.08.20
	
	Zone       : The Ruins
	Quest Giver: Captain Arellius
	Preceded by: Knock the Fight Out of 'Em (knock_the_fight_out_of_em.lua)
	Followed by: Identifying the Lonetusk Ally (identifying_the_lonetusk_ally.lua)
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must slay five Lonetusk sentries.", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs.", 2488, 1270041, 1270049, 1270048, 1270059)
	AddQuestStepKill(Quest, 2, "I must slay five Lonetusk warriors.", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs.", 2488, 1270115, 1270116, 1270113, 1270133)
	AddQuestStepKill(Quest, 3, "I must slay five Lonetusk crushers.", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs.", 2488, 1270112, 1270114)
	AddQuestStepKill(Quest, 4, "I must slay five Lonetusk pounders.", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs.", 2488, 1270063, 1270081)
	AddQuestStepKill(Quest, 5, "I must slay five Lonetusk shamans.", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs.", 2488, 1270051, 1270052)
	AddQuestStepKill(Quest, 6, "I must slay five Lonetusk prophets.", 5, 100, "In memory of the fallen citizens of Shoreside, I will take revenge upon the Lonetusk orcs.", 2488, 1270117, 1270118)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_KilledSentries")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_KilledWarriors")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_KilledCrushers")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_KilledPounders")
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_KilledShaman")
	AddQuestStepCompleteAction(Quest, 6, "Step6_Complete_KilledProphets")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/lieutenant_imperidus/fprt_adv04_ruins/revamp/lieutenant_imperidus013.mp3", "", "", 1435258692, 228785667, Player)
	AddConversationOption(conversation, "I like the sound of this plan.", "dlg_6_3")
	StartConversation(conversation, QuestGiver, Player, "The surest way to take the fight out of the orcs is to thin their numbers. We have to show we will not tolerate their presence anymore. I need you to make a serious dent in the Lonetusk population. The streets of Shoreside must swell with the blood of these brutes.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_KilledSentries(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain five Lonetusk sentries.")
	
	if QuestIsComplete(Player, 287) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Step2_Complete_KilledWarriors(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have slain five Lonetusk warriors.")
	
	if QuestIsComplete(Player, 287) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Step3_Complete_KilledCrushers(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have slain five Lonetusk crushers.")
	
	if QuestIsComplete(Player, 287) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Step4_Complete_KilledPounders(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have slain five Lonetusk pounders.")
	
	if QuestIsComplete(Player, 287) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Step5_Complete_KilledShaman(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have slain five Lonetusk shamans.")
	
	if QuestIsComplete(Player, 287) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Step6_Complete_KilledProphets(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have slain five Lonetusk prophets.")
	
	if QuestIsComplete(Player, 287) then
		Multiple_Steps_Complete(Player, QuestGiver, Player)
	end
end

function Multiple_Steps_Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have honored the memory of Freeport's fallen by taking revenge on the Lonetusk.")
	
	AddQuestStepChat(Quest, 7, "I should report back to the lieutenant.", 1, "Having wiped out a considerable number of Lonetusk, I should report back to Lieutenant Imperidus.", 0, 1270070)
	AddQuestStepCompleteAction(Quest, 7, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have reported back to the lieutenant.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Lieutenant Imperidus.")
	UpdateQuestDescription(Quest, "I killed Lonetusk orcs. Lots and lots of orcs. Lieutenant Imperidus and I both feel that we're making progress against these foul beasts, but more must be done to ensure Freeport's safety. The lieutenant has further orders for me that will hopefully help us turn the tide at last. Perhaps my efforts here have brought some measure of peace to the dead citizens of Shoreside.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_KilledSentries(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_KilledWarriors(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_KilledCrushers(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_KilledPounders(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_KilledShaman(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6_Complete_KilledProphets(Quest, QuestGiver, Player)
	end
end