--[[
	Script Name		:	Quests/FrostfangSea/report_to_cragged_spine.lua
	Script Purpose	:	for the quest "Report to Cragged Spine"
	Script Author	:	theFoof
	Script Date		:	2013.6.1
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Belka Thunderheart
	Preceded by		:	Domestication is the New Survivalism
	Followed by		:	
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(5,90), math.random(6,15), 0, 0)
    AddQuestStepChat(Quest, 1, "I must report to Tad Ironstein at the Cragged Spine.", 1, "I must report to Tad Ironstein at the Cragged Spine outpost. The Cragged Spine is south of the Great Shelf, past the frostbiter basilisks.", 0, 4700106)
    AddQuestStepCompleteAction(Quest, 1, "CompleteQuest")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "And with you.  Farewell!")
	AddConversationOption(conversation, "On to bigger and better things.")
	StartConversation(conversation, QuestGiver, Player, "Yer actions have given us all hope out here, " .. GetName(Player) .. ", and ye've personally rescued me from the depths of despair.  We will miss having ye around.  Brell be with ye.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end