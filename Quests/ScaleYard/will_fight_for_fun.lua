--[[
	Script Name		:	will_fight_for_fun.lua
	Script Purpose	:	Handles the quest, "Will Fight for Fun"
	Script Author	:	torsten
	Script Date		:	25.07.2022
	Script Notes	:	

	Zone			:	Scale Yard
	Quest Giver		:	Colin Stoutfist
	Preceded by		:	Will Work for War
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill ten giantslayer thugs in the Sprawl.", 10, 100, "Colin told me to kill ten giantslayer thugs in the Sprawl.", 611, 1260013)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the giantslayer thugs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed the giantslayer thugs in the Sprawl.")

    AddQuestStepChat(Quest, 2, "I should return to Colin.", 1, "I should return to Colin Stoutfist in Scale Yard.", 11, 1390052)
    AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Colin Stoutfist had no reward for me. This was the last task...")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
	    Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end

