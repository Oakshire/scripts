--[[
	Script Name		:	paper_puzzle.lua
	Script Purpose	        :	Handles the quest, "Paper Puzzle"
	Script Author	        :	premierio015
	Script Date		:	20.06.2020
	Script Notes	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	Scrap of Paper
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Look for the missing pieces of this journal entry", 5, 100, "I'm looking for scraps of paper that make up a journal entry.", 2179, 2000014, 2000009, 2000005, 2000003)
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
	UpdateQuestStepDescription(Quest, 1, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've recovered all of the scrap of paper.")

	UpdateQuestDescription(Quest, "I found the remaining scraps and was able to piece the page together. It turns out it was someone's shopping list. Well, that's what I get for being nosy I guess.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


