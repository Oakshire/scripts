--[[
	Script Name		:	AnotherProblem.lua
	Script Purpose	:	Handles the quest, "Another Problem"
	Script Author	:	FeaRFx
	Script Date		:	26/01/2017
	Script Notes	:	

	Zone			:	Darklight Wood
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Find Vicaonar K'Xaar.", 1, "Find Vicaonar K'Xaarat. He can be found to the east of Wanderlust Fair.", 11, 340143)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have found Vicaonar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found Vicaonar.")

	UpdateQuestDescription(Quest, "I have found Vicaonar.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end
