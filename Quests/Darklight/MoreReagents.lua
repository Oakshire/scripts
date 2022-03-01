--[[
	Script Name		:	MoreReagents.lua
	Script Purpose	:	Handles the quest, "More Reagents"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Gather ooze from slimy mulchers", 6, 100, "I need ooze from the slimy mulchers for Maelixia.", 355, 340960)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered the ooze")

	AddQuestStepChat(Quest, 2, "Bring this ooze back to Maelixia", 1, "I need ooze from the slimy mulchers for Maelixia.", 355, 340171)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have given Maelixia the ooze")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have brought Maelixia the ooze.")

	UpdateQuestDescription(Quest, "I have brought Maelixia the slime from the mulchers.")
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
