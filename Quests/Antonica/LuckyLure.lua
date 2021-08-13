--[[
	Script Name		:	LuckyLure.lua
	Script Purpose	:	Handles the quest, "Lucky Lure"
	Script Author	:	geordie0511	
	Script Date		:	12.03.2019
	Script Notes	:	edited by geordie0511

	Zone			:	Antonica
	Quest Giver		:	Blarton Blumble
	Preceded by		:	None
	Followed by		:	Fishing Hole Hunt
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "Find Blarton's fishing lure.", 1, 100, "I should search for Blarton's lost lure along the beach north of Windstalker Village in Antonica.", 1037)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
   	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
		AddConversationOption(conversation, "Okay.")
	StartConversation(conversation, QuestGiver, Player, "Thank you very much! As I was saying, it should be somewhere near the beach to the north of here. Good luck!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have found Blarton's fishing lure.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the lost fishing lure.")

	AddQuestStepChat(Quest, 2, "Return Blarton's lost fishing lure.", 1, "I have found the missing lure and must return it to Blarton in Windstalker Village.", 1037, 120163)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I brought the lure back to Blarton.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned Blarton's fishing lure.")

	UpdateQuestDescription(Quest, "I have retrieved Blarton's lost fishing lure and returned it to him. He seemed very happy about it. I wonder if he needs help with anything else.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

