--[[
	Script Name		:	no_rivals_for_yarana_part_i.lua
	Script Purpose	:	Handles the quest, "No Rivals For Yarana"
	Script Author	:	torsten
	Script Date		:	18.07.2022
	Script Notes	:	later this quest was splitted up into 3 Parts

	Zone			:	Longshadow Alley
	Quest Giver		:	Yarana D'Ven
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Destroy 8 filthy moccasins.", 8, 100, "I need to go to the Serpent Sewers and destroy 8 filthy moccasins.", 611, 1550002, 1550039)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I killed the filthy moccasins.")
	
	AddQuestStepChat(Quest, 2, "I should return to Yarana.", 1,  "I should return to Yarana in Longshadow Alley.", 11, 1380028)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I returned to Yarana in Longshadow Alley.")
	
	AddQuestStepKill(Quest, 3, "Destroy 7 shadow lurkers.", 7, 100,  "I need search Fallen Gate for seven slime sacs and destroy them.", 611, 1190001)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I killed the shadow lurkers.")
	
	AddQuestStepChat(Quest, 4, "I should return to Yarana.", 1, "I should return to Yarana.", 11, 1380028)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I returned to Yarana in Longshadow Alley.")
	
	AddQuestStepKill(Quest, 5, "Destroy two suspended watchers.", 2, 100, "Go back to Fallen Gate and destroy two suspended watchers.", 611, 1190029, 1190030)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I killed two suspended watchers in Fallen Gate.")
	
	AddQuestStepChat(Quest, 6, "I should return to Yarana.", 1, "I should return to Yarana to collect my reward.", 11, 1380028)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I completed all the tasks for Yarana and received a nice silver ring.")
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
	    Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
	    QuestComplete(Quest, QuestGiver, Player)
	end
end

