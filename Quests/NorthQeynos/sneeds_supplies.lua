--[[
    Script Name    : Quests/NorthQeynos/sneeds_supplies.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.13 11:05:51
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Sneed Galliway
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Get Sneed's supplies from Blacksmith Hegrenn.", 1, "I must find Blacksmith Hegrenn and get the order for Sneed.", 11, 2310038)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
    UpdateQuestZone(Quest,"South Qeynos")
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
	UpdateQuestStepDescription(Quest, 1, "I've gotten the supplies for Sneed.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've got Sneed's supplies from the blacksmith.")

	AddQuestStepChat(Quest, 2, "Deliever Sneed's supplies to him in North Qeynos.", 1, "I must make sure Sneed gets these supplies back at his shop in North Qeynos.", 566, 2220027)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
    UpdateQuestZone(Quest,"North Qeynos")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've delievered supplies for Sneed.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've delievered Sneed's supplies from the blacksmith.")

	UpdateQuestDescription(Quest, "I helped Sneed Galliway by getting his order from Blacksmith Hegrenn.  I even earned some coin in the process.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
