--[[
	Script Name		:	Quests/TheSerpentSewer/a_forgotten_poster.lua
	Script Purpose	:	Handles the quest, "A Forgotten Poster"
	Script Author	:	premierio015
	Script Date		:	02.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Serpent Sewer
	Quest Giver		:	widget_bed_roll
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay at least ten sift dashers.", 10, 100, "The old poster condemns the sift dashers in Serpent Sewer, so I shall slay them.", 98, 1550023, 1550060)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain the sift dashers")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the sift dashers.")

	UpdateQuestDescription(Quest, "I have done as I have been bidden by the Overlord.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


