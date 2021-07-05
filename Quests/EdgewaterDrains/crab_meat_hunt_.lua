--[[
	Script Name		:	crab_meat_hunt.lua
	Script Purpose	:	Handles the quest, "Crab Meat Hunt"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	04.07.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Edgewater Drains
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to get ten pieces of crab meat from the juvenile sludgewalkers in the Edgewater Drains.", 10, 100, "I have decided to hunt for crab meat in the Edgewater Drains.  The larger the pieces the better.", 78, 1560009)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have all of the crab meat that I want.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I think I have found enough crab meat for now.")

	UpdateQuestDescription(Quest, "I have found some large chunks of passable crab meat from these creatures.  I think that will be enough though.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


