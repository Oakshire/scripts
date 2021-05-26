--[[
	Script Name		:	Quests/TheCommonlands/grums_inspiring_axe.lua
	Script Purpose	:	Handles the quest, "Grum's Inspiring Axe"
	Script Author	:	premierio015
	Script Date		:	25.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	stone_wall_widget
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill sandstone giants", 8, 100, "Inspired by the legendary axe of Grum the Giant Slayer, I have decided to seek out the sandstone giants for fortune and glory!", 611, 330108)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed the sandstone giants in the Commonlands.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the sandstone giants.")

	UpdateQuestDescription(Quest, "I have slain the sandstone giants, but there are no parades or crowds cheering me on.  Perhaps being a giant slayer wasn't as glamorous as I thought it would be.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
