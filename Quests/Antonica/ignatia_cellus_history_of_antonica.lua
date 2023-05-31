--[[
    Script Name    : Quests/Antonica/ignatia_cellus_history_of_antonica.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.30 02:05:23
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to search Sabertooth battlers.", 6, 100, "I want to find the pages to the book.", 611, 120184)
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
	UpdateQuestStepDescription(Quest, 1, "I have searched Sabertooth battlers and found the page!")

	AddQuestStep(Quest, 2, "I want to read the page I found.", 1, 100, "I want to find the pages to the book.", 185)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I believe the Sabertooth rune casters of Antonica will have more of these pages.")

	AddQuestStepKill(Quest, 3, "I need to search for Sabertooth rune casters.", 4, 100, "I want to find the pages to the book.", 611, 120300)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have searched Sabertooth rune casters and found the page!")

	AddQuestStep(Quest, 4, "I want to read the page I found.", 1, 100, "I want to find the pages to the book.", 185)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I believe the Sabertooth battlers of Antonica will have more of these pages.")

	AddQuestStepKill(Quest, 5, "I need to search more Sabertooth battlers.", 8, 100, "I want to find the pages to the book.", 611, 120184)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have searched more Sabertooth battlers and found the page!")

	AddQuestStep(Quest, 6, "I want to read the page I found.", 1, 100, "I want to find the pages to the book.", 185)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I believe the Sabertooth warlocks of Antonica will have more of these pages.")

	AddQuestStepKill(Quest, 7, "I need to search more Sabertooth warlocks.", 3, 100, "I want to find the pages to the book.", 611, 120300)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have searched more Sabertooth warlocks and found the page!")

	AddQuestStep(Quest, 8, "I want to read the page I found.", 1, 100, "I want to find the pages to the book.", 185)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I believe the Sabertooth battlers of Antonica will have more of these pages.")

	AddQuestStepKill(Quest, 9, "I need to search the last of the Sabertooth battlers.", 8, 100, "I want to find the pages to the book.", 611, 120184)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have found the final battler page!")

	AddQuestStep(Quest, 10, "I want to read the page I found.", 1, 100, "I want to find the pages to the book.", 185)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I believe the Sabertooth tormentors of Antonica will have more of these pages.")

	AddQuestStepKill(Quest, 11, "I need to search Sabertooth tormentors.", 1, 100, "I want to find the pages to the book.", 611, 	120380)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I have searched Sabertooth tormentors and found the page!")

	AddQuestStep(Quest, 12, "I want to read the page I found.", 1, 100, "I want to find the pages to the book.", 185)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I believe the Sabertooth battlers of Antonica will have more of these pages.")

	AddQuestStepKill(Quest, 13, "I need to search Sabertooth battlers.", 1, 100, "I want to find the pages to the book.", 611, 120184)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I have searched the Sabertooth camp guards and found the final page!")

	AddQuestStep(Quest, 14, "I want to read the last page of the book.", 1, 100, "I want to find the pages to the book.", 185)
	AddQuestStepCompleteAction(Quest, 14, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 14, "I read the page I found.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found all the missing pages.")

	UpdateQuestDescription(Quest, "I've gathered many scattered pages of Ignatia Cellus' book.  I wonder whether any of her descendants also wrote any histories?  I shall keep my eyes open.  Perhaps, someday, I'll find other tomes such as this throughout Norrath.")
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
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		Step9Complete(Quest, QuestGiver, Player)
	elseif Step == 10 then
		Step10Complete(Quest, QuestGiver, Player)
	elseif Step == 11 then
		Step11Complete(Quest, QuestGiver, Player)
	elseif Step == 12 then
		Step12Complete(Quest, QuestGiver, Player)
	elseif Step == 13 then
		Step13Complete(Quest, QuestGiver, Player)
	elseif Step == 14 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
