--[[
    Script Name    : Quests/NorthQeynos/blank_pages.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 02:05:31
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Andrea Dovesong
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to get parchment from Scribe Duvo.", 1, "I'm to retrieve some parchment from Scribe Duvo in the Elddar Grove.", 75, 2070044)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"The Elddar Grove")
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
	UpdateQuestStepDescription(Quest, 1, "I got the parchment from Duvo.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I got all of the parchment Andrea will need.")
	AddQuestStepChat(Quest, 2, "I need to get this parchment back to Andrea Dovesong.", 1, "Andrea Dovesong is expecting this parchment near the Qeynos Claymore statue in North Qeynos.", 75, 2220111)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
    UpdateQuestZone(Quest,"North Qeynos")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I delivered the parchment to Andrea Dovesong.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Andrea was happy to finally have her parchment and was greatful for my effort.")

	UpdateQuestDescription(Quest, "Scribe Duvo was happy to oblige Andrea with as much parchment as she may need. Andrea was grateful for the errand and rewarded my efforts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
		end
end
