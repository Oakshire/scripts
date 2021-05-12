--[[
	Script Name		:	Quests/Commonlands/TeceraValnos.lua
	Script Purpose	:	Handles the quest, "Tecera Valnos"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	12.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	Captain Feralis
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Tecera Valnos", 1, "I must speak with Tecera Valnos.", 11, 330199)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, QuestGiver, Player, "It might be quickest to take the griffin down from the Freeport Station.")
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Tecera Valnos.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Tecera Valnos.")

	UpdateQuestDescription(Quest, "I have met up with Tecera Valnos.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


