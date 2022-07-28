--[[
    Script Name    : Quests/Blackburrow/the_sabertooth_miners_guide_part_one.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.27 03:07:40
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill 5 scrawny Sabertooths.", 5, 100, "I'll find more of these pages in Blackburrow.", 611, 170004)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed 5 scrawny Sabertooths.")

	AddQuestStep(Quest, 2, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've read the next page of the book.")

	AddQuestStepKill(Quest, 3, "I need to kill 8 scrawny Sabertooths.", 8, 100, "I'll find more of these pages in Blackburrow.", 611, 170004)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed 8 scrawny Sabertooths.")

	AddQuestStep(Quest, 4, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've read the latest page of the book.")

	AddQuestStepKill(Quest, 5, "I need to kill 4 Sabertooth anglers.", 4, 100, "I'll find more of these pages in Blackburrow.", 611, 170023)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed 4 Sabertooth anglers.")

	AddQuestStep(Quest, 6, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've read the latest page of the book.")

	AddQuestStepKill(Quest, 7, "I need to kill 10 crag rats.", 10, 100, "I'll find more of these pages in Blackburrow.", 611, 170016)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have killed 10 crag rats.")

	AddQuestStep(Quest, 8, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I've read the latest page of the book.")

	AddQuestStepKill(Quest, 9, "I need to kill 6 scrawny Sabertooths.", 6, 100, "I'll find more of these pages in Blackburrow.", 611, 170004)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have killed 6 scrawny Sabertooths.")

	AddQuestStep(Quest, 10, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I've read the latest page of the book.")

	AddQuestStepKill(Quest, 11, "I need to kill 7 Sabertooth miners.", 7, 100, "I'll find more of these pages in Blackburrow.", 611, 170010)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I have killed 7 Sabertooth miners.")

	AddQuestStep(Quest, 12, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 12, "Step12Complete")
end

function Step12Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 12, "I've read the latest page of the book.")

	AddQuestStepKill(Quest, 13, "I need to kill 10 Sabertooth miners.", 10, 100, "I'll find more of these pages in Blackburrow.", 611, 170010)
	AddQuestStepCompleteAction(Quest, 13, "Step13Complete")
end

function Step13Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 13, "I have killed 10 Sabertooth miners.")

	AddQuestStep(Quest, 14, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 14, "Step14Complete")
end

function Step14Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 14, "I've read the latest page of the book.")

	AddQuestStepKill(Quest, 15, "I need to kill 5 Sabertooth excavators.", 5, 100, "I'll find more of these pages in Blackburrow.", 611, 170029)
	AddQuestStepCompleteAction(Quest, 15, "Step15Complete")
end

function Step15Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 15, "I have killed 5 Sabertooth excavators.")

	AddQuestStep(Quest, 16, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 16, "Step16Complete")
end

function Step16Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 16, "I've read the latest page of the book.")

	AddQuestStepKill(Quest, 17, "I need to kill 8 Sabertooth miners.", 8, 100, "I'll find more of these pages in Blackburrow.", 611, 170010)
	AddQuestStepCompleteAction(Quest, 17, "Step17Complete")
end

function Step17Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 17, "I have killed 8 Sabertooth miners.")

	AddQuestStep(Quest, 18, "I need to read the next page of the book.", 1, 100, "I'll find more of these pages in Blackburrow.", 185)
	AddQuestStepCompleteAction(Quest, 18, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 18, "I've read the last page of this book.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the missing pages.")
    if HasItem(Player, 4146) then
    RemoveItem(Player, 4146)
    end
	UpdateQuestDescription(Quest, "There is a Part Two that continues the history of the Blackburrow gnolls.  It might be interesting to see how they handled the influx of the &quot;furless.&quot;")
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
