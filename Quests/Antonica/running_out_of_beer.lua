--[[
    Script Name    : Quests/Antonica/running_out_of_beer.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.01 06:09:16
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I must get an ale from upstairs.", 1, 100, "I need to go upstairs and get an ale for Haddek from the keg.", 308)
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
	UpdateQuestStepDescription(Quest, 1, "I have gotten an ale from upstairs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gone upstairs and acquired an ale for Haddek.")

	AddQuestStepChat(Quest, 2, "Deliver the ale to Haddek.", 1, "I must give this ale to Haddek.", 308, 120281)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have delivered the ale to Haddek.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given the ale to Haddek.")

	UpdateQuestDescription(Quest, "I have given Haddek his ale.  Maybe now I can get him to give me some work.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

