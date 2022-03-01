--[[
	Script Name		:	ResonanceCapture.lua
	Script Purpose	:	Handles the quest, "Resonance Capture"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to use the device Geldax gave me on five warped wisplings.", 5, 100, "Geldax Xalylharil wants me to use his device on a number of warped wisplings.", 348)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have 'de-warped' five wisps.")

	AddQuestStepChat(Quest, 2, "I need to return to Geldax Xalylharil.", 1, "Geldax Xalylharil wants me to use his device on a number of warped wisplings.", 11, 340147)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Geldax his device and the warp extract.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected warp extract and brought it to Geldax Xalylharil.")

	UpdateQuestDescription(Quest, "I 'de-warped' a number of wisps and brought Geldax Xalylharil his device back.")
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
