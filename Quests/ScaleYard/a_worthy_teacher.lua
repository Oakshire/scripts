--[[
	Script Name		:	a_worthy_teacher.lua
	Script Purpose	:	Handles the quest, "A Worthy Teacher"
	Script Author	:	torsten
	Script Date		:	21.07.2022
	Script Notes	:	

	Zone			:	The Graveyard
	Quest Giver		:	Zekvila Dizelk
	Preceded by		:	Bring Out Your Souls
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find and speak to Raban.", 1, "I should be able to find this Raban person in the Stonestair Byway district.", 11, 1350037)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Raban.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Raban and she's given me a message that I don't think Zekvila will like.")

	AddQuestStepChat(Quest, 2, "I need to return to Zekvila.", 1, "I need to return to Zekvila in the Graveyard.", 11, 1250034)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Zekvila was outraged over the response she got from Raban. She even forgot to pay me. I don't think I should press the issue, though.")
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

