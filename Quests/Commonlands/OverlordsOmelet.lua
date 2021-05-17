--[[
	Script Name		:	overlords_omelet.lua
	Script Purpose	:	Handles the quest, "Overlord's Omelet"
	Script Author	:   premierio015
	Script Date		:	16.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Mooshga
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to find green speckled vulrich eggs", 3, 50, "Mooshga wants me to collect three green speckled vulrich eggs.", 330031, 330032)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'm on my way.")
	StartConversation(conversation, QuestGiver, Player, "Eggs on vulriches. They always have good vulrich eggs. Find best vulriches in northwest.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected three green speckled vulrich eggs.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected three green speckled vulrich eggs.")

	AddQuestStepChat(Quest, 2, "I should bring Mooshga her eggs", 1, "I have Mooshga's eggs.", 11, 331133)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have returned the eggs to Mooshga.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned the green speckled vulrich eggs to Mooshga.")

	UpdateQuestDescription(Quest, "I collected three green speckled vulrich eggs and returned to Mooshga.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

