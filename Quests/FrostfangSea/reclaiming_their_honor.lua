--[[
	Script Name		:	Quests/FrostfangSea/reclaiming_their_honor.lua
	Script Purpose	:	for the quest "Reclaiming Their Honor"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Belka Thunderheart
	Preceded by		:	Displaced and Discouraged
	Followed by		:	'Tis Most Unnatural
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,80), math.random(6,15), 0, 0)
	AddQuestStepKill(Quest, 1, "I must reclaim several coldain signet rings from the Ry'Gorr raiders.", 8, 80, "I must reclaim several coldain signet rings from the Ry'Gorr raiders. The raiders can be found on the jetties of ice below Pride Overlook and Herga's Choke, or on Ry'Gorr Isle.", 592, 4701108, 4700868)
	AddQuestStepCompleteAction(Quest, 1, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "I look forward to punishing the orcs.")
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "I look forward to your return. ")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have reclaimed several coldain signet rings.")
	AddQuestStepChat(Quest, 2, "I must speak with Belka Thunderheart.", 1, "I must speak with Belka Thunderheart, who can be found in the cave at the Great Shelf.", 0, 4700079)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		KilledOrcs(Quest, QuestGiver, Player)
	end
end