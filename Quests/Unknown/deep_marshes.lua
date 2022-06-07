--[[
    Script Name    : Quests/Unknown/deep_marshes.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.06 10:06:35
    Script Purpose : 

        Zone       : Unknown
        Quest Giver: Deep Marshes (book)
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill 10 jungle leapers.", 10, 100, "I believe I will find the book's missing pages in the Feerrott.", 611, 1210144)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed 10 jungle leapers.")

	AddQuestStep(Quest, 2, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have read the book.")

	AddQuestStepKill(Quest, 3, "I need to kill 10 swamp feeders.", 10, 100, "I believe I will find the book's missing pages in the Feerrott.", 611, 1210023)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed 10 swamp feeder")

	AddQuestStep(Quest, 4, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have read the book.")

	AddQuestStepKill(Quest, 5, "I need to kill 8 toxic water skaters.", 8, 100, "I believe I will find the book's missing pages in the Feerrott.", 611, 1210061,1210147)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed 8 toxic water skaters.")

	AddQuestStep(Quest, 6, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have read the book.")

	AddQuestStepKill(Quest, 7, "I need to kill 7 underbrush fiends.", 7, 100, "I believe I will find the book's missing pages in the Feerrott.", 611, 1210099)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have killed 7 underbrush fiends.")

	AddQuestStep(Quest, 8, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have read the book.")

	AddQuestStepKill(Quest, 9, "I need to kill 8 thule sattars.", 8, 100, "I believe I will find the book's missing pages in the Feerrott.", 611,1210097)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have killed 8 thule sattars,")

	AddQuestStep(Quest, 10, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I have read the book.")

	AddQuestStepKill(Quest, 11, "I need to kill 8 bitter blooms.", 8, 100, "I believe I will find the book's missing pages in the Feerrott.", 611, 1210035)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I have killed 8 bitter blooms.")

	AddQuestStep(Quest, 12, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I have read the book.")

	AddQuestStepKill(Quest, 13, "I need to kill 6 forest creeps.", 6, 100, "I believe I will find the book's missing pages in the Feerrott.", 611, 1210069)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I have killed 6 forest creeps.")

	AddQuestStep(Quest, 14, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
end

function Step14Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 14, "I have read the book.")

	AddQuestStepKill(Quest, 15, "I need to kill 7 thule sattars.", 7, 100, "I believe I will find the book's missing pages in the Feerrott.", 611, 1210097)
	AddQuestStepCompleteAction(Quest, 15, "Step15Complete")
end

function Step15Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 15, "I have killed 7 thule sattars.")

	AddQuestStep(Quest, 16, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 16, "Step16Complete")
end

function Step16Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 16, "I have read the book.")

	AddQuestStepKill(Quest, 17, "I need to kill 5 Evol Ew warders", 5, 100, "I believe I will find the book's missing pages in the Feerrott.", 611, 1210063)
	AddQuestStepCompleteAction(Quest, 17, "Step17Complete")
end

function Step17Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 17, "I have killed 5 Evol Ew warders")

	AddQuestStep(Quest, 18, "I should read the book.", 1, 100, "I believe I will find the book's missing pages in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 18, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 18, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the book's missing pages.")

	UpdateQuestDescription(Quest, "I have found all of the missing pages for the book titled \"Deep Marshes\".")
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
		Step14Complete(Quest, QuestGiver, Player)
	elseif Step == 15 then
		Step15Complete(Quest, QuestGiver, Player)
	elseif Step == 16 then
		Step16Complete(Quest, QuestGiver, Player)
	elseif Step == 17 then
		Step17Complete(Quest, QuestGiver, Player)
	elseif Step == 18 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

