--[[
    Script Name    : Quests/QeynosHarbor/killing_fire_beetles.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.10 01:05:59
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Carpenter Paddock
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must kill klicnik mites.", 20, 100, "I need to kill fire beetles out in Antonica and gather twenty carcasses.", 160, 120067, 121225, 121444, 120372, 121350, 120211, 120367,121369, 120373, 120253, 120371, 121443)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"Antonica")
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
	UpdateQuestStepDescription(Quest, 1, "I've killed the klicnik mites.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've gathered the twenty fire beetle carcasses.")
    UpdateQuestZone(Quest,"Qeynos Harbor")

	AddQuestStepChat(Quest, 2, "I must return to Carpenter Paddock.", 1, "I need to bring these twenty carcasses to Carpenter Paddock in Qeynos Harbor.", 160, 2210153)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've returned to Carpenter Paddock.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've given the beetle carcasses to Carpenter Paddock.")

	UpdateQuestDescription(Quest, "I've killed many fire beetles and gathered twenty carcasses. Paddock was very pleased, and the reward was well worth my time and effort.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end


