--[[
	Script Name		:	paying_the_tab.lua
	Script Purpose	:	Handles the quest, "Paying the Tab"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Galenus Fulvianus
	Preceded by		:	None
	Followed by		:	Hops for Galenus
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Converse with Banker Quintius.", 1, "I need to take the money to the banker in Big Bend.  The bank is found in the district center, a short distance away from Galenus.", 10, 1340011)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Banker Quintius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given the money to the banker here in Big Bend.")

	UpdateQuestDescription(Quest, "I delivered the money that Galenus asked me to. He paid me for my time.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

