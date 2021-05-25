--[[
	Script Name		:	Quests/TheCommonlands/stop_the_bloodskull_lumberjacks.lua
	Script Purpose	:	Handles the quest, "Stop the Bloodskull Lumberjacks"
	Script Author	:	premierio015
	Script Date		:	25.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	wood_pile_widget
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay Bloodskull lumberjacks", 25, 100, "The Bloodskull lumberjacks in the Commonlands are starting to gather in greater and greater numbers.  I should do my best and slay them before they collect any more wood for their weapons and shields.", 91, 330125, 331138)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the Bloodskull lumberjacks.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the Bloodskull lumberjacks, though I am sure they will be back.")

	UpdateQuestDescription(Quest, "I have destroyed quite a few of the Bloodskull lumberjacks.  ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


