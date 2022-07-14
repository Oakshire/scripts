--[[
	Script Name		:	bronas_thralls.lua
	Script Purpose	:	Handles the quest, "Brona's Thralls"
	Script Author	:	torsten
	Script Date		:	11.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Slaver Brona
	Preceded by		:	None
	Followed by		:	Brona's Guard Check
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Bartender Icebrew in the Scale Yard.", 1, "I've got to let Bartender Icebrew from the Scale Yard district know that Brona has new thralls for him to choose from.", 11, 1390051)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Bartender Icebrew.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've informed Bartender Icebrew of Brona's new thralls.")

    AddQuestStepChat(Quest, 2, "I should return to Brona.", 1, "I should return to Brona to tell her that I have delivered the message.", 11, 1340030)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Running errands for Slaver Brona wasn't as bad as I had imagined... Perhaps I'll offer my services again.")
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

