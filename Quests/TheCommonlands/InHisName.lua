--[[
	Script Name		:	Quests/TheCommonlands/InHisName.lua
	Script Purpose	:	Handles the quest, "In His Name"
	Script Author	:	premierio015
	Script Date		:	22.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Watcher Momo, Watcher Daenso
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Gerun Pontian", 1, "I need to speak with Gerun Pontian.", 11, 330014)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, QuestGiver, Player, "Serve the Overlord well, citizen. May you have all the luck you require.")
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Gerun Pontian.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Gerun Pontian.")

	UpdateQuestDescription(Quest, "I have found Gerun Pontian. He is interested in providing work for me while I am in the Commonlands.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
