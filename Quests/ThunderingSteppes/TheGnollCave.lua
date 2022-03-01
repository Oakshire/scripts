--[[
    Script Name    : Quests/ThunderingSteppes/TheGnollCave.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.08 10:07:08
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: Tish Tickers (2490042)
        Preceded by: A Scrying Shame
        Followed by: 
--]]

-- Quests
local TheGnollCave = 106

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Get cursed bone marrow from some skeletal troopers.", 5, 100, "I must collect some components for Tish Tickers.", 181, 2490218)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")

	AddQuestStepKill(Quest, 2, "Collect spirit essence from some spirited orbs.", 3, 100, "I must collect some components for Tish Tickers.", 343, 2490219)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")

	AddQuestStepKill(Quest, 3, "Gather some imbued bones from Varsoon apprentices.", 5, 100, "I must collect some components for Tish Tickers.", 418, 2490226)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered some cursed bone marrow.")
	CheckProgress(Quest, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected some spirit essence.")
	CheckProgress(Quest, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have gathered some imbued bones.")
	CheckProgress(Quest, Player)
end

function CheckProgress(Quest, Player)
	if QuestStepIsComplete(Player, TheGnollCave, 1) and QuestStepIsComplete(Player, TheGnollCave, 2) and QuestStepIsComplete(Player, TheGnollCave, 3) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the necessary components for Tish Tickers.")
		AddQuestStepChat(Quest, 4, "Return to Tish Tickers.", 1, "I must bring these components I have collected back to Tish.", 11, 2490042)
		AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	end
end

function Step4Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "Great! The gnolls have taken my equipment to a cave near here, but they have used some of my own magic to seal the entrance. I'll need you to gather a few key components for me so that we can break in.  Here is a list of items I will need in order to prepare a spell to counter their lock. Come see me once you've finished.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	end
end