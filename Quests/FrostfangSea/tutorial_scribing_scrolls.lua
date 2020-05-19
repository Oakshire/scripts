--[[
	Script Name		:	Quests/FrostfangSea/tutorial_scribing_scrolls.lua
	Script Purpose	:	Tutorial: Scribing Scrolls
	Script Author	:	theFoof
	Script Date		:	2013.10.20
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Glin Hammerhelm
	Preceded by		:	Tutorial: The Art of Weapons
	Followed by		:	Tutorial: Alchemical Experiments
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepCraft(Quest, 1, "I need to create a spell scroll of Shackle (Journeyman) using the engraved desk.", 1, 100, "I must follow the tutor's instructions to review the crafting process.", 715, 119296)
	AddQuestStepCompleteAction(Quest, 1, "MadeScroll")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function MadeScroll(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	UpdateQuestTaskGroupDescription(Quest, 1, "	I have created a spell scroll of Shackle (Journeyman).")
	AddQuestStepChat(Quest, 2, "I should return to the tutor with the scroll of Shackle.", 1, 100, "I should return to the tutor with my work.", 0, GetSpawnID(QuestGiver))
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		MadeScroll(Quest, QuestGiver, Player)
	end
end