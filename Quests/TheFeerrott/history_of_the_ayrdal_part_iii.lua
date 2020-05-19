--[[
    Script Name    : Quests/TheFeerrott/history_of_the_ayrdal_part_iii.lua
    Script Author  : Ememjr
    Script Date    : 2019.03.25 06:03:41
    Script Purpose : 

        Zone       : TheFeerrott
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to visit The Drowning Causeway.", 10, "I must see The Drowning Causeway in the Feerrott.", 11, 105, 0, -131)
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
	UpdateQuestStepDescription(Quest, 1, "I have visited The Drowning Causeway.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have seen The Drowning Causeway.")

	AddQuestStep(Quest, 2, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have read the book.")

	AddQuestStepLocation(Quest, 3, "I need to visit The Jungle of Alliz Evol.", 10, "I need to visit The Jungle of Alliz Evol in the Feerrott.", 11, 10, 2, -23)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have seen The Jungle of Alliz Evol.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have seen The Jungle of Alliz Evol.")

	AddQuestStep(Quest, 4, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have read the book.")

	AddQuestStepLocation(Quest, 5, "I need to visit Altar of the Four Canons.", 10, "I need to see the Altar of the Four Canons in the Feerrott.", 11,  -730, 8, 220)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have seen Altar of the Four Canons.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have seen Altar of the Four Canons.")

	AddQuestStep(Quest, 6, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I have read the book.")

	UpdateQuestDescription(Quest, "I have finished reading this history tome.  Perhaps I understand more than I did before.")
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