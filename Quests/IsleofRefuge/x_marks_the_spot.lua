--[[
    Script Name    : Quests/IsleofRefuge/x_marks_the_spot.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.20 12:09:11
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: fallen pirate map
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to find the location on the map.  It should be near a waterfall.", 1, 100, "I should find the location on the map.  The waterfall it mentions should be somewhere on this island.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    CloseItemConversation(nil,Player)
    if HasItem(Player,7027) then
    RemoveItem(Player,7027,1)
    end
    SendMessage(Player, "Your fallen pirate's map has been placed in your quest satchel.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found the location on the map.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the location on the map but I seem to have disturbed a ghost!")

	AddQuestStepKill(Quest, 2, "I need to defeat the ghost to get his treasure!", 1, 100, "I need to defeat the ghost to get his treasure!", 611, 3250054)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I defeated the ghost pirate!")
	UpdateQuestTaskGroupDescription(Quest, 2, "I defeated the ghost pirate!")

	UpdateQuestDescription(Quest, "The map seemed to have led to the grave of an old sailor.  He wasn't resting peacefully though and I had to defend myself against an attack from the grave's ghost!  I did manage to get some coin and an old cutlass.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
