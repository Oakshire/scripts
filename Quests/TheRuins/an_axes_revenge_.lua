--[[
	Script Name		:	an_axes_revenge.lua
	Script Purpose	:	Handles the quest, "An Axe's Revenge"
	Script Author	:	premierio015
	Script Date		:	25.06.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The Ruins
	Quest Giver		:	a carved orc axe
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill orcs", 1, 100, "I feel the irresistible need to slay orcs in the Ruins!  I can reach the Ruins by using any of the bells in and around the City of Freeport.", 91, 1270017, 1270005, 1270006, 1270014, 1270040, 1270007, 1270042, 1270022, 1270009, 1270045, 1270024, 1270025, 1270013, 1270041, 1270043, 1270030)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed some orcs")
	UpdateQuestTaskGroupDescription(Quest, 1, "I killed six orcs before the urge went away.")
    if HasItem(Player, 1335) then
    RemoveItem(Player, 1335)
    end
	UpdateQuestDescription(Quest, "I had to kill six orcs before the urge left me.  The axe now rests quietly with me.")
	GiveQuestReward(Quest, Player)
   end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
