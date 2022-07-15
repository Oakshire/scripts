--[[
	Script Name		:	secret_of_the_troll.lua
	Script Purpose	:	Handles the quest, "Secret of the Troll"
	Script Author	:	torsten
	Script Date		:	14.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Graktak Splatterblood
	Preceded by		:	That Slippery Toad
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to answer Graktak's questions before he will help me get better equipment.", 1, "Graktak wants to ask me some questions before introducing me to his friends.", 11, 1340042)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I answered Graktak's first question.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I need to answer the second question before Graktak introduces me to his friends.")

    AddQuestStepChat(Quest, 2, "I need to answer Graktak's sesond questions before he will help me get better equipment.", 1, "Graktak wants to ask me some questions before introducing me to his friends.", 11, 1340042)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I answered Graktak's second question.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I need to answer all questions before Graktak introduces me to his friends.")

    AddQuestStepChat(Quest, 3, "I need to answer Graktak's third questions before he will help me get better equipment.", 1, "Graktak wants to ask me some questions before introducing me to his friends.", 11, 1340042)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I answered Graktak's third question.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I need to answer all questions before Graktak introduces me to his friends.")

    AddQuestStepChat(Quest, 4, "I need to answer Graktak's foueth questions before he will help me get better equipment.", 1, "Graktak wants to ask me some questions before introducing me to his friends.", 11, 1340042)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I answered Graktak's fourth question.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I need to answer all questions before Graktak introduces me to his friends.")

    AddQuestStepChat(Quest, 5, "I need to answer Graktak's fifth questions before he will help me get better equipment.", 1, "Graktak wants to ask me some questions before introducing me to his friends.", 11, 1340042)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I passed Graktak's simple quest. Being a good troll sounds like it will be easy as long as I remember to eat often, and smash things more than I eat. In the end though, Graktak told me I should speak with Braz Gutpounder on the docks here in Big Bend, or Enforcer Kurdek in The Sprawl if I had already spoken to Braz.")
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
	    Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
	    Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end

