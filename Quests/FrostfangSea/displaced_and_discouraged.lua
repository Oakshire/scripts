--[[
	Script Name		:	Quests/FrostfangSea/displaced_and_discouraged.lua
	Script Purpose	:	for the quest "Displaced and Discouraged"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Belka Thunderheart
	Preceded by		:	None
	Followed by		:	Reclaiming Their Honor
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,80), math.random(13,25), 0, 0)
	AddQuestStepKill(Quest, 1, "I must kill several Ry'Gorr raiders.", 8, 100, "I must kill several Ry'Gorr raiders. The raiders can be found on the jetties of ice below Pride Overlook and Herga's Choke, or on Ry'Gorr Isle.", 611, 4701108, 4700868)
	AddQuestStepCompleteAction(Quest, 1, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "Brell be with you, as well.")
	AddConversationOption(conversation, "I will return.")
	StartConversation(conversation, QuestGiver, Player, "We could surely use your help with these orcs.  Brell be with ye.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed several Ry'Gorr raiders.")
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