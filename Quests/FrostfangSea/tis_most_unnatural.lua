--[[
	Script Name		:	Quests/FrostfangSea/tis_most_unnatural.lua
	Script Purpose	:	for the quest "'Tis Most Unnatural"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Belka Thunderheart
	Preceded by		:	Reclaiming Their Honor
	Followed by		:	Pouring One Out for My Skellies
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,80), math.random(6,15), 0, 0)
	AddQuestStepKill(Quest, 1, "I must kill several risen Ry'Gorr skeletons.", 8, 100, "I must kill several risen Ry'Gorr skeletons. These skeletons can be found on the battlefield of the Great Shelf.", 611, 4700087, 4700872)
	AddQuestStepCompleteAction(Quest, 1, "KilledOrcs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "I will return.")
	AddConversationOption(conversation, "Brell be with you, as well.")
	StartConversation(conversation, QuestGiver, Player, "Brell be with ye.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledOrcs(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed several risen Ry'Gorr skeletons.")
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