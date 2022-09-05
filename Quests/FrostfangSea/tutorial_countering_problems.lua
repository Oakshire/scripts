--[[
	Script Name		:	Quests/FrostfangSea/tutorial_countering_problems.lua
	Script Purpose	:	Tutorial: Countering Problems
	Script Author	:	theFoof
	Script Date		:	2013.10.9
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Glin Hammerhelm
	Preceded by		:	Tutorial: Forging Ahead
	Followed by		:	Tutorial: Learning to Cook
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepCraft(Quest, 1, "I need to create a lead bracelet using the recipe the tutor gave me.", 1, 100, "I must follow the tutor's instructions to review the crafting process.", 952, 151332)
	AddQuestStepCompleteAction(Quest, 1, "CraftedBracelet")
end

function Accepted(Quest, QuestGiver, Player)
	GiveQuestItem(Quest,Player,".",4142,31373)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll do my best!")
	StartConversation(conversation, QuestGiver, Player, "No, that was a particularly easy recipe.  In most other cases though, you have the chance of these warnings appearing.  They're random, but will always occur at the beginning of a new crafting round.  You have until the end of that 4 second round to counter the event.  I'd like you to go to the jeweler's workbench now and create a lead bracelet.  You'll find the recipe in this book.  Take care this time to watch out for warnings and counter them correctly.  And don't forget you can also use your arts to help out even when there's no warning showing.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function CraftedBracelet(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reviewed the process of crafting an item.")
	AddQuestStepChat(Quest, 2, "I should return to the tutor with my bracelet.", 1, "I should return to the tutor with my bracelet.", 0, GetSpawnID(QuestGiver))
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		CraftedBracelet(Quest, QuestGiver, Player)
	end
end