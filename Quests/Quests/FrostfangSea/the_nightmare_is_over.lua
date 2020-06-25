--[[
	Script Name		:	Quests/FrostfangSea/the_nightmare_is_over.lua
	Script Purpose	:	the quest "The Nightmare is Over"
	Script Author	:	theFoof
	Script Date		:	2013.6.19
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Dolur Axebeard
	Preceded by		:	Severing the Head
	Followed by		:	None
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(9,22), 0, 0)
	AddQuestStepChat(Quest, 1, "I must report to Tad Ironstein at the Cragged Spine.", 1, "I must report to Tad Ironstein at the Cragged Spine outpost. The Cragged Spine is south of the Great Shelf, past the frostbiter basilisks.", 0, 4700106)
	AddQuestStepCompleteAction(Quest, 1, "CompleteQuest")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I look forward to meeting them.")
	AddConversationOption(conversation, "Perhaps they will be a bit more organized.")
	StartConversation(conversation, QuestGiver, Player, "Thank ye for sticking with us through the worst of it, " .. GetName(Spawn) .. ". Yer no fair weather friend.  I'll say taht about ye. I've sent word to Cragged Spine that yer coming and put in a good word or two.  They should welcome ye right away. Ye'll find it far to the south of here, past the battlefield and the basilisks.")
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