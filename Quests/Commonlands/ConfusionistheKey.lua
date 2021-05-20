--[[
	Script Name		:	Quests/Commonlands/ConfusionistheKey.lua
	Script Purpose	:	Handles the quest, "Confusion is the Key"
	Script Author	:	premierio015
	Script Date		:	19.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Captain Vertas
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to switch the orders", 1, 100, "I must locate the forward camp and switch out orders. I should look for the camp far to the west.", 75)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Will do...")
	StartConversation(conversation, QuestGiver, Player, "Great, hurry back! And try to come back in one piece.")
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I should report back to Captain Vertas.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have switched the orders and should report back to Captain Vertas at the Crossroads.")

	AddQuestStepChat(Quest, 2, "I need to report to Captain Vertas", 1, "I should return to Captain Vertas at the Crossroads and let him know that my mission was successful.", 11, 330178)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I reported back to Captain Vertas.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have reported back to Captain Vertas at the Crossroads.")

	UpdateQuestDescription(Quest, "I was successful in my mission to switch the dervish orders for Captain Vertas.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

