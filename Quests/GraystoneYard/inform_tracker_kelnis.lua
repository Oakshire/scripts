--[[
	Script Name		:	inform_tracker_kelnis.lua
	Script Purpose	:	Handles the quest, "Inform Tracker Kelnis"
	Script Author	:	Dorbin
	Script Date		:	3/11/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Graystone Yard
	Quest Giver		:	Pathfinder Silentstride
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak to Kelnis in Oakmyst Forest.", 1, "I must find Tracker Kelnis somewhere in Oakmyst Forest.", 11, 1950042)
    UpdateQuestZone(Quest,"Oakmyst Forest")
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke to Tracker Kelnis in Oakmyst.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Tracker Kelnis.")
  	AddQuestStepChat(Quest, 2, "I must return to Silentstride in Graystone.", 1, "I should let Pathfinder Silentstride I've relayed the message about Windstalker.", 11, 2350014)
    UpdateQuestZone(Quest,"Graystone Yard")
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end
function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I spoke to Pathfinder Silentstride.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Pathfinder Silentstride.")
	UpdateQuestDescription(Quest, "I have informed Kelnis and reported back to Silentstride. She was grateful. They are seeking a gravesite of Holly Windstalker.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
