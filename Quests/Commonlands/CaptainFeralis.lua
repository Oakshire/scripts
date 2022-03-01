--[[
	Script Name		:	captain_feralis.lua
	Script Purpose	:	Handles the quest, "Captain Feralis"
	Script Author	:	QuestParser (Replace this)
	Script Date		:	13.03.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Captain Feralis at the Crossroads", 1, "I need to deliver these root samples to Captain Feralis at the Crossroads.", 11, 330184)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
    SummonItem(Player, 4403, 1)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.")
	AddConversationOption(conversation, "[nod]")
	AddConversationOption(conversation, "I know it was")
	StartConversation(conversation, QuestGiver, Player, "Good, good. He may have work for you once you get there. Once again, great work out there!")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Captain Feralis.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have spoken with Captain Feralis.")

	UpdateQuestDescription(Quest, "I have given the treated root samples to Captain Feralis.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
