--[[
    Script Name    : Quests/Antonica/revenge_on_the_kodiaks.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 04:05:06
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill young kodiaks in Antonica near the Archer's Wood.", 12, 100, "The young kodiak bears are a menace in this area, I should thin out their population.", 174, 120294,341009)
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
	UpdateQuestStepDescription(Quest, 1, "I have slain enough young kodiaks for now.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain the young kodiaks.")

	UpdateQuestDescription(Quest, "I have slain some of the young kodiaks in the area, I hope that culls the population enough to make the area safer.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
