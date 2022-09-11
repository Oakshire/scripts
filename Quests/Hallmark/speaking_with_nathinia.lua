--[[
    Script Name    : Quests/Hallmark/speaking_with_nathinia.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.10 12:09:00
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]
function Init(Quest)
	AddQuestStepChat(Quest, 1, "I must speak with Nathinia.", 1, "I need to speak with Nathinia in the village.", 11, 3250014)
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
	UpdateQuestStepDescription(Quest, 1, "I've spoken with Nathinia.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with Nathinia in the village.")

	UpdateQuestDescription(Quest, "I've spoken with Nathinia Sparklebright in the village as Garven asked.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
