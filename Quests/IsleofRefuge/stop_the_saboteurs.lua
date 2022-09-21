--[[
    Script Name    : Quests/IsleofRefuge/stop_the_saboteurs.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.20 05:09:58
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: goblin attack plans
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find the goblin saboteurs down by the beach.", 1, 100,"I need to round up some allies and find the goblins who are lying in wait.  The note says they should be down by a beach on the goblin side of the bay.", 11)
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
	UpdateQuestStepDescription(Quest, 1, "I found the saboteurs!")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the saboteurs!")

	AddQuestStep(Quest, 2, "I need to slay all the goblin saboteurs to protect the ships!", 1, 100, "I need to slay all the goblin saboteurs before they can burn down any of the ships pulling into port!", 611)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I defeated all the goblin saboteurs.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I defeated all the goblin saboteurs.")

	UpdateQuestDescription(Quest, "It looks like the goblins were planning to burn down the next ship to pull into port.  We were able to stop them before this happened and slay the little monsters on the beach.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end