--[[
	Script Name		:	Quests/TheCommonlands/completing_a_cowards_job.lua
	Script Purpose	:	Handles the quest, "Completing a Coward's Job"
	Script Author	:	premierio015
	Script Date		:	25.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	wall_widget
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay Bloodskull warriors", 25, 100, "The Overlord's decree says to destroy the Bloodskull warriors, so it shall be done.", 611, 330123, 330250)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the Bloodskull warriors in the Commonlands.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the Bloodskull warriors.")

	UpdateQuestDescription(Quest, "I have slain twenty five Bloodskulls to fulfill the Overlord's decree.  ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


