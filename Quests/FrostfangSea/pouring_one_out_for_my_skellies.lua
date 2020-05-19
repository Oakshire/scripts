--[[
	Script Name		:	Quests/FrostfangSea/pouring_one_out_for_my_skellies.lua
	Script Purpose	:	for the quest "Pouring One Out for My Skellies"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Belka Thunderheart
	Preceded by		:	'Tis Most Unnatural
	Followed by		:	No Substitute for Shard Work
--]]

function Init(Quest)
    AddQuestStep(Quest, 1, "I must pour Fronden's Finest on several Ry'Gorr bone piles.", 5, 100, "I must pour Fronden's Finest on several Ry'Gorr bone piles. The bone piles litter the battlefield of the Great Shelf.", 2209)
    AddQuestStepCompleteAction(Quest, 1, "PouredAle")
    AddQuestRewardCoin(Quest, math.random(5,80), math.random(6,15), 0, 0)
end

function Accepted(Quest, QuestGiver, Player)
    if not HasItem(Player, 46438) then
        SummonItem(Player, 46438, 1)
    end
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "We'll find out.  Wish me luck.")
	AddConversationOption(conversation, "I wasn't expecting it to be easy.")
	StartConversation(conversation, QuestGiver, Player, "I can't imagine a skeleton will hold still long enough to let ye splash them, so ye'll want to pour this on the bone piles of the recently re-deceased.")
end

function Deleted(Quest, QuestGiver, Player)
    RemoveItem(Player, 46438)
end

function Declined(Quest, QuestGiver, Player)
end

function PouredAle(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have successfully destroyed the Ry'Gorr bone piles.")
    AddQuestStepChat(Quest, 2, "I must speak with Belka Thunderheart.", 1 ,"I must speak with Belka Thunderheart, who can be found in the cave at the Great Shelf.", 0, 4700079)
    AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
    RemoveItem(Player, 46438)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
        PouredAle(Quest, QuestGiver, Player)
    end
end