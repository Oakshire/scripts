--[[
	Script Name		:	Quests/FrostfangSea/tutorial_learning_to_cook.lua
	Script Purpose	:	Tutorial: Learning to Cook
	Script Author	:	theFoof
	Script Date		:	2013.10.19
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Glin Hammerhelm
	Preceded by		:	Tutorial: Countering Problems
	Followed by		:	Tutorial: The Art of Weapons
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepCraft(Quest, 1, "I need to create some jum jum cider using the recipe the tutor gave me.", 1, 100, "I must follow the tutor's instructions to review the crafting process.", 310, 36399)
	AddQuestStepCompleteAction(Quest, 1, "MadeCider")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function MadeCider(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reviewed the process of crafting an item.")
	SetCompleteFlag(Quest)
	AddQuestStepChat(Quest, 2, "I should return to the tutor with the jum jum cider.", 1, "I should return to the tutor with my work.", 0, GetSpawnID(QuestGiver))
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		MadeCider(Quest, QuestGiver, Player)
	end
end