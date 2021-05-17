--[[
	Script Name		:	Quests/Commonlands/PachydermPunch.lua
	Script Purpose	:	Handles the quest, "Pachyderm Punch"
	Script Author	:	premierio015
	Script Date		:	16.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Mooshga
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to collect pristine plains elephant tusks", 5, 50, "Mooshga wants me to collect plains elephant tusks for her punch.", 97, 330767, 330274)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be careful.")
	StartConversation(conversation, QuestGiver, Player, "Bring pristine pachyderm tusks back to Mooshga! Be careful with pachyderms... they very mean when taking tusks. Remember, only found on plains elephants.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found five tusks for Mooshga.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected five pristine elephant tusks for Mooshga.")
	AddQuestStepChat(Quest, 2, "I should return to Mooshga", 1, "I found five plains elephant tusks for Mooshga.", 11, 331133)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Mooshga the tusks.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Mooshga.")

	UpdateQuestDescription(Quest, "I collected five pristine elephant tusks for Mooshga.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

