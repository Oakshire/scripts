--[[
    Script Name    : Quests/Blackburrow/mancatcher.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.24 11:07:53
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I should try to find the staff tip on the gnolls of Blackburrow", 1, 25, "I need to find a part of this staff that might connect to the end of the ropes.  I'm not sure what I'm looking for, but I'm certain I'll know what it is once I see it.", 1671, 170010)
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
	UpdateQuestStepDescription(Quest, 1, "I have found the clawed staff tip on the gnolls")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found a trident tip that appears to be articulated in several places.  At each end of the tips, there are small hoops to run ropes through.  You're pretty sure this is intended to be attached to the roped staff.")

	AddQuestStepKill(Quest, 2, "I need to find braided rope on the Sabertooth excavators.", 1, 25, "I need to find some type of rope to attach to the central pulley system.  I don't think any rope will do, though.  Maybe I should check with the gnoll excavators to see if they have a rope strong enough to use.", 2329, 170029)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found some braided rope.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've found a nice braided rope that appears to be very strong.  I'm certain I can run this rope through the hooks of the staff.")

	AddQuestStepKill(Quest, 3, "I need to find a handle trigger among the gnoll diviners.", 1, 25, "In order to use this odd mechanical device, I'm going to need some type of trigger or handle.  I'm not too sure where I can find one of these, though.  Perhaps one of the important looking gnoll diviners might have something like that on them.", 632, 170019, 2490312)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have found replacement weights for the whip.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've found an odd shaped handle of some type.  Looking at it closely, it's a perfect fit for this roped staff.  What luck!")
    if HasItem(Player, 2535) then -- a roped staff
    RemoveItem(Player, 2535)
    end
	UpdateQuestDescription(Quest, "I've managed to collect all the pieces that were once attached to this staff.  It's now an intricate device, possibly of gnomish make.  It looks as if it's intended to be used to catch opponents in addition to damaging them - like a mancatcher of sorts.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


