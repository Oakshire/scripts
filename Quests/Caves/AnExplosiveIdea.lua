--[[
	Script Name		:	AnExplosiveIdea.lua
	Script Purpose	:	Handles the quest, "An Explosive Idea"
	Script Author	:	Shatou
	Script Date		:	1/5/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Emma Torque
	Preceded by		:	None
	Followed by		:	Destroying the Foundation
--]]

local BLASTING_POWDER_ID = 4342

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I need to collect the explosive powder from 15 piles of powdered minerals.", 15, 100, "Emma Torque has asked me to collect some explosive powder for her.", 344, BLASTING_POWDER_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the explosive powder from 15 piles of powdered minerals.")

	AddQuestStepChat(Quest, 2, "I need to bring this explosive powder to Emma Torque.", 1, "Emma Torque has asked me to collect some explosive powder for her.", 344, BLASTING_POWDER_ID)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have brought Emma Torque the explosive powder.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have done Emma's task for her.")

	UpdateQuestDescription(Quest, "I have collected the explosive powder that Emma required.")
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