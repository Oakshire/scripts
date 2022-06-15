--[[
    Script Name    : Quests/QeynosHarbor/of_spars_and_sails_and_.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.14 06:06:21
    Script Purpose : 

        Zone       : QeynosHarbor
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Find a ship's spar.", 1, 100, "I need to recover the stolen items.", 875)
	AddQuestStep(Quest, 2, "Find a ship's sail.", 1, 100, "I need to recover the stolen items.", 780)
	AddQuestStep(Quest, 3, "Find a ship's map.", 1, 100, "I need to recover the stolen items.", 2184)
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
	UpdateQuestStepDescription(Quest, 1, "I found a spar.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've found a sail.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found a map.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
 if QuestStepIsComplete(Player, 5387, 1) and QuestStepIsComplete(Player, 5387, 2)  and QuestStepIsComplete(Player, 5387, 3)  then
	UpdateQuestTaskGroupDescription(Quest, 1, "I've recovered several stolen items.")
	AddQuestStepChat(Quest, 4, "I need to speak with Dajor Botswein in Qeynos Harbor.", 1, "There are still some loose ends to tie up in this mystery.", 11,2210115)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've spoken with Dajor.")

	AddQuestStepKill(Quest, 5, "Dajor believes the pirates have the ship's lamp somewhere in the Thundering Steppes.", 1, 25, "There are still some loose ends to tie up in this mystery.", 565,2490273,2490089)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've found the missing lamp.")
	UpdateQuestTaskGroupDescription(Quest, 2, "Some pirates hid the lamp, but I found it and got rid of them as well.")

	AddQuestStepChat(Quest, 6, "I need to speak with Dajor Botswein in Qeynos Harbor.", 1, "Now to return to Dajor Botswein in Qeynos Harbor and claim my reward!", 11, 2210115)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Dajor.")

	AddQuestStepChat(Quest, 7, "I need to collect my reward from a barmaid named Drinna near the tavern in Qeynos Harbor.", 1, "Now to return to Dajor Botswein in Qeynos Harbor and claim my reward!", 11, 2210025)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 7, "I've collected my reward.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've collected the reward.")

	UpdateQuestDescription(Quest, "I located a few of the items but I don't seem any closer to finding out who the pirates are and why they are stealing such peculiar items.  I need to talk to someone else in Qeynos Harbor and see if I can learn more about these mysterious happenings, starting with that barmaid that gave me my reward.")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end
