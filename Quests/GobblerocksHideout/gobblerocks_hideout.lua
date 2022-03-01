--[[
    Script Name    : Quests/GobblerocksHideout/gobblerocks_hideout.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.16 03:07:11
    Script Purpose : 

        Zone       : GobblerocksHideout
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill 5 Gobblerock grunts.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490001, 3490052)
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
	UpdateQuestStepDescription(Quest, 1, "I have killed 5 Gobblerock grunts.")

	AddQuestStepKill(Quest, 2, "I need to kill 5 Gobblerock swindlers.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490000, 3490051)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed 5 Gobblerock swindlers.")

	AddQuestStepKill(Quest, 3, "I need to kill 5 Gobblerock shaman.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490002, 3490053)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have killed 5 Gobblerock shaman.")

	AddQuestStep(Quest, 4, "I should read the book.", 1, 100, "I believe I will find more pages of this book in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have read the book.")

	AddQuestStepKill(Quest, 5, "I need to kill 5 Gobblerock butchers.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490003, 3490054)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed 5 Gobblerock butchers.")

	AddQuestStepKill(Quest, 6, "I need to kill 5 Gobblerock tricksters.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490005, 3490056)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I have killed 5 Gobblerock tricksters.")

	AddQuestStepKill(Quest, 7, "I need to kill 5 Gobblerock haruspex.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490004, 3490055)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I have killed 5 Gobblerock haruspex.")

	AddQuestStep(Quest, 8, "I should read the book.", 1, 100, "I believe I will find more pages of this book in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I have read the book.")

	AddQuestStepKill(Quest, 9, "I need to kill 5 Gobblerock brutes.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490011, 3490062)
	AddQuestStepCompleteAction(Quest, 9, "Step9Complete")
end

function Step9Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 9, "I have killed 5 Gobblerock brutes.")

	AddQuestStepKill(Quest, 10, "I need to kill 5 Gobblerock hooligans.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490010, 3490061)
	AddQuestStepCompleteAction(Quest, 10, "Step10Complete")
end

function Step10Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 10, "I have killed 5 Gobblerock hooligans.")

	AddQuestStepKill(Quest, 11, "I need to kill 5 Gobblerock prophets.", 5, 100, "I believe I will find more pages of this book in the Feerrott.", 11, 3490009, 3490060)
	AddQuestStepCompleteAction(Quest, 11, "Step11Complete")
end

function Step11Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 11, "I have killed 5 Gobblerock prophets.")

	AddQuestStep(Quest, 12, "I should read the book.", 1, 100, "I believe I will find more pages of this book in the Feerrott.", 2180)
	AddQuestStepCompleteAction(Quest, 12, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 12, "I have read the book.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found the book's missing pages.")
    if HasItem(Player, 1841) then -- a goblin's notebook - The Hideout(normal)
    RemoveItem(Player, 1841)
    end
	UpdateQuestDescription(Quest, "I have read the whole book.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
