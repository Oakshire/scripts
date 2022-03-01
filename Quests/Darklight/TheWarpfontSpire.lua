--[[
	Script Name		:	TheWarpfontSpire.lua
	Script Purpose	:	Handles the quest, "The Warpfont Spire"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect some resonant dust from the warped wisplings at the Warpfont Spire.", 8, 100, "I need resonant dust from the warped wisplings at the Warpfont Spire.", 346, 340101)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the resonant dust.")

	AddQuestStepChat(Quest, 2, "I need to bring this dust back to Geldax Xalylharil.", 1, "I need resonant dust from the warped wisplings at the Warpfont Spire.", 346, 340147)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Geldax Xalylharil the dust.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given Geldax Xalylharil the resonant dust.")

	UpdateQuestDescription(Quest, "I have brought Geldax Xalylharil the resonant dust he asked for.")
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
