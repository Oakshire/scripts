--[[
	Script Name		:	Quests/FrostfangSea/tutorial_alchemical_experiments.lua
	Script Author	:	theFoof
	Script Date		:	2013.10.20
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Glin Hammerhelm
	Preceded by		:	Tutorial: Scribing Scrolls
	Followed by		:	Tutorial: Essential Outfitting
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepCraft(Quest, 1, "I need to create an Essence of Intercept (Journeyman) using the chemistry table.", 1, 100, "I must follow the tutor's instructions to review the crafting process.", 2219, 112413)
	AddQuestStepCompleteAction(Quest, 1, "MadeIntercept")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function MadeIntercept(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have created an Essence of Intercept (Journeyman).")
	AddQuestStepChat(Quest, 2, "I should return to the tutor with the Essence of Intercept.", 1, "I should return to the tutor with the Essence of Intercept.", 0, GetSpawnID(QuestGiver))
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		MadeIntercept(Quest, QuestGiver, Player)
	end
end