--[[
	Script Name		:	Quests/FrostfangSea/no_substitute_for_shard_work.lua
	Script Purpose	:	for the quest "No Substitute for Shard Work"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Belka Thunderheart
	Preceded by		:	Pouring One Out for My Skellies
	Followed by		:	Tackling the Basilisks
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(5,90), math.random(13,25), 0, 0)
    AddQuestStep(Quest, 1, "I must collect several velium shards.", 5, 100, "I must collect several velium shards. The velium shards litter the battlefield of the Great Shelf.", 1085)
    AddQuestStepCompleteAction(Quest, 1, "GotShards")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "Brell's blessing to you, as well.")
	AddConversationOption(conversation, "Farewell.")
	StartConversation(conversation, QuestGiver, Player, "There'll be reward and gratitude waiting fer ye when ye return.  Brell's blessing.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotShards(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have collected the velium shards.")
    AddQuestStepChat(Quest, 2, "I must speak with Belka Thunderheart.", 1, "I must speak with Belka Thunderheart, who can be found in the cave at the Great Shelf.", 0, 4700079)
    AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
        GotShards(Quest, QuestGiver, Player)
    end
end