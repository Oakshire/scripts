--[[
	Script Name		:	deliver_help_to_janus_fieri.lua
	Script Purpose	:	Handles the quest, "Deliver Help to Janus Fieri"
	Script Author	:	torsten
	Script Date		:	16.07.2022
	Script Notes	:	

	Zone			:	Beggar's Court
	Quest Giver		:	Marcus Cantarius
	Preceded by		:	Marcus Cantarius's Monumental Hatred
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Deliver note to Janus Fieri.", 1, "I need to deliver this note to Janus Fieri at the Crossroads in the Commonlands.", 75, 330171)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Located Janus Fieri.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Janus Fieri and delivered Marcus' note.")
	
	AddQuestStep(Quest, 2, "Investigate the nomad's camp and find the journal.", 1, "Investigate the nomad's camp in the Commonlands and find the journal.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found the journal.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I found the journal in a stack of books.")

	AddQuestStepChat(Quest, 3, "I should return to Janus.", 1, "I should return to Janus in the Crossroads to deliver the journal.", 75, 330171)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I returned to Janus.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I returned to Janus in the Crossroads and delivered the journal.")

	AddQuestStepKill(Quest, 4, "I need to kill ten Bloodskull lumberjacks.", 10, 100, "I need to kill ten Bloodskull lumberjacks in theCommonlands.", 611, 330125, 331138)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I killed the Bloodskull lumberjacks.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I killed the Bloodskull lumberjacks in the Commonlands.")

	AddQuestStepChat(Quest, 5, "I should return to Janus.", 1, "I should return to Janus in the Crossroads.", 75, 330171)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I've delivered Marcus' note to Janus and helped Janus with his murder investigation.  Turns out he was investigating his own brother's death.  It was a pleasure to help him take vengeance.")
	GiveQuestReward(Quest, Player)
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

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

