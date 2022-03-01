--[[
	Script Name		:	ComparisonstotheHarrowglade.lua
	Script Purpose	:	Handles the quest, "Comparisons to the Harrowglade"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect some resonant dust from the wisplings in the Harrowglade.", 8, 100, "I need to collect resonant dust from the wisplings in the Harrowglade.", 342, 340121)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the resonant dust.")

	AddQuestStepChat(Quest, 2, "I need to bring this dust back to Geldax Xalylharil.", 1, "I need to collect resonant dust from the wisplings in the Harrowglade.", 342, 340147)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Geldax Xalylharil the dust.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the resonant dust and given it to Geldax Xalylharil.")

	UpdateQuestDescription(Quest, "I have brought the nominal resonant dust to Geldax Xalylharil, as he requested.")
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
