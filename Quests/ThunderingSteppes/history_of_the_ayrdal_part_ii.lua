--[[
    Script Name    : Quests/ThunderingSteppes/history_of_the_ayrdal_part_ii.lua
    Script Author  : Ememjr
    Script Date    : 2019.03.25 05:03:34
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "I need to visit The Grave Pool.", 10, "I must see The Grave Pool in the Thundering Steppes.", 11, -39, -18, 862)
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
	UpdateQuestStepDescription(Quest, 1, "I have seen The Grave Pool.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have seen The Grave Pool.")

	AddQuestStep(Quest, 2, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have read the book.")

	AddQuestStepLocation(Quest, 3, "I need to visit Coldwind Point.", 10, "I need to visit Coldwind Point in Antonica.", 11, 353, -10, 803)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have seen Coldwind Point.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have seen Coldwind Point.")

	AddQuestStep(Quest, 4, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I have read the book.")

	AddQuestStepLocation(Quest, 5, "I need to visit The Last Stand.", 1, "I need to see The Last Stand in the Thundering Steppes.", 11, -377, 5, 761)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have seen The Last Stand.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I have seen The Last Stand.")

	AddQuestStep(Quest, 6, "I should read the book.", 1, 100, "I should read the book now that I have a new page.", 2180)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 6, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I have read the book.")

	UpdateQuestDescription(Quest, "I have visited several sites and pondered their meaning, reading more of this tome along the way.  Soon I shall have enough experience to consider Part Three.")
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
