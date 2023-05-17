--[[
    Script Name    : Quests/Antonica/freedom.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.16 02:05:23
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I should check the old Tomb of Varsoon to see if I can find a key to open this lock.", 6, "I may be able to find out what is hidden beneath all of the chains if I take the extra effort to break them open.", 11, 363.13, -19.49, -662.83, 12)
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
	UpdateQuestStepDescription(Quest, 1, "I've found the Tomb, and when I did, I thought I heard a snapping sound coming from the chained bundle.")
    AddQuestStep(Quest,2,"I should inspect the chained bundle again.",1, 100,"I may be able to find out what is hidden beneath all of the chains if I take the extra effort to break them open.", 1010)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The lock disarmed near the old Tomb of Varsoon!")
	AddQuestStepKill(Quest, 3, "I should now kill the crabs of Antonica and gather their claws to try to saw through the leather straps on the chained bundle.", 5, 100, "I may be able to find out what is hidden beneath all of the chains if I take the extra effort to break them open.", 76, 	120687,	120118,120610,120417)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found a number of different crab claws.  Hopefully they might help to cut away the straps binding the chains.")
    AddQuestStep(Quest,4,"Use the claws on the chained bundle.",1, 100,"I may be able to find out what is hidden beneath all of the chains if I take the extra effort to break them open.", 1010)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've managed to cut the leather straps on the chained bundle.")
	AddQuestStepKill(Quest, 5, "I need to kill the Dark Coven conjurors to see if they have any kind of device that can cut through steel chains.", 1, 50, "I may be able to find out what is hidden beneath all of the chains if I take the extra effort to break them open.", 26, 120182)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've found something called an Arcane Saw.  I hope this will do the trick.")
    AddQuestStep(Quest,6,"Use the arcane saw on the chained bundle.",1, 100,"I may be able to find out what is hidden beneath all of the chains if I take the extra effort to break them open.", 1010)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I've found that hidden inside the chained bundle was the legendary maul, Freedom.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found that hidden inside the chained bundle was the legendary maul, Freedom.")

	UpdateQuestDescription(Quest, "I've destroyed all of the chains that were hiding away Freedom, the legendary maul.")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		QuestComplete(Quest, QuestGiver, Player)
end
end

