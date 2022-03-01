--[[
	Script Name		:	OtherMaterials.lua
	Script Purpose	:	Handles the quest, "Other Materials?"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I need three rock samples from near the Warpfont Spire.", 3, 100, "I need to collect rocks from the Warpfont Spire and the Harrowglade for Geldax Xalylharil.", 188, 15326)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the rocks from the Warpfont Spire.")

	AddQuestStepObtainItem(Quest, 2, "I need three rock samples from the Harrowglade.", 3, 100, "I need to collect rocks from the Warpfont Spire and the Harrowglade for Geldax Xalylharil.", 188, 8056)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have the rocks from the Harrowglade.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the rocks.")

	AddQuestStepChat(Quest, 3, "I must return to Geldax Xalylharil.", 1, "I need to bring the rocks back to Geldax Xalylharil.", 188, 340147)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have given Geldax Xalylharil the rocks.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have brought the rocks to Geldax Xalylharil.")

	UpdateQuestDescription(Quest, "I have collected rocks from the Warpfont Spire and the Harrowglade and given them to Geldax Xalylharil.")
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
