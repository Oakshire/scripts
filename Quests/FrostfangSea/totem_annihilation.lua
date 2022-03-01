--[[
	Script Name		:	Quests/FrostfangSea/totem_annihilation.lua
	Script Purpose	:	the quest Totem Annihilation
	Script Author	:	theFoof
	Script Date		:	2013.5.28
	Script Notes	:	

	Zone			:	Frostfang Sea
	Quest Giver		:	Dolur Axebeard
	Preceded by		:	A Scattering of Ashes
	Followed by		:	
--]]

function Init(Quest)
	AddQuestRewardCoin(Quest, math.random(10,80), math.random(13,20), 0 ,0)
	AddQuestStep(Quest, 1, "I must destroy several totems that are being used to raise the Ry'Gorr skeletons.", 5, 100, "I must destroy several totems that are being used to raise the Ry'Gorr skeletons. These totems have been planted all over the battlefield, which is south of the cave at the Great Shelf.", 3596)
	AddQuestStepCompleteAction(Quest, 1, "DestroyedTotems")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()

	PlayFlavor(QuestGiver, "dolur_axebeard/halas/great_shelf/dolur_axebeard/dolur_axebeard044.mp3", "", "", 4252179126, 1393655567, Player)
	AddConversationOption(conversation, "They don't scare me.")
	AddConversationOption(conversation, "I'll fight tooth and nail to get the job done.")
	StartConversation(conversation, QuestGiver, Player, "Ha!  I was just telling ol' Rockbreaker here that you were the one for the job.  Head back to the battlefield to the south and look for the totems there.  And don't expect the Ry'Gorr to let you succeed without putting up a fight.")
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function DestroyedTotems(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have destroyed the totems.")
	AddQuestStepChat(Quest, 2, "I must speak with Dolur Axebeard.", 1, "I must speak with Dolur Axebeard, who can be found in the cave at the Great Shelf.", 0, 4700078)
	AddQuestStepCompleteAction(Quest, 2, "CompleteQuest")
end

function CompleteQuest(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		DestroyedTotems(Quest, QuestGiver, Player)
    end
end