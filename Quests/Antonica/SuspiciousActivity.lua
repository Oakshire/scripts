--[[
	Script Name		:	SuspiciousActivity.lua
	Script Purpose	:	Handles the quest, "Suspicious Activity"
	Script Author	:	
	Script Date		:	
	Script Notes	:	

	Zone			:	Antonica
	Quest Giver		:	Tyllia Navar
	Preceded by		:	None
	Followed by		:	None
--]]

local QuestID = 3000

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill five Sabertooth runts.", 5, 100, "I need to do what Tyllia has asked of me.", 1221, 121248,120092)
	AddQuestStepKill(Quest, 2, "I need to kill two Sabertooth neophytes.", 2, 100, "I need to do what Tyllia has asked of me.", 1220, 121269,120123)
	AddQuestStep(Quest, 3, "I need to inspect the boat on the south shore south west of where Tyllia is.", 1, 100, "I need to do what Tyllia has asked of me.", 830)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've killed five Sabertooth runts.")
	CompleteStage1Check(Quest, Player)

	--AddQuestStepKill(Quest, 2, "I need to kill ten snakes.", 10, 100, "I need to head out into Antonica and kill the vermin that infest the land; rats, snakes and beetles. Knight-Lieutenant Alesso said I should kill about ten of each.", 1908, 120068, 121226, 121347)
	--AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've killed two Sabertooth neophytes.")
	CompleteStage1Check(Quest, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have inspected the boat and found it mostly empty.")
	CompleteStage1Check(Quest, Player)
end

function CompleteStage1Check(Quest, Player)
	if QuestStepIsComplete(Player, QuestID, 1) and QuestStepIsComplete(Player, QuestID, 2) and QuestStepIsComplete(Player, QuestID, 3) then
		UpdateQuestTaskGroupDescription(Quest, 1, "I have done what Tyllia asked of me.")
		AddQuestStepChat(Quest, 4, "I need to return to Tyllia now that I have done all that she asked.", 1, 100, "I have done what Tyllia asked of me.", 11, 121435)
		AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	end
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have spoken with Tyllia.")
	UpdateQuestDescription(Quest, "I did as Tyllia asked and slew the gnolls. Unfortunately there was nothing in the boat.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end