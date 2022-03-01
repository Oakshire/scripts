--[[
	Script Name		:	MailDeliveryforMatsy.lua
	Script Purpose	:	Handles the quest, "Mail Delivery for Matsy"
	Script Author	:	geordie0511
	Script Date		:	19.03.2019
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	Matsy Rollingpin
	Preceded by		:	Spicy Meat Pie
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Matsy gave me a letter to take to Jacques in The Thundering Steppes", 1, "I must bring Matsy's letter to Jacques in the Thundering Steppes near the gate to Antonica.", 11, 2490212)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I took the letter to Jacques in The Thundering Steppes.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have delivered the mail for Matsy.")

	UpdateQuestDescription(Quest, "I have delivered Matsy's letter to Jacques in the Thundering Steppes.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
