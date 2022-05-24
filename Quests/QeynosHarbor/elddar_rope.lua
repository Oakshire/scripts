--[[
    Script Name    : Quests/QeynosHarbor/elddar_rope.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.23 07:05:41
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: Harron
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should get the rope from Adrianna.", 1, "I must go to Elddar Grove and get the rope that Harron ordered from Adrianna.", 11, 2070065)
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
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I got the rope from Adrianna.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have been to Elddar Grove and picked up the rope that Harron ordered.")
    UpdateQuestZone(Quest,"Qeynos Harbor")
	AddQuestStepChat(Quest, 2, "I should get this rope back to Harron in Qeynos Harbor.", 1, "Harron is waiting for this rope in the Qeynos Harbor.", 2329, 2210038)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I delivered the rope to Harron.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave Harron the rope he ordered from the Elddar Grove.")

	UpdateQuestDescription(Quest, "I have been to Elddar Grove and picked up the rope that Harron ordered so he can make nets and harpoon line.  He gave me some coin for my help.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
