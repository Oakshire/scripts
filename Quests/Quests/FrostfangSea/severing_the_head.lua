--[[
	Script Name		:	Quests/FrostfangSea/severing_the_head.lua
	Script Purpose	:	the quest "Severing the Head"
	Script Author	:	theFoof
	Script Date		:	2013.6.17
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Dolur Axebeard
	Preceded by		:	Off to the Ossuary
	Followed by		:	The Nightmare is Over
--]]

function Init(Quest)
	UpdateQuestZone(Quest, "Cave of Illboding Dark: The Source")
	AddQuestRewardCoin(Quest, math.random(5,90), math.random(6,15), 0, 0)
	AddQuestStepKill(Quest, 1, "I must kill Orug Deathmaker in the Cave of Illboding.", 1, 100, "I must return to the Cave of Illboding on the Ossuary of Ice, defeat the head necromancer, Orug Deathmaker, and shatter the dark crystal. The Ossuary is an island off the coast of Erollis, to the south of Ry'Gorr Isle.", 611, 5170003)
	AddQuestStepCompleteAction(Quest, 1, "KilledOrc")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard098.mp3", "", "", 2381129063, 239921883, Player)
	AddConversationOption(conversation, "I will return.")
	AddConversationOption(conversation, "The orcs will need the luck more than I will.")
	StartConversation(conversation, QuestGiver, Player, "Best of luck to ye, " .. GetName(Player) .. ".")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function KilledOrc(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed Orug Deathmaker.")
	AddQuestStep(Quest, 2, "I must smash the dark crystal.", 1, 100, "I must return to the Cave of Illboding on the Ossuary of Ice, defeat the head necromancer, Orug Deathmaker, and shatter the dark crystal. The Ossuary is an island off the coast of Erollis, to the south of Ry'Gorr Isle.", 3528)
	AddQuestStepCompleteAction(Quest, 2, "SmashedCrystal")
end

function SmashedCrystal(Quest, QuestGiver, Player)
	UpdateQuestZone(Quest, "Frostfang Sea")
	UpdateQuestStepDescription(Quest, 2, "I have smashed the dark crystal.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have killed Orug Deathmaker and shattered the dark crystal.")
	AddQuestStepChat(Quest, 3, "I must speak with Dolur Axebeard.", 1, "I must speak with Dolur Axebeard, who can be found in the cave at the Great Shelf.", 0, 4700078)
	AddQuestStepCompleteAction(Quest, 3, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		KilledOrc(Quest, QuestGiver, Player)
	elseif Step == 2 then
		SmashedCrystal(Quest, QuestGiver, Player)
	end
end