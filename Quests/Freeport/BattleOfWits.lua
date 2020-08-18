--[[
	Script Name		:	battle_of_wits.lua
	Script Purpose      	:	Handles the quest, "Battle of Wits"
	Script Author	        :	premierio015
	Script Date		:	12.08.2020
	Script Notes	        :	
	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Enter Temple Street", 10, "I will need to enter Temple Street, and deipher the equations of the gnomes left on the walls there.", 11, 17.68, 2.92, 22.76)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "")

	AddQuestStepObtainItem(Quest, 2, "Search for the gnomish equations on the walls of Temple Street, and copy them.", 3, 100, "I will need to enter Temple Street, and deipher the equations of the gnomes left on the walls there.", 374, 12090)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "")

	AddQuestStep(Quest, 3, "Use the study materials in the library to decipher and solve the gnomish equations.", 1, 100, "I will need to enter Temple Street, and deipher the equations of the gnomes left on the walls there.", 3040)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "That was easy enough.  Back to Temple Street.")

	AddQuestStepChat(Quest, 4, "Return to Temple Street, and activate the broken clockwork.", 1, "I will need to enter Temple Street, and deipher the equations of the gnomes left on the walls there.", 1040, 5590218)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "")

	AddQuestStepKill(Quest, 5, "Use the activated clockwork to destroy the necromachines in Temple Street.", 6, 100, "I will need to enter Temple Street, and deipher the equations of the gnomes left on the walls there.", 3109, 6460005)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "")
	UpdateQuestTaskGroupDescription(Quest, 1, "I was able to decipher the equations, and have rebuilt one of the gnomish inventions.")

	AddQuestStepChat(Quest, 6, "Return to Sneel in Freeport", 1, "I should return to Sneel in Freeport, and inform him of my success.", 11, 5590218)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "")
	UpdateQuestTaskGroupDescription(Quest, 2, "I was able to prove the superior intelligence of the ratongas.")

	UpdateQuestDescription(Quest, "I was able to solve the equations left by the gnomes in Temple Street, simplistic as they were.  With my quick thinking, I was able to defeat the inferior ones assembled by the gnomes themselves, which will pose no threat to Freeport now.  ")
	GiveQuestReward(Quest, Player)
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


