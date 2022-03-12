--[[
	Script Name		:	inform_tracker_kelnis.lua
	Script Purpose	:	Handles the quest, "Inform Tracker Kelnis"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	3/11/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Graystone Yard
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak to Kelnis in Oakmyst Forest.", 1, "I must find Tracker Kelnis somewhere in Oakmyst Forest.", 11, 1950042)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I spoke to Tracker Kelnis in Oakmyst.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Tracker Kelnis.")

	UpdateQuestDescription(Quest, "I have informed Kelnis and reported back to Silentstride. She was grateful. They are seeking a gravesite of Holly Windstalker.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
