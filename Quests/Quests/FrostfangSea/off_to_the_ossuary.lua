--[[
	Script Name		:	Quests/FrostfangSea/off_to_the_ossuary.lua
	Script Purpose	:	the quest Off to the Ossuary
	Script Author	:	theFoof
	Script Date		:	2013.6.17
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Dolur Axebeard
	Preceded by		:	The Gauntlet
	Followed by		:	Severing the Head
--]]

function Init(Quest)
	UpdateQuestZone(Quest, "Cave of Illboding Dark")
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(6,15), 0, 0)
	AddQuestStepKill(Quest, 1, "I must kill the Ry'Gorr reanimators in the Cave of Illboding Dark.", 2, 100, "I must find the cave on the Forbidden Ossuary of Ice and hunt down the reanimators within. The Ossuary is an island off the coast of Erollis, to the south of Ry'Gorr Isle.", 611, 5160006)
	AddQuestStepKill(Quest, 2, "I must kill the Ry'Gorr lackeys in the Cave of Illboding Dark.", 4, 100, "I must find the cave on the Forbidden Ossuary of Ice and hunt down the reanimators within. The Ossuary is an island off the coast of Erollis, to the south of Ry'Gorr Isle.", 611, 5160005)
    AddQuestStepCompleteAction(Quest, 1, "KilledRean")
	AddQuestStepCompleteAction(Quest, 2, "KilledLackey")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard085.mp3", "", "", 2080430397, 2045091210, Player)
	AddConversationOption(conversation, "I'll deliver my own brand of personal justice.")
	AddConversationOption(conversation, "I will slip in unseen and have a look around.")
	AddConversationOption(conversation, "You can count on me, Dolur.")
	StartConversation(conversation, QuestGiver, Player, "We call the floating isle the Forbidden Ossuary of Ice.  Search for the cavern entrance there, and then have a look inside for the necromancers.  If ye find any, give them the sharp side of an axe for me.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledRean(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed the Ry'Gorr reanimators.")
	CheckProgress(Quest, QuestGiver, Player)
end

function KilledLackey(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have killed the Ry'Gorr lackeys.")
	CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
	if QuestStepIsComplete(Player, 71, 1) and QuestStepIsComplete(Player, 71, 2) then
		AddStep3(Quest, QuestGiver, Player)
	end
end

function AddStep3(Quest, QuestGiver, Player)
	UpdateQuestZone(Quest, "Frostfang Sea")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed several reanimators and their lackeys in the Cave of Illboding Dark.")
	AddQuestStepChat(Quest, 3, "I must speak with Dolur Axebeard.", 1, "I must speak with Dolur Axebeard, who can be found in the cave at the Great Shelf.", 0, 4700078)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if QuestStepIsComplete(Player, 71, 1) then
		KilledRean(Quest, QuestGiver, Player)
	end
	if QuestStepIsComplete(Player, 71, 2) then
		KilledLackey(Quest, QuestGiver, Player)
	end
end