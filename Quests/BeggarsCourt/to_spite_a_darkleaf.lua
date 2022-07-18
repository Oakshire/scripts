--[[
	Script Name		:	to_spite_a_darkleaf.lua
	Script Purpose	:	Handles the quest, "To Spite a Darkleaf"
	Script Author	:	torsten
	Script Date		:	17.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Mariana Darkleaf
	Preceded by		:	None
	Followed by		:	Running For A Candidate
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill 10 Shoreside Asps in the Sprawl.", 10, 100, "Since she taunted you about killing some Shoreside Asps in the Sprawl, you'll do just that.", 98, 1260018)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Shoreside Asps in the Sprawl.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed some Shoreside Asps.")

    AddQuestStepChat(Quest, 2, "I should return to Mariana.", 1, "I should return to Mariana in the Beggar's Court.", 11, 1370014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "You finished the task of Mariana Darfleaf.")
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

