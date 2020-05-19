--[[
	Script Name		:	Quests/FrostfangSea/tackling_the_basilisks.lua
	Script Purpose	:	for the quest "Tackling the Basilisks"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Belka Thunderheart
	Preceded by		:	No Substitute for Shard Work
	Followed by		:	Domestication is the New Survivalism
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(5,90), math.random(13,25), 0, 0)
    AddQuestStepKill(Quest, 1, "I must kill several frostbiter basilisks.", 8, 100, "The basilisks can be found to the east of the Great Shelf, along the shoreline past the battlefield.", 611, 4700103)
    AddQuestStepCompleteAction(Quest, 1, "KilledBasilisks")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "I appreciate the vote of confidence.")
	AddConversationOption(conversation, "Of course they won't give me much trouble.")
	StartConversation(conversation, QuestGiver, Player, "I don't imagine they'll give you much trouble, " .. GetName(Player) .. ".  If I could say that about the rest of the outsiders that have washed up on Erollis, we'd be much better off. ")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledBasilisks(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have killed several frostbiter basilisks")
    AddQuestStepChat(Quest, 2, "I must speak with Belka Thunderheart.", 1, "I must speak with Belka Thunderheart, who can be found in the cave at the Great Shelf.", 0, 4700079)
    AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
        KilledBasilisks(Quest, QuestGiver, Player)
    end
end