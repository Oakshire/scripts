--[[
	Script Name		:	Reagents.lua
	Script Purpose	:	Handles the quest, "Reagents"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need dust from the T'Rethir vampires", 10, 100, "I need vampire dust for Maelixia.", 181, 340159, 340161, 340156, 340157, 340160, 340155, 340162)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected the vampire dust")

	AddQuestStepChat(Quest, 2, "Bring this dust to Maelixia", 1, "I need vampire dust for Maelixia.", 181, 340171)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Maelixia the dust")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have given Maelixia the vampire dust.")

	UpdateQuestDescription(Quest, "I have brought the vampire dust to Maelixia.")
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