--[[
	Script Name		:	Quests/FrostfangSea/tutorial_the_art_of_weapons.lua
	Script Purpose	:	Tutorial: The Art of Weapons
	Script Author	:	theFoof
	Script Date		:	2013.10.19
	Script Notes	:Edited 8/19/17 correct quest number in progress check and reload, 	

	Zone			:	Frostfang Sea
	Quest Giver		:	Glin Hammerhelm
	Preceded by		:	Tutorial: Learning to Cook
	Followed by		:	Tutorial: Scribing Scrolls
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 2)
	AddQuestStepCraft(Quest, 1, "I need to create an elm greatstaff using the woodworking table.", 1, 100, "I must follow the tutor's instructions to review the crafting process.", 622, 76153)
	AddQuestStepCraft(Quest, 2, "I must create a tin hand axe using the forge.", 1, 100, "I must follow the tutor's instructions to review the crafting process.", 2154, 89113)
	AddQuestStepCompleteAction(Quest, 1, "MadeStaff")
	AddQuestStepCompleteAction(Quest, 2, "MadeAxe")
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function MadeStaff(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have created an elm greatstaff.")
	ProgressCheck(Quest, QuestGiver, Player)
end

function MadeAxe(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I created a tin hand axe.")
	ProgressCheck(Quest, QuestGiver, Player)
end

function ProgressCheck(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 94, 1) and QuestStepIsComplete(Player, 94, 2) then
            UpdateQuestTaskGroupDescription(Quest, 1, "I have reviewed the process of crafting an item.")
            AddStep3(Quest, QuestGiver, Player)
	end
end

function AddStep3(Quest, QuestGiver, Player)
	SetCompleteFlag(Quest)
	AddQuestStepChat(Quest, 3, "I should return to the tutor with the weapons.", 1, "I should return to the tutor with my work.", 0, GetSpawnID(QuestGiver))
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 94, 1) then
		MadeStaff(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 94, 2) then
		MadeAxe(Quest, QuestGiver, Player)
	end
end	