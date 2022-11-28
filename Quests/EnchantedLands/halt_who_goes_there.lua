--[[
	Script Name		:	halt_who_goes_there.lua
	Script Purpose	:	Handles the quest, "Halt, Who Goes There?"
	Script Author	:	Neveruary
	Script Date		:	11/27/2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Enchanted Lands
	Quest Giver		:	Deputy Kegie
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay the Mistcaller mischiefmakers near the Fae Island!", 15, 100, "Assist Deputy Kegie in removing the threat to the Deputies near the end of the Lazy Drain.", 611, 390048)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've slain several mischiefmakers.")

	AddQuestStepChat(Quest, 2, "Report back to Deputy Kegie.", 1, "Assist Deputy Kegie in removing the threat to the Deputies near the end of the Lazy Drain.", 11, 390183)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've reported to Deputy Kegie.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've assisted Deputy Kegie, but he is still frightened by something.")

	UpdateQuestDescription(Quest, "There must be more to the situation than meets the eye.  Deputy Kegie is frightened out of his wits but I'm not sure the Mistcaller mischiefmakers are the cause.  Maybe the Deputy just needs to get out more. Maybe he needs a date more than he needs a rescue.")
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
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
