--[[
	Script Name		:	finding_the_stash.lua
	Script Purpose	:	Handles the quest, "Finding the Stash"
	Script Author	:	torsten
	Script Date		:	17.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Alucius Valus
	Preceded by		:	None
	Followed by		:	Saving History
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to locate the hidden stash of items Alucius is looking for. He said it should be in one of the northwestern rooms.", 1, 100, "Alucius wants me to find a stash of items belonging to a recently departed man.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the hidden items Alucius wanted. I need to return them to him now.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to find the stashed items Alucius was looking for.")
   
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

