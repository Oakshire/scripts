--[[
	Script Name		:	DiggingDeeper.lua
	Script Purpose	:	Handles the quest, "Digging Deeper"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Speak with Belarshalee.", 1, "Speak with Belarshalee and find out if she has any information about the Sableflame.", 11, 340173)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken to Belarshalee.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken to Belarshalee.")

	AddQuestStepKill(Quest, 2, "I need to kill Sableflame incanters, cauterizers, scryers, or watchers.", 8, 100, "Gaussnitra V'Kilana wants me to kill Sableflame incanters, cauterizers, scryers, and watchers.", 611, 340127, 340125, 340124, 340111)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed the Sableflame cultists.")

	AddQuestStepChat(Quest, 3, "I need to return to Gaussnitra V'Kilana.", 1, "Gaussnitra V'Kilana wants me to kill Sableflame incanters, cauterizers, scryers, and watchers.", 11, 341003)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Gaussnitra V'Kilana.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have slain the Sableflame cultists.")

	UpdateQuestDescription(Quest, "I have slain the Sableflame cultists.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
