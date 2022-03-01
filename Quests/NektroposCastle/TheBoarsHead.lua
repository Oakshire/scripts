--[[
	Script Name		:	Quests/NektroposCastle/TheBoarsHead.lua
	Script Purpose	:	The Boar's Head
	Script Author	:	smash
	Script Date		:	1/26/2016
	Script Notes	:	

	Zone			:	Nektropos Castle
	Quest Giver		:	None
	Preceded by		:	None
	Followed by		:	The Red Marble
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Find a new place to put the black marble eye.", 1, 100, "Find a new place to place the black marble eye, maybe a hollow socket of another boar's head.", 1175)
	AddQuestStepCompleteAction(Quest, 1, "CompleteQuest")
end

function Accepted(Quest, QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Stop examining the head.", "CloseConversation")
	StartDialogConversation(conversation, 1, QuestGiver, Player, "You take the black marble-like eye.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end

function CompleteQuest(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, 	"I've placed the eye into the head of the boar.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Placed the black eye in a hollow socket.")
	GiveQuestReward(Quest, Player)
end