--[[
	Script Name		:	running_for_a_candidate.lua
	Script Purpose	:	Handles the quest, "Running For A Candidate"
	Script Author	:	torsten
	Script Date		:	17.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Mariana Darkleaf
	Preceded by		:	To Spite a Darkleaf
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Marianna Darklea asks you to deliver a note to Lurina Galla.", 1, "Marianna Darklea asks you to deliver a note to Lurina Galla here in Beggar's Court.", 11, 1370026)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "The note was delivered to Lurina.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The note was delivered to Lurina in the upper courtyard.")

    AddQuestStepChat(Quest, 2, "I should return to Mariana.", 1, "I should return to Mariana to tell her I delivered the note.", 11, 1370014)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "You finished the final task of Mariana Darfleaf. That's all you want to have to do with this person.")
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


