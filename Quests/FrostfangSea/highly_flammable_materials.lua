--[[
	Script Name		:	Quests/FrostfangSea/highly_flammable_materials.lua
	Script Purpose	:	the quest Highly Flammable Materials
	Script Author	:	theFoof
	Script Date		:	2013.6.20
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:   Odon Scourgeson
	Preceded by		:	Whirling Ice Time
	Followed by		:	Campside Spores
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStep(Quest, 1, "Find an item to torch the Ry'Gorr encampments with on Jagged Daggers.", 1, 100, "Find a way to burn down any Ry'Gorr encampments you find on Jagged Daggers.", 2230)
	AddQuestStepCompleteAction(Quest, 1, "GotTorch")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_016.mp3", "", "", 1474162446, 1230111187, Player)
	AddConversationOption(conversation, "Gladly!")
	StartConversation(conversation, QuestGiver, Player, "And if you find any Ry'Gorr encampments, destroy them by any means necessary!")
end

function Deleted(Quest, QuestGiver, Player)
	if HasItem(Player, 47882) then
		RemoveItem(Player, 47882)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function GotTorch(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "You found a Ry'Gorr firepit torch!")
	AddQuestStep(Quest, 2, "Burn down any Ry'Gorr encampments on Jagged Daggers.", 6, 100, "Find a way to burn down any Ry'Gorr encampments you find on Jagged Daggers.", 2572)
	AddQuestStepCompleteAction(Quest, 2, "BurnedTents")
end

function BurnedTents(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You burned down the Ry'Gorr encampments you found on Jagged Daggers!")
	AddQuestStepChat(Quest, 3, "Return to Odon Scourgeson at Cragged Spine.", 1, "You should return to Odon Scourgeson, at Cragged Spine, now that you burned down the Ry'Gorr encampments you found on Jagged Daggers.", 0, 4700108)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	if HasItem(Player, 47882) then
		RemoveItem(Player, 47882)
	end
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		GotTorch(Quest, QuestGiver, Player)
	elseif Step == 2 then
		BurnedTents(Quest, QuestGiver, Player)
	end
end