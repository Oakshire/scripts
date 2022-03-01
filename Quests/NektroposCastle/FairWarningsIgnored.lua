--[[
	Script Name		:	Quests/NektroposCastle/FairWarningsIgnored.lua
	Script Purpose	:	Fair Warnings Ignored
	Script Author	:	smash
	Script Date		:	6/6/2018
	Script Notes	:	

	Zone			:	Nektropos Castle
	Quest Giver		:	None
	Preceded by		:	None
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay The Juggernaught in Nektropos Castle.", 1, 100, "The Juggernaught stands between me and my progress through Nektropos Castle. I must destroy it!", 611, 1780293)
	AddQuestStepCompleteAction(Quest, 1, "CompleteQuest")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end

function CompleteQuest(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain The Juggernaught.")
	UpdateQuestTaskGroupDescription(Quest, 1, "The Juggernaught, while tough, was not tough enough to keep me from progressing.")
	GiveQuestReward(Quest, Player)
end