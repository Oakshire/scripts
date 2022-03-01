--[[
	Script Name		:	Quests/Commonlands/Rhinorific.lua
	Script Purpose	:	Handles the quest, "Rhino-rific"
	Script Author	:	premierio015
	Script Date		:	16.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Mooshga
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to kill rhinos for Mooshga", 10, 100, "I need to get a bunch of three-toed rhino feet for Mooshga.", 108, 330760, 330273, 330140)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Ok, Mooshga. I'll be right back.")
	StartConversation(conversation, QuestGiver, Player, "Yes. Rhino muffins very crunchy. Go collect for Mooshga.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have collected ten three-toed rhino hooves.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have collected ten three-toed rhino hooves.")

	AddQuestStepChat(Quest, 2, "I should return to Mooshga", 1, "I have the ten hooves for Mooshga.", 11, 331133)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave Mooshga the hooves.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have returned to Mooshga.")

	UpdateQuestDescription(Quest, "I collected ten three-toed rhino feet and returned to Mooshga.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
