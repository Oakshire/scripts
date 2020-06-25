--[[
	Script Name		:	Quests/FrostfangSea/domestication_is_the_new_survivalism.lua
	Script Purpose	:	for the quest "Domestication is the New Survivalism"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Belka Thunderheart
	Preceded by		:	Tackling the Basilisks
	Followed by		:	Domestication is the New Survivalism
--]]

function Init(Quest)
    AddQuestRewardCoin(Quest, math.random(5,80), math.random(13,25), 0, 0)
    AddQuestStep(Quest, 1, "I must harvest frostbiter basilisk eggs.", 8, 100, "I must harvest frostbiter basilisk eggs. The basilisks' nests can be found to the east of the Great Shelf, along the shoreline past the battlefield.", 1190)
    AddQuestStepCompleteAction(Quest, 1, "GotEggs")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "", "", "", 0, 0, Player)
	AddConversationOption(conversation, "You can count on me.")
	AddConversationOption(conversation, "We all do what we can.")
	StartConversation(conversation, QuestGiver, Player, "I don't expect the adult basilisks will take kindly to ye poking around in their nests, so prepare for a fight.  And thank ye, in advance, for the help.  Yer a reliable and generous sort and it'd be a bleak world without ye.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function GotEggs(Quest, QuestGiver, Player)
    UpdateQuestTaskGroupDescription(Quest, 1, "I have harvested the frostbiter basilisk eggs.")
    AddQuestStepChat(Quest, 2, "I must speak with Belka Thunderheart.", 1, "I must speak with Belka Thunderheart, who can be found in the cave at the Great Shelf.", 0, 4700079)
    AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
    GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    if Step == 1 then
        GotEggs(Quest, QuestGiver, Player)
    end
end