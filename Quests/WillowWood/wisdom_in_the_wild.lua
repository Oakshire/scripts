--[[
	Script Name	: Quests/WillowWood/wisdom_in_the_wild.lua
	Script Purpose	: Handles the quest, "Wisdom in the Wild"
	Script Author	: Scatman
	Script Date	: 2009.09.26
	
	Zone       : The Willow Wood
	Quest Giver: Daelyn Twinstar
	Preceded by: A Joined Heritage (a_joined_heritage.lua)
	Followed by: A Task for Daelyn  (a_task_for_daelyn.lua)
--]]

local WisdomInTheWind = 220

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find page 3.", 1, 100, "I need to collect 5 missing pages from Daelyn's essay.", 0)
	AddQuestStep(Quest, 2, "I need to find page 4.", 1, 100, "I need to collect 5 missing pages from Daelyn's essay.", 0)
	AddQuestStep(Quest, 3, "I need to find page 7.", 1, 100, "I need to collect 5 missing pages from Daelyn's essay.", 0)
	AddQuestStep(Quest, 4, "I need to find page 11.", 1, 100, "I need to collect 5 missing pages from Daelyn's essay.", 0)
	AddQuestStep(Quest, 5, "I need to find page 12.", 1, 100, "I need to collect 5 missing pages from Daelyn's essay.", 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1_Complete_FoundPage3")
	AddQuestStepCompleteAction(Quest, 2, "Step2_Complete_FoundPage4")
	AddQuestStepCompleteAction(Quest, 3, "Step3_Complete_FoundPage7")
	AddQuestStepCompleteAction(Quest, 4, "Step4_Complete_FoundPage11")
	AddQuestStepCompleteAction(Quest, 5, "Step5_Complete_FoundPage12")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/daelyn_twinstar/qey_village05/quests/daelyn_twinstar/daelyn_twinstar025.mp3", "", "", 3754562839, 1931475436, Player)
	AddConversationOption(conversation, "I'm sure I can find them.")
	StartConversation(conversation, QuestGiver, Player, "Wonderful, I knew I could count on you. This will save me a lot of time. It looks like there are five pages missing, assuming they're not destroyed. They could be anywhere in the village by now.")
end

function Declined(Quest, QuestGiver, Player)
end

function Step1_Complete_FoundPage3(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found page 3.")
	
	if QuestIsComplete(Player, WisdomInTheWind) then
		FoundAllPages(Quest, QuestGiver, Player)
	end
end

function Step2_Complete_FoundPage4(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found page 4.")
	
	if QuestIsComplete(Player, WisdomInTheWind) then
		FoundAllPages(Quest, QuestGiver, Player)
	end
end

function Step3_Complete_FoundPage7(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found page 7.")
	
	if QuestIsComplete(Player, WisdomInTheWind) then
		FoundAllPages(Quest, QuestGiver, Player)
	end
end

function Step4_Complete_FoundPage11(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I found page 11.")
	
	if QuestIsComplete(Player, WisdomInTheWind) then
		FoundAllPages(Quest, QuestGiver, Player)
	end
end

function Step5_Complete_FoundPage12(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I found page 12.")
	
	if QuestIsComplete(Player, WisdomInTheWind) then
		FoundAllPages(Quest, QuestGiver, Player)
	end
end

function FoundAllPages(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the 5 missing pages from Daelyn's essay.")

	AddQuestStepChat(Quest, 6, "I must speak with Daelyn.", 1, "Now that I have collected the missing pages I need to return to Daelyn and speak to him about Milo and Lyssia.", 0, 2370037)
	AddQuestStepCompleteAction(Quest, 6, "Quest_Complete")
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have spoken with Daelyn.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have spoken with Daelyn.")
	UpdateQuestDescription(Quest, "I have found the missing pages of Daelyn Twinstar's essay and we have spoken of Milo and Lyssia.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1_Complete_FoundPage3(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2_Complete_FoundPage4(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3_Complete_FoundPage7(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4_Complete_FoundPage11(Quest, QuestGiver, Player)
	elseif Step == 5 then
		Step5_Complete_FoundPage12(Quest, QuestGiver, Player)
	end
end