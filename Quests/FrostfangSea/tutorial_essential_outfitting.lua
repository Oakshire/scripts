--[[
	Script Name		:	Quests/FrostfangSea/tutorial_essential_outfitting.lua
	Script Author	:	theFoof
	Script Date		:	2013.10.20
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Glin Hammerhelm
	Preceded by		:	Tutorial: Alchemical Experiments
	Followed by		:   None
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepCraft(Quest, 1, "I need to create a chainmail coat using the forge.", 1, 100, "I must follow the tutor's instructions to review the crafting process.", 2407, 185658)
	AddQuestStepCraft(Quest, 2, "I must create a rawhide backpack using the sewing table.", 1, 100, "I must follow the tutor's instructions to review the crafting process.", 402, 20827)
	AddQuestStepCompleteAction(Quest, 1, "MadeCoat")
	AddQuestStepCompleteAction(Quest, 2, "MadePack")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function MadeCoat(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have created a chainmail coat.")
	ProgressCheck(Quest, QuestGiver, Player)
end

function MadePack(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I created a rawhide backpack.")
	ProgressCheck(Quest, QuestGiver, Player)
end

function ProgressCheck(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 97, 1) and QuestStepIsComplete(Player, 97, 2) then
		AddStep3(Quest, QuestGiver, Player)
	end
end

function AddStep3(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reviewed the process of crafting an item.")
	AddQuestStepChat(Quest, 3, "I should return to the tutor with the equipment I created.", 1, "I should return to the tutor with my work.", 0, GetSpawnID(QuestGiver))
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 97, 1) then
		MadeCoat(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 97, 2) then
		MadePack(Quest, QuestGiver, Player)
	end
       
end