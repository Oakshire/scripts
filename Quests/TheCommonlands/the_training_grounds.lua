--[[
	Script Name		:	Quests/TheCommonlands/the_training_grounds.lua
	Script Purpose	:	Handles the quest, "The Training Grounds"
	Script Author	:	premierio015
	Script Date		:	29.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands,  Bloodskull Valley: The Training Grounds
	Quest Giver		:	 A Broken Harness(1281)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to seek out the war elephant training grounds in the commonlands.", 1, 100, "I need to make the journey to the Bloodskull Orc elephant training grounds in the Southeastern Commonlands.", 740)
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
	UpdateQuestStepDescription(Quest, 1, "I found the war elephant training grounds.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found and entered the training grounds.")

	UpdateQuestDescription(Quest, "I've made the journey to the elephant training grounds.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

