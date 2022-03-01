--[[
	Script Name		:	Quests/TheSerpentSewer/a_drudge_problem.lua
	Script Purpose	:	Handles the quest, "A Drudge Problem"
	Script Author	:	premierio015
	Script Date		:	01.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	widget_broken_barrel
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay four drudge globules in Serpent Sewer.", 4, 100, "Someone is planting drudge globules in Serpent Sewer.  I have decided to destroy these creatures and scare him off.", 133, 1550001, 1550038)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the drudge globules.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the drudge globules.  I think that will scare whoever skulking these sewers off.")

	UpdateQuestDescription(Quest, "I have slain quite a few of the drudge globules in the area.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

