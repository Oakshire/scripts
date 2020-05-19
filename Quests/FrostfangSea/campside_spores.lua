--[[
	Script Name		:	Quests/FrostfangSea/campside_spores.lua
	Script Purpose	:	the quest Campside Spores
	Script Author	:	theFoof
	Script Date		:	2013.6.24
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:   Odon Scourgeson
	Preceded by		:	Highly Flammable Materials
	Followed by		:	Ry'Gorr Tool Taking
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(12,25), 0, 0)
	AddQuestStep(Quest, 1, "Apply the crustose spores to any Ry'Gorr provisions on Jagged Daggers.", 4, 100, "Odon wants to apply the crustose spores to any Ry'Gorr provisions you find within their encampment on Jagged Daggers.", 569)
	AddQuestStepCompleteAction(Quest, 1, "UsedSpores")
end

function Accepted(Quest, QuestGiver, Player)
	SummonItem(Player, 45807) 
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "odon_scourgeson/halas/cragged_spine/odon_scourgeson_028.mp3", "", "", 2284024418, 845774504, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "Oh, but you are not the one that will be doing it.  We're going to leave that up to the crustose.  Take this pouch of crustose spores and spread them on any Ry'Gorr provisions that you find on Jagged Daggers Isle.  Return to me when you have accomplished this task.")
end

function Deleted(Quest, QuestGiver, Player)
	if HasItem(Player, 45807) then
		RemoveItem(Player, 45807)
	end
end

function Declined(Quest, QuestGiver, Player)
end

function UsedSpores(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "You spread crustose spores on many provision stashes the Ry'Gorr had and survived the ensuing attacks by angered orcs.")
	AddQuestStepChat(Quest, 2, "Return to Odon Scourgeson now that you have spread crustose spores on the Ry'Gorr provisions and survived the ensuing attacks by angered orcs.", 1, "You should return to Odon Scourgeson, at Cragged Spine, now that you have spread crustose spores on the Ry'Gorr provisions and survived the ensuing attacks by angered orcs.", 0, 4700108)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	if HasItem(Player, 45807) then
		RemoveItem(Player, 45807)
	end
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		UsedSpores(Quest, QuestGiver, Player)
	end
end