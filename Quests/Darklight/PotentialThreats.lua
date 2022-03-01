--[[
	Script Name		:	PotentialThreats.lua
	Script Purpose	:	Handles the quest, "Potential Threats"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill Sableflame outriders, fanatics, or heralds.", 8, 100, "I need to kill the Sableflame outriders, fanatics, and heralds.", 611, 340937, 340109, 340939)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain the Sableflame cultists.")

	AddQuestStepChat(Quest, 2, "I need to return to Gaussnitra V'Kilana.", 1, "I need to kill the Sableflame outriders, fanatics, and heralds.", 11, 341003)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Gaussnitra V'Kilana.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed the Sableflame cultists.")

	UpdateQuestDescription(Quest, "I have slain the Sableflame cultists for Gaussnitra V'Kilana.")
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
