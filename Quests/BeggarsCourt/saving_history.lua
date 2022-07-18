--[[
	Script Name		:	Quests/BeggarsCourt/saving_history.lua
	Script Purpose	:	Handles the quest, "Saving History"
	Script Author	:	torsten
	Script Date		:	17.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Alucius Valus
	Preceded by		:	Finding the Stash
	Followed by		:	Big Trouble in Beggar's Court
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to locate a shady thug who has false historical records concerning the last war.", 1, 100, "I need to locate and retrieve the false war documents from the shady thug who has them.", 11, 1370059)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I was able to remove the man and gather the documents. I need to return them to Alucius.")
	UpdateQuestTaskGroupDescription(Quest, 1, "It was difficult, but I recovered the documents and rid Freeport of a traitor.")
	
    AddQuestStepChat(Quest, 2, "I sould return to Alucius.", 1, "I sould return to Alucius at the docks.", 11, 1370005)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I was able to locate the hidden stash Alucius wanted. I have returned what I found to him.")
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

