--[[
	Script Name		:	there_mite_be_trouble.lua
	Script Purpose	:	Handles the quest, "There Mite be Trouble"
	Script Author	:	geordie0511
	Script Date		:	12.03.2019
	Script Notes	:	Edited by geordie0511

	Zone			:	Antonica
	Quest Giver		:	Farmer Walcott
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay some klicnik mites.", 10, 100, "I need to slay 10 klicnik mites in the crops outside of the North Gates of Qeynos.", 611, 120067, 121225)
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
	UpdateQuestStepDescription(Quest, 1, "Slew some klicnik mites.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I slew 10 of the klicnik mites in Antonica.")

	AddQuestStepChat(Quest, 2, "Speak to Farmer Walcott.", 1, "I need to return to Farmer Walcott in Antonica.", 11, 120078)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "Spoke to Farmer Walcott.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Farmer Walcott.")

	UpdateQuestDescription(Quest, "I have slain a number of the pesky klicnik mites that plagued the crops of Farmer Walcott outside of the North Gates of Qeynos.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

