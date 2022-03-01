--[[
	Script Name		:	Quests/FrostfangSea/trusted_referral.lua
	Script Purpose	:	the quest Trusted Referral
	Script Author	:	theFoof
	Script Date		:	2013.8.25
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Brogan MacLellan
	Preceded by		:	Trust Issues
	Followed by		:	None
--]]

-- *** THIS SCRIPT IS NOT COMPLETE, BUTCHERBLOCK MUST BE SPAWNED FIRST ***

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(1,99), math.random(19,30), 0, 0)
	AddQuestStepChat(Quest, 1, "You should speak to Belinda MacLellan at the Butcherblock Bay docks.", 1, "You should speak to Belinda MacLellan at the Butcherblock Bay docks.", 0, "BELINDAMACLELLAN")
	AddQuestStepCompleteAction(Quest, 1, "CompleteQuest")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I'll get this to her, right away!")
	StartConversation(conversation, QuestGiver, Player, "She's as reluctant to trust others, too, but I'll write you my recommendation. And if she doesn't have any work, I bet she'll know who there does.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end