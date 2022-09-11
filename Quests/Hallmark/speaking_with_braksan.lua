--[[
    Script Name    : Quests/Hallmark/speaking_with_braksan.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 12:09:16
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Garven Tralk
        Preceded by: Gruttooth Invasion
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Braksan.", 1, "I must speak with Braksan Steelforge in the village.", 11, 3250017)
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
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Braksan.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Braksan Steelforge in the village.")

	UpdateQuestDescription(Quest, "I've spoken with Braksan Steelforge as per Garven Tralk's instructions.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
