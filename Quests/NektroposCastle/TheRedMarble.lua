--[[
	Script Name		:	Quests/NektroposCastle/TheRedMarble.lua
	Script Purpose	:	The Red Marble
	Script Author	:	smash
	Script Date		:	1/26/2016
	Script Notes	:	

	Zone			:	Nektropos Castle
	Quest Giver		:	None
	Preceded by		:	The Boar's Head
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Find a new place to fit this red marble.", 1, 100, "Place the red eye in a hollow socket.", 1187)
	AddQuestStepCompleteAction(Quest, 1, "CompleteQuest")
end

function Accepted(Quest, QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Stop inspecting the lockerbox", "CloseConversation")
	StartDialogConversation(conversation, 1, QuestGiver, Player, "After rummaging around the tattered clothes and avoiding critters you find a red marble.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end

function CompleteQuest(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've placed the eye into the head of the boar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Placed the black eye in a hollow socket.")
	GiveQuestReward(Quest, Player)
end