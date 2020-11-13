--[[
	Script Name		:	rusty_symbol_of_marr.lua
	Script Purpose	:	Handles the quest, "Rusty Symbol of Marr"
	Script Author	:	premierio015
	Script Date		:	12.11.2020
	Script Notes	:    Available for completion in both classic and new freeport versions.

	Zone			:	Graveyard
	Quest Giver		:	Rusty Symbol of Marr
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Someone in Freeport may be interested in this symbol.  The Temple of War in the north section may be a good place to start.", 1, "I should find someone to give this symbol to.  Somebody in Freeport has to be looking to get their hands on something like this.", 21, 1440056, 5590305)
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
	UpdateQuestStepDescription(Quest, 1, "I sold the symbol to Missionary G`Zule.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I sold the symbol to Missionary G`Zule.")

	UpdateQuestDescription(Quest, "I sold the symbol of Marr to Missionary G`Zule in Freeport.  Turns out he needed it to advance in his order. <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
