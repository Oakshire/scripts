--[[
	Script Name		:	ReapingtheBenefitsofaMonopoly.lua
	Script Purpose	:	Handles the quest, "Reaping the Benefits of a Monopoly"
	Script Author	:	FeaRFX
	Script Date		:	25/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Fish up searing trout", 8, 100, "Dirzdia wants some searing trout from the Lower Tendril River.", 2542, 37182)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have caught the trout")

	AddQuestStepChat(Quest, 2, "Bring these trout back to Dirzdia", 1, "Dirzdia wants some searing trout from the Lower Tendril River.", 2542, 140025)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Dirzdia the trout")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have brought Dirzdia the searing trout.")

	UpdateQuestDescription(Quest, "I have caught the searing trout and brought them back to Dirzdia.")
	while HasItem(Player, 37182, 1) do
	    RemoveItem(Player, 37182)
	end
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