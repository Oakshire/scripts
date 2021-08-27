--[[
    Script Name    : Quests/Antonica/the_balance_of_life.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.27 09:08:38
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill ten sea turtles in the waters near Antonica.", 1, 100, "I must bring down ten sea turtles to lower their population.", 201, 120033, 121212)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed ten sea turtles.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I brought down ten sea turtles.")

	UpdateQuestDescription(Quest, "I've done what's necessary as a good steward of the lands. I've learned that every animal must have its numbers managed or life's balance is upset.  Daryann appreciated my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

