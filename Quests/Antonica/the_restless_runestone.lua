--[[
    Script Name    : Quests/Antonica/the_restless_runestone.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 06:05:35
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill twenty restless Caltorsites in Antonica.", 20, 100, "Undead threaten to attack the watermill.  I must destroy the restless caltorsites before they make camp at that location.", 611, 120244,120131,120126,120127,120245,120246	)
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
	UpdateQuestStepDescription(Quest, 1, "I have dispatched many restless Caltorsites.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've destroyed quite a few of the undead, I hope that keeps them at bay.")

	UpdateQuestDescription(Quest, "I found some restless Caltorsites nearby, so I dispatched them with hopes of staving off any attempt to attack the watermill.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
