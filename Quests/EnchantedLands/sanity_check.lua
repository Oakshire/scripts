--[[
	Script Name		:	sanity_check.lua
	Script Purpose	:	Handles the quest, "Sanity Check"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	11/27/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Enchanted Lands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Pick up a badger for Deputy Kegie.  Heck, get a few!", 7, 100, "I'm on my way to visit Deputy Kegie.", 127, 0)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Obtained badgers for Deputy Kegie to bake.")
	AddQuestStepChat(Quest, 2, "Deliver badgers to Deputy Kegie in a wagon near the Lazy Drain.", 1, "I'm on my way to visit Deputy Kegie.", 11, 0)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Spoke with Deputy Kegie.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Deputy Kegie and given him a badger.")

	UpdateQuestDescription(Quest, "I spoke to Deputy Kegie, who seems desperate for company.  Maybe I'll drop by to see him from time to time.  We might be able to figure out what happened to his partner someday.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
