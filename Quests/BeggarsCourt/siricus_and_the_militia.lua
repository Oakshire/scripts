--[[
	Script Name		:	siricus_and_the_militia.lua
	Script Purpose	:	Handles the quest, "Siricus and the Militia"
	Script Author	:	torsten
	Script Date		:	17.07.2022
	Script Notes	:	
	Zone			:	Beggar's Court
	Quest Giver		:	Siricus Calventius
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Sentius.", 1, "Siricus wants an update from a person named Sentius. He is supposedly here in Beggar's Court standing in the courtyard drinking some wine next to a merchant.", 11, 1370020)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Sentius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Sentius claims that the application will take time and that he's working on it.")

    AddQuestStepChat(Quest, 2, "I should return to Siricus.", 1, "I should return to Siricus.", 11, 1370045)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Siricus Calventius is waiting to get into the Militia. I have a good feeling he'll be waiting a lot longer, considering how people treat the gimp.")
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

