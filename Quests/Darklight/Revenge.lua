--[[
	Script Name		:	Revenge.lua
	Script Purpose	:	Handles the quest, "Revenge!"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Collect pairs of Sullian fairy wings", 8, 100, "Maelixia wants Sullian fairy wings.", 110, 340151, 340977, 340149, 340150)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the wings")

	AddQuestStepChat(Quest, 2, "Bring these wings back to Maelixia", 1, "Maelixia wants Sullian fairy wings.", 11, 340171)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Maelixia the wings")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have brought the wings back to Maelixia.")

	UpdateQuestDescription(Quest, "I have brought Maelixia the fairy wings.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end