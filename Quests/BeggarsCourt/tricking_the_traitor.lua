--[[
	Script Name		:	tricking_the_traitor.lua
	Script Purpose	:	Handles the quest, "Tricking the Traitor"
	Script Author	:	torsten
	Script Date		:	18.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Durio Dexus
	Preceded by		:	Big Trouble in Beggar's Court
	Followed by		:	Meet the Inquisitor
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to go confront Alucius and convince him of his wrong doing.", 1, "I need to confront Alucius about his actions.", 11, 1370005)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I was able to trick Alucius into believing I helped him. I need to return to durio now to set his mind at ease.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to convince Alucius that I am being protected by the Militia.")
	
	AddQuestStepChat(Quest, 2, "I should return to Durio Dexus.", 1, "I should return to Durio Dexus.", 11, 1370027)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have spoken with Alucius, and was able to convince him I am not to be messed with. I guess the thought of being marked as a traitor by the Overlord worked well.")
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


