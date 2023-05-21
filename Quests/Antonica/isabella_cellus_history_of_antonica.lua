--[[
    Script Name    : Quests/Antonica/isabella_cellus_history_of_antonica.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.20 03:05:49
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill 5 Sabertooth runts.", 5, 100, "I must find all the missing pages of this tome.", 611, 120092)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed 5 Sabertooth runts.")

	AddQuestStep(Quest, 2, "I need to read the page I found.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've read the next page and want to find more.")

	AddQuestStepKill(Quest, 3, "I need to kill 8 Sabertooth runts.", 8, 100, "I must find all the missing pages of this tome.", 611, 120092)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed 8 Sabertooth runts.")

	AddQuestStep(Quest, 4, "I need to read the page I just found.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've read the next page and should slay Sabertooth champions to find another page.")

	AddQuestStepKill(Quest, 5, "I need to kill 4 Sabertooth champions.", 4, 100, "I must find all the missing pages of this tome.", 611, 120425,120430,170083)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed 4 Sabertooth champions.")

	AddQuestStep(Quest, 6, "I need to read the latest page.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've read the next page and should slay Sabertooth champions to find another page.")

	AddQuestStepKill(Quest, 7, "I need to kill 5 Sabertooth champions.", 5, 100, "I must find all the missing pages of this tome.", 611, 120425,120430,170083)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have killed 5 Sabertooth champions.")

	AddQuestStep(Quest, 8, "I need to read the latest page.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I've read the next page and should slay scrawny Sabertooths in Blackburrow to find another page.")

	AddQuestStepKill(Quest, 9, "I need to kill 5 scrawny Sabertooths in Blackburrow .", 5, 100, "I must find all the missing pages of this tome.", 611, 	170004)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have killed 5 scrawny Sabertooths.")

	AddQuestStep(Quest, 10, "I need to read the latest page.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I've read the next page and should slay scrawny Sabertooths in Blackburrow to find another page.")

	AddQuestStepKill(Quest, 11, "I need to kill 8 scrawny Sabertooths in Blackburrow .", 8, 100, "I must find all the missing pages of this tome.", 611, 	170004)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I have killed 8 scrawny Sabertooths.")

	AddQuestStep(Quest, 12, "I need to read the latest page.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I've read the next page and should slay ridge rats in Blackburrow to find another page.")

	AddQuestStepKill(Quest, 13, "I need to kill 6 ridge rats in Blackburrow .", 6, 100, "I must find all the missing pages of this tome.", 611, 170001)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I have killed 6 ridge rats.")

	AddQuestStep(Quest, 14, "I need to read the latest page.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
end

function Step14Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 14, "I've read the next page and should slay scrawny Sabertooths in Blackburrow to find another page.")

	AddQuestStepKill(Quest, 15, "I need to kill 6 scrawny Sabertooths.", 6, 100, "I must find all the missing pages of this tome.", 611, 170004)
	AddQuestStepCompleteAction(Quest, 15, "Step15Complete")
end

function Step15Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 15, "I have killed 6 scrawny Sabertooths.")

	AddQuestStep(Quest, 16, "I need to read the latest page.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 16, "Step16Complete")
end

function Step16Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 16, "I've read the next page and should slay Sabertooth anglers to find another page.")

	AddQuestStepKill(Quest, 17, "I need to kill 5 Sabertooth angler in Blackburrow.", 5, 100, "I must find all the missing pages of this tome.", 611, 	170023	)
	AddQuestStepCompleteAction(Quest, 17, "Step17Complete")
end

function Step17Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 17, "I have killed 5 Sabertooth anglers.")

	AddQuestStep(Quest, 18, "I need to read the last page of the book.", 1, 100, "I must find all the missing pages of this tome.", 185)
	AddQuestStepCompleteAction(Quest, 18, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 18, "I've read the latest page.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the missing pages.")

	UpdateQuestDescription(Quest, "I've gathered many scattered pages of Isabella Cellus' book.  I wonder whether any of her descendants also wrote any histories?  I shall keep my eyes open.  Perhaps, someday, I'll find other tomes such as this throughout Norrath.")
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
