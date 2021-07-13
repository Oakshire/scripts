--[[
    Script Name    : Quests/FallenGate/searching_the_depths_of_fallen_gate.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.12 09:07:14
    Script Purpose : 

        Zone       : FallenGate, City of Freeport
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
	AddQuestStep(Quest, 1, "I must find the tome Ilucide wrote about in his journal.", 1, 100, "I must seek out the knowledge required at the Academy of Arcane sciences in Freeport.", 195)
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
	UpdateQuestStepDescription(Quest, 1, "I've found the tome detailing how to open the barrier.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found the lore to unlock the sealed door.")

	AddQuestStep(Quest, 2, "I must find the urn containing the remains of a fallen dragoon.", 1, 100, "I need to find the three pieces required to break the barrier to the lower depths of Fallen Gate.", 991)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found the urn.")

	AddQuestStep(Quest, 3, "I need to find the spell sequestered away in Fallen Gate.", 1, 100, "I need to find the three pieces required to break the barrier to the lower depths of Fallen Gate.", 374)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found the spell that was hidden in Fallen Gate.")

	AddQuestStep(Quest, 4, "I need to find the bangle hidden in a chest in Fallen Gate.", 1, 100, "I need to find the three pieces required to break the barrier to the lower depths of Fallen Gate.", 950)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've found the bangle.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've found the three pieces required to break the barrier to the lower depths of Fallen Gate.")

	AddQuestStep(Quest, 5, "I need to examine the bangle.", 1, 100, "I should examine the bangle that I created.", 950)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I've examined the bangle.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've examined the bangle.")
    if HasItem(Player, 7025) then
    RemoveItem(Player, 7025)
    elseif HasItem(Player, 8259) then
    RemoveItem(Player, 8259)
    end
	UpdateQuestDescription(Quest, "I've managed to complete the incantation and the door at the bottom of Fallen Gate now opens for me. Based on what I've learned so far, a great evil has been sealed behind this barrier, perhaps the being which is responsible for the animation of all the dead in Fallen Gate.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
