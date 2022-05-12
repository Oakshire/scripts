--[[
    Script Name    : Quests/NorthQeynos/vermins_plague.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 08:05:04
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Elsabethia Hartsunde
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must collect an infected grave scorpius", 1, 100, "I must collect samples of the infected.", 1859, 2000024)
	AddQuestStepKill(Quest, 2, "I must collect an infected burrower", 1, 100, "I must collect samples of the infected.", 99, 2000026)
	AddQuestStepKill(Quest, 3, "I must collect an infected tomb vermin", 1, 100, "I must collect samples of the infected.", 124, 2000029)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
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
	UpdateQuestStepDescription(Quest, 1, "I have collected an infected grave scorpius.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected an infected burrower.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected an infected tomb vermin.")
CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5545, 1) and QuestStepIsComplete(Player, 5545, 2)  and QuestStepIsComplete(Player, 5545, 3)  then
	AddQuestStepChat(Quest, 4, "I must return to Elsabethia", 1, "I must return to Elsabethia Hartsunder.", 11, 2220141)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I have returned to Elsabethia.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Elsabethia.")

	UpdateQuestDescription(Quest, "I volunteered to assist Elsabethia Hartsunder in the Temple of Life with her research.  I was able to gather the infected specimens and return them to her.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

