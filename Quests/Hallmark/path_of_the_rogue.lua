--[[
    Script Name    : Quests/Hallmark/path_of_the_rogue.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.29 02:11:26
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: Councilor Vemerik 
        Preceded by: Scout Training pt. II
        Followed by: None
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to steal the orders from the safehouse in Qeynos Harbor.", 1, 100, "I need to steal the plans from a lieutenant in the Qeynos harbor.", 75)
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
	UpdateQuestStepDescription(Quest, 1, "I've stolen the orders.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've stolen the plans out from under the watchful patrol.")

	AddQuestStepChat(Quest, 2, "I need to return the document to Vemerik.", 1, "I need to return the documents I've stolen to Counselor Vemerik in North Qeynos.", 75, 2220485)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Vemerik.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned and spoken with Counselor Vemerik.")

	UpdateQuestDescription(Quest, "I managed to grab the lieutenant's orders out from under the watchful eye of the Qeynos guard.  I'm sure they'll be put through some rigorous training after this to help them keep a sharper eye out in the future, but that's not my concern now!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end