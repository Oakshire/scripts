--[[
	Script Name		:	Quests/TheSerpentSewer/a_sewage_problem.lua
	Script Purpose	:	Handles the quest, "A Sewage Problem"
	Script Author	:	premierio015
	Script Date		:	01.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	widget_water_pump(1550026)
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay the crazed channel menders in Serpent Sewer.", 15, 100, "The crazed channel menders are up to some sinister plot.  I should stop them before the pollute Serpent Sewer any further.", 611, 1550012, 1550013, 1550049, 1550050)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the enemies of Freeport.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the enemies of Freeport.")

	UpdateQuestDescription(Quest, "I have no idea how to stop the pump, but I know how to handle crazed channel menders!  They won't be bothering anyone any more.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

