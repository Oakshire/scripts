--[[
	Script Name		:	trolls_and_arms.lua
	Script Purpose	:	Handles the quest, "Trolls and Arms"
	Script Author	:	torsten
	Script Date		:	10.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Armsdealer Blort
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find and speak with an armsdealer in Temple Street", 1, "I need to travel to Temple Street and speak with any Armsdealers I find there.", 11, 1360012)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Shinksa the Armsdealer")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Shinksa, but it seems she already is buying weapons from someone else.")
	
	AddQuestStepChat(Quest, 2, "I need to return to Blort.", 1, "I need to return to Blort with the bad news.", 11, 1340023)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end 

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've checked around Temple Street and found only one armsdealer.  It seems she's been buying weapons from a human, just like Blort.  Blort paid me with one of his painted weapons.")
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

